package compression;

public class MetaFileParseException extends Exception {

   private Throwable cause;

   public MetaFileParseException(Throwable cause) {
     this.cause = cause;
   }
}