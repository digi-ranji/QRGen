import java.util.*;


public class LockIT
{

	



    public static void main (String[] args)
	{
		LockIT lcit = new LockIT();
		String tmp_st = lcit.encodeIT("ranjith.tr@ph.ibm.com"); 
		
		System.out.println ( tmp_st ) ;
		System.out.println ( lcit.decodeIT(tmp_st));
		
	}

	public LockIT()
	{
		
	}

	// ENCODE plainTextPassword String
	public String encodeIT(String sample )
	{
		 String BasicBase64format  = Base64.getEncoder().encodeToString(sample.getBytes()); 
		 return 	BasicBase64format ; 
	}
	
	public String decodeIT(String encoded )
	{
	 	byte[] actualByte = Base64.getDecoder().decode(encoded); 
        String actualString = new String(actualByte); 
	 	return 	actualString ; 
	}
		
}