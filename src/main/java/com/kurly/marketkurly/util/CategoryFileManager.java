package com.kurly.marketkurly.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.kurly.marketkurly.domain.Category;
import com.kurly.marketkurly.exception.UploadException;

public class CategoryFileManager {

	public static String saveAsFile(HttpServletRequest request, Category category) throws UploadException {
		MultipartFile multi= category.getImgFiles();
		
		ServletContext application=request.getServletContext();
		String saveDir = application.getRealPath("/resources/categoryImg");
		System.out.println("saveDir is "+saveDir);
		
		String filename=createFilename(multi.getOriginalFilename());
		File file = new File(saveDir+"/"+filename); 
		boolean result = false;
		try {
			multi.transferTo(file); 
			System.out.println("파일 업로드 완료");
			result=true;
		} catch (IllegalStateException e) {
			e.printStackTrace();
			result=false;
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
