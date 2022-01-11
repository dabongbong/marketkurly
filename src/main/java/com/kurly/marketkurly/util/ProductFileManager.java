package com.kurly.marketkurly.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.kurly.marketkurly.domain.Product;
import com.kurly.marketkurly.exception.UploadException;

public class ProductFileManager {
	
	public static String saveAsFile(HttpServletRequest request, Product product) throws UploadException{
		MultipartFile multi = product.getImgFiles();
		System.out.println("getOriginalFilename(): " + multi.getOriginalFilename());
		
		ServletContext application = request.getServletContext();
		String saveDir = application.getRealPath("/resources/productImg");
		System.out.println("saveDir is "+saveDir);
		
		String filename = createFilename(multi.getOriginalFilename());
		File file = new File(saveDir+"/"+filename);
		boolean result = false;
		try {
			multi.transferTo(file);
			System.out.println("파일 업로드 완");
			result = true;
		} catch (IllegalStateException e) {
			result=false;
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
			result=false;
		}
		if(result==false) {
			throw new UploadException("파일업로드 실패");
		}
		
		return filename;
	}

	
	
	
	
	
		// 확장자 추출 
		public static String getExt(String path) {
			int index = path.lastIndexOf(".");
			
			return path.substring(index+1, path.length());
		}
		
		// 파일명 생성 
		public static String createFilename(String path) {
			long time = System.currentTimeMillis();  // 파일명 
			String ext = getExt(path); // 확장자 
			
			return time+"."+ext;
		}
}
