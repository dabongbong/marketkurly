package com.kurly.marketkurly.util;

public class StringUtil {
	
	
	//210106
	//쓰레기 값 추가 
	public static String getTempValue(String data) {
		return data+"-00";
	} 
	
	//다시 돌려놓기 
	public static String getOriginalValue(String data) {
		// 010-7788-9998-00
		int index=data.lastIndexOf("-");
		
		return data.substring(0, index);
	}
	
	public static void main(String[] args) {
		String phone="010-2669-7847";
		
		String result = getOriginalValue( getTempValue(phone) );
		System.out.println(result);
	}
}
