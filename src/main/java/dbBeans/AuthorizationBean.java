package dbBeans;

import java.security.NoSuchAlgorithmException;  
import java.security.SecureRandom;  
import java.security.spec.InvalidKeySpecException;   
import java.util.Base64;  
import java.util.Random;  
import javax.crypto.SecretKeyFactory;  
import javax.crypto.spec.PBEKeySpec;  


public class AuthorizationBean {
	//returns randomly generated salt for use in encryption and storage in the database.
	public String generateSalt() {
		Random rand = new SecureRandom();
		byte[] saltArr = new byte[15];
		rand.nextBytes(saltArr);
		return Base64.getEncoder().encodeToString(saltArr);
	}
	//Returns encrypted password to save in the database
	public String generateEncryptedPassword(String password, String salt) {
		//create key object from password and salt for use in encryption
		PBEKeySpec spec = new PBEKeySpec(password.toCharArray(), salt.getBytes(), 10000, 256);
		try {
			//create object for encrypting key
			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
			//encrypt key
	        byte[] result =  keyFactory.generateSecret(spec).getEncoded();
	        //convert encrypted key to string to save in database
	        return Base64.getEncoder().encodeToString(result);
		}
		catch (NoSuchAlgorithmException | InvalidKeySpecException e){  
            throw new AssertionError("Error encrypting password: " + e.getMessage());  
        }   
        finally{
        	//clear key object password for security
            spec.clearPassword();  
        } 
	}
	
	//used to verify passwords at user login
	public boolean verifyPassword(String encryptedPassword, String salt, String testPassword) {
		String submittedPassword = generateEncryptedPassword(testPassword, salt);
		return submittedPassword.equals(encryptedPassword);
	}
}
