package compression;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Observable;
import java.util.StringTokenizer;
import java.nio.*;
import java.nio.channels.*;
import java.security.*;
class MergerThread extends Observable implements Runnable {
	private int progressCount = 0;
	private boolean finishedMerging = false;
	private Throwable error;
	private File metaFile;
	private String destinationFolder;
	private boolean deleteSegments;
	private String fileName;
	private long fileLength;
	private long splitSize;
	private int noOfPieces;
	private boolean digestEnabled = true;
	private MessageDigest md = null;
	private String[] digestArray = null;
	MergerThread(
		String metaFile,
		String destinationFolder,
		boolean deleteSegments) throws MetaFileParseException{
		this.metaFile = new File(metaFile);
		this.destinationFolder = destinationFolder;
		this.deleteSegments = deleteSegments;
        if (digestEnabled) {
		  try {
			    md = MessageDigest.getInstance("SHA");
			    digestArray = new String[(int)noOfPieces];
	      } catch(Exception e) {
			System.err.println(e);
		    digestEnabled = false;
	      }
	    }
		parseMetaFile();
	}
	private void parseMetaFile() throws MetaFileParseException {
      BufferedReader br = null;
      try {
			br = new BufferedReader(new FileReader(metaFile));
			String line = br.readLine();
			StringTokenizer st = new StringTokenizer(line, ",");
			while (st.hasMoreTokens()) {
				fileName = st.nextToken();
				fileLength = Long.parseLong(st.nextToken());
				splitSize = Long.parseLong(st.nextToken());
				noOfPieces = Integer.parseInt(st.nextToken());
		    }
		    if (digestEnabled) {
			  try {
			    line = br.readLine();
			    st = new StringTokenizer(line, ",");
			    digestArray = new String[noOfPieces];
			    int i = 0;
			    while (st.hasMoreTokens()) {
				  digestArray[i++] = (String)st.nextToken();
			    }
		      } catch(Exception e) {
				  System.err.println("parseMetaFile :"+e);
				  digestEnabled = false;
		      }
		    }

      }catch(Exception e) {
          e.printStackTrace();
          throw new MetaFileParseException(e);
      }finally {
		  try {
		    br.close();
	      }catch(Exception e1) {
	      }
      }
    }
	public int getNoOfPieces() {
		return noOfPieces;
    }
	public int getProgressCount() {
		return progressCount;
	}
	public boolean hasFinishedMerging() {
	  return finishedMerging;
	}
	public boolean hasError() {
	  return error != null;
    }
    public Throwable getError() {
	  return error;
    }
	private void incrementProgressCount() {
		progressCount++;
		setChanged();
		notifyObservers();
	}
	public void merge() {
		Thread t = new Thread(this);
		t.start();
	}
	public void run() {
		mergeFile();
	}
	public void mergeFile() {
		destinationFolder = addPathSeperator(destinationFolder);
		File joinFile = new File(destinationFolder + fileName);
		FileInputStream fis = null;
        FileOutputStream fos = null;
        FileChannel fout = null;
		ArrayList deleteList = new ArrayList(20);
		try {
			fos =
				new FileOutputStream(joinFile);
			fout = fos.getChannel();
			int index = 1;
			while (true) {
                String splitFileName = fileName
							+ "_"
							+ index
							+ ".split";
				File filepiece =
					new File(
						metaFile.getParent()
							+ File.separator
							+ splitFileName);
				if (!(filepiece.exists()))
					break;
				fis =
					new FileInputStream(filepiece);
				FileChannel fcin = fis.getChannel();
                fcin.transferTo(0, fcin.size(), fout);
                if (digestEnabled) {
				  ByteBuffer bb = ByteBuffer.allocate((int)fcin.size());
				  fcin.read(bb);
				  bb.flip();
                  String digest = calculateDigest(bb, fcin.size());
                  if (! (digest.equals(digestArray[index - 1])) ) {
                    throw new FileCorruptedException(splitFileName);
			      }
			    }
				fcin.close();
				fis.close();
				if (deleteSegments) {
					deleteList.add(filepiece);
				}
				index++;
				incrementProgressCount();
			}
			if (deleteSegments) {
				deleteSegments(deleteList);
			}
	    } catch (FileCorruptedException fce) {
			this.error = fce;
		} catch (Exception e) {
			System.err.println("Error while merging :" + e);
			this.error = new RuntimeException("Merge operation failed.");
		} finally {
			try {
				fis.close();
			} catch (Exception e1) {
			}
			try {
				fout.close();
			} catch (Exception e1) {
			}
			try {
				fos.close();
			} catch (Exception e1) {
			}
			finishedMerging = true;
			setChanged();
			notifyObservers();
		}
	}
	private String addPathSeperator(String path) {
		if (!path.endsWith(File.separator)) {
			path = path + File.separator;
		}
		return path;
	}
	private void deleteSegments(ArrayList deleteList) {
		Iterator itr = deleteList.iterator();
		while (itr.hasNext()) {
			File f = (File) itr.next();
			f.delete();
		}
		metaFile.delete();
	}
    private String calculateDigest(ByteBuffer bb, long chunkSize) {
       byte[] dst = new byte[(int)chunkSize];
        bb.get(dst);
        md.update(dst);
        byte[] digest = md.digest();
        return hexDump(digest);
    }
    private String hexDump(byte[] digest) {
       StringBuffer sb = new StringBuffer(digest.length *2);
       for (int i = 0; i<digest.length; i++) {
		   sb.append(Integer.toHexString( digest[i] & 0xFF ));
       }
       return sb.toString();
    }
}