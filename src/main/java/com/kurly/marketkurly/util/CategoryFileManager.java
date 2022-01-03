package com.kurly.marketkurly.util;


import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.kurly.marketkurly.domain.Category;
import com.kurly.marketkurly.exception.UploadException;

// 파일 처리와 관련된 다양한 업무를 처리해주는 전담자 클래스 
public class CategoryFileManager {

	// 다중 파일 업로드 처리
	public static String[] saveMultiFile(HttpServletRequest request, Category category)  throws UploadException{
		String saveDir=request.getServletContext().getRealPath("/resources/categoryImg"); // 파일 저장경로 
		
		System.out.println(saveDir);
		
		MultipartFile[] multi=category.getImgFiles();
		String[] uploadFile = new String[multi.length]; // 이미지를 저장할 배열 
		
		for(int i=0; i<multi.length; i++) {  // 업로드된 개수만큼 서버에 저장
			MultipartFile obj=multi[i];
			
			String filename=createFilename(obj.getOriginalFilename()); // 파일명 생성하기
			uploadFile[i] = filename;
			
			// 밀리초 단위로 생성되다 보니 파일명이 같아져버린다.. 그래서 일부러 시간 지연.....
			try {
				Thread.sleep(10);
			} catch (InterruptedException e1) {
				e1.printStackTrace();
			}
			
			System.out.println("생성된 이름은" + filename);
			
			File file = new File(saveDir+"/"+filename); // full path
			try {
				obj.transferTo(file);  // 서버에 저장 
			} catch (Exception e) {
				e.printStackTrace();
				throw new UploadException("파일 저장 실패");
			} 
		}
		return uploadFile;
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
