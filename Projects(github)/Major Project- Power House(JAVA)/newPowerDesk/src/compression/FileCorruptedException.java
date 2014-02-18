package compression;

class FileCorruptedException extends Exception {
  private String fileName;

  FileCorruptedException(String fileName) {
    this.fileName = fileName;
  }

  public String getFileName() {
	  return fileName;
  }

  public String toString() {
	  return "File " + fileName + " corrupted.";
  }
}