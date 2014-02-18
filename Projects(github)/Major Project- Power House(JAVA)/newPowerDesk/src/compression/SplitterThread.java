package compression;

import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.nio.*;
import java.nio.channels.*;
import java.util.Observable;
import java.security.*;

class SplitterThread extends Observable implements Runnable {

    private String sourceFile;

    private String destinationFolder;

    private long fileSize;

    private long splitSize;

    private long noOfPieces;

    private File selectedFile;

    private int progressCount = 0;

    private boolean digestEnabled = true;

    private MessageDigest md = null;

    private String[] digestArray = null;

    private boolean finishedSplitting = false;

    SplitterThread(String sourceFile, String destinationFolder, long splitSize) {

        this.sourceFile = sourceFile;
        this.destinationFolder = destinationFolder;
        this.splitSize = splitSize;

        selectedFile = new File(sourceFile);

        fileSize = selectedFile.length();

        noOfPieces = fileSize / splitSize;

        if ((noOfPieces * splitSize) != fileSize)
            noOfPieces++;

        if (digestEnabled) {
		  try {
			    md = MessageDigest.getInstance("SHA");

			    // TODO : check this code.
			    digestArray = new String[(int)noOfPieces];

	      } catch(Exception e) {
			System.err.println(e);
		    digestEnabled = false;
	      }
	    }

    }

    public long getNoOfPieces() {
        return noOfPieces;
    }

    public int getProgressCount() {
        return progressCount;
    }

    public boolean hasFinishedSplitting() {
        return finishedSplitting;
    }

    private void incrementProgressCount(int finishedPieces) {
        progressCount++;

        /*if (finishedPieces == noOfPieces) {
          finishedSplitting = true;
        }*/

        setChanged();
        notifyObservers();
    }

    public void split() {
        Thread t = new Thread(this);
        t.start();
    }

    public void run() {

	  try {
       	splitFile();
        createMetaFile();
      } catch(Exception e) {
        System.out.println("Error while splitting "+e);
      } finally {
        finishedSplitting = true;
        setChanged();
        notifyObservers();
      }
    }

    private void createMetaFile() throws IOException {

        File metaFile = new File(destinationFolder + File.separator
                + selectedFile.getName() + "_split.meta");

        BufferedOutputStream bos = null;
        try {
            bos = new BufferedOutputStream(new FileOutputStream(metaFile), 4096);
            bos.write((selectedFile.getName() + "," + fileSize + ","
                    + splitSize + "," + noOfPieces).getBytes());

            if (digestEnabled) {
				bos.write("\n".getBytes());
				for (int i=0; i<digestArray.length; i++) {
					bos.write((digestArray[i]+",").getBytes());
			    }
		    }

        } finally {
            try {
                bos.close();
            } catch (Exception e1) {
            }
        }
    }

	private void splitFile()  throws IOException {
		FileInputStream fis = null;
        FileOutputStream fos = null;
        FileChannel fcin = null;
		try{
			fis = new FileInputStream(selectedFile);
            fcin = fis.getChannel();
            long fileSize = fcin.size();
            long offset =0L;
            long chunkSize = this.splitSize;

            for (int i = 1; i <= noOfPieces; i++) {

                File filepiece =
                    new File(
                        addPathSeperator(destinationFolder)
                            + selectedFile.getName()
                            + "_"
                            + i
                            + ".split");

            	fos = new FileOutputStream(filepiece);
            	FileChannel fcout = fos.getChannel();

            	MappedByteBuffer mbb = fcin.map(
                     FileChannel.MapMode.READ_ONLY, offset,
                     chunkSize);

                fcout.write(mbb);

                if (digestEnabled) {
                  mbb.flip();
				  digestArray[i-1] = calculateDigest(mbb, chunkSize);
			    }

                offset += this.splitSize;

                if(fileSize-offset < chunkSize) {  // last chunk.
                	chunkSize = fileSize-offset;
                }

    	       	fcout.close();
            	fos.close();
            	incrementProgressCount(i);
			  }
        	}finally{

                try{
        			fos.close();
        		}catch(Exception e) {

        		}

        		try{
        			fcin.close();
					fis.close();
        		}catch(Exception e) {

        		}

        	}

	}

    private String addPathSeperator(String path) {
        if (!path.endsWith(selectedFile.separator)) {
            path = path + selectedFile.separator;
        }
        return path;
    }

    private String calculateDigest(MappedByteBuffer mbb, long chunkSize) {
	    // TODO : check this code.
	    byte[] dst = new byte[(int)chunkSize];
        mbb.get(dst);

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