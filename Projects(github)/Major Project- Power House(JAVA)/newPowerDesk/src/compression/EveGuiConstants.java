package compression;





public interface EveGuiConstants {
	String[] algorithmNamesArray = {		
											"GZip Compression"
											
											};

	String[] extensionArray = {				
											".gz"
											
											};

	final int COMP_HUFFMAN = 0;
	//final int COMP_SHANNONFANO = 1;
	final int COMP_GZIP = 2;
	//final int COMP_COSMO = 3;
	//final int COMP_JBC = 4;
	//final int COMP_RLE = 5;
	//final int COMP_LZW = 6;
	
	final int COMPRESS = 32;
	final int DECOMPRESS = 33;
	}

