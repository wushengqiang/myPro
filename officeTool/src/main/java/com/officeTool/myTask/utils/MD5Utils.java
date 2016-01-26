package com.officeTool.myTask.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Component;

@Component
public class MD5Utils {

	public String digest(String value){
		
		String result="";
		
		MessageDigest md5=null;
		
		try {
			md5=MessageDigest.getInstance("MD5");
			char[] charArray=value.toCharArray();
			byte[] byteArray=new byte[charArray.length];
			
			for(int i=0;i<charArray.length;i++){
				
				byteArray[i]=(byte) charArray[i];
			}
			
			byte[] md5Bytes = md5.digest(byteArray);
			StringBuffer hexValue = new StringBuffer();  
		        for (int i = 0; i < md5Bytes.length; i++){  
		            int val = ((int) md5Bytes[i]) & 0xff;  
		            if (val < 16)  
		                hexValue.append("0");  
		            hexValue.append(Integer.toHexString(val));  
		        }  
		        
			result=hexValue.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
