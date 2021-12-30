package com.kurly.marketkurly.util;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.koreait.shoppingmall.domain.Product;
import com.koreait.shoppingmall.exception.UploadException;


//파일 처리와 관련된 다양한 업무를 처리해주는 전담자 클래스
public class FileManager {

	
	//파일 저장 (웹으로 전달된...)
	
	//다중 파일 업로드처리 
	public static String[] saveMultiFile(HttpServletRequest request, Product product) throws UploadException{
		String saveDir=request.getServletContext().getRealPath("/resources/data"); //파일 저장 경로
		
		System.out.println(saveDir);
		
		MultipartFile[] multi=product.getImgFiles();
		String[] uploadFile = new String[multi.length];//이미지를 저장할 배열
		
		for(int i=0;i<multi.length;i++) {//업로드된 개수만큼 서버에 저장 
			MultipartFile obj=multi[i];
			
			String filename= createFilename(obj.getOriginalFilename()); //파일명 생성하기   324324244.jpg
			uploadFile[i]=filename;
			
			//일부러 지연....
			try {
				Thread.sleep(10);
			} catch (InterruptedException e1) {
				e1.printStackTrace();
			}
			
			System.out.println("생성된 이름은 "+filename);
			
			File file = new File(saveDir+"/"+filename); //full path
			try {
				obj.transferTo(file); //서버에 저장
			} catch (Exception e) {
				e.printStackTrace();
				throw new UploadException("파일 저장실패");
			}
		}
		return uploadFile;
	}
	
	/*
	public static String saveAsFile(HttpServletRequest request, Notice notice) throws UploadException{
		MultipartFile multi=notice.getMyFile();
		
		System.out.println("getName() : "+multi.getName());
		System.out.println("getOriginalFilename() : "+multi.getOriginalFilename());
		
		//아직 컴포넌트 상태에서 파일이 메모리에 올라와 있기 만 하므로, 실제 서버의 하드디스크에 저장해보자!!
		//jsp였다면 application 내장객체로 해결가능하겠으나, 현재는 그냥 스프링의 컨트롤러 일뿐이다..
		//해결책?? request - HttpServletRequest,  session - HttpSession , application - ServletContext 
		
		ServletContext application=request.getServletContext();
		String saveDir = application.getRealPath("/resources/data");
		System.out.println("saveDir is "+saveDir);
		
		String filename= createFilename(multi.getOriginalFilename());
		
		File file = new File(saveDir+"/"+filename); //full path
		boolean result=false;
		
		try {
			multi.transferTo(file); //물리적 저장!!!  (메모리 --> 하드)
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
	*/
	
	//확장자 추출
	public static String getExt(String path) {
		int index = path.lastIndexOf(".");
		return path.substring(index+1 , path.length()); 
	}
	
	//파일명 생성 
	public static String createFilename(String path) {
		long time=System.currentTimeMillis(); //파일명
		String ext = getExt(path); //확장자
		return time+"."+ext;
	}
	
	public static void main(String[] args) {
		System.out.println(createFilename("나는.니가.지난여름에한일을알고있다.jpg"));
	}
}





