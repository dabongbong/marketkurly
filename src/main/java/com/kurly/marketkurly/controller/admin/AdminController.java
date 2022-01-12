package com.kurly.marketkurly.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kurly.marketkurly.domain.Admin;
import com.kurly.marketkurly.exception.AdminException;
import com.kurly.marketkurly.model.admin.AdminService;
import com.kurly.marketkurly.util.HashBuilder;
import com.kurly.marketkurly.util.Message;


// 관리자 인증과 관련된 요청을 처리하는 하위 컨트롤러 
@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private HashBuilder hashBuilder;
	
	// 로그인 폼 요청 처리 
	@GetMapping("login/form")
	public String getLoginForm(HttpServletRequest request) {
		return "admin/login/loginForm";
	}
	
	// 로그인 요청 처리 
	@PostMapping("/login")
	@ResponseBody  // return값에 반환된 데이터를 viewResolver가 해석해서 .jsp로 보내는게 아니라 
							// 메소드에 반환형으로 명시한 데이터 자체를 응답 데이터로 전송한다. 
	public Message loginCheck(HttpServletRequest request, Admin admin) {
		
		// 서비스에게 일 시키기 전에, 비밀번호를 hash값으로 변환해서 비교 한다. 
		// db의 hash값과  변환한 hash값이 틀린 경우 인증실패
		String pass=hashBuilder.convertStringToHash(admin.getPass());
		admin.setPass(pass);  // 비밀번호 암호화한 후 다시 admin으로 넣기 !
		
		Admin result=adminService.select(admin);
		System.out.println("관리자 로그인 결과 " +result);
		
		Message message = new Message(); //POJO 일반 평범한 클래스
		message.setCode(1);
		message.setMsg("인증성공");
		
		//클라이언트가 재접속시 데이터를 사용할 수 있도록 session에 result 를 담자!!
		HttpSession session=request.getSession();
		session.setAttribute("admin", result);//세션에 DTO저장
		
		return message;
	}
	
	//로그아웃 요청 처리 
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate(); //세션을 무효화..기존의 세션을 사용할 수 없게 됨 
		
		return "redirect:/admin/login/form";
	} 
	
	
	@ExceptionHandler(AdminException.class)
	@ResponseBody
	public ResponseEntity<Message> handle(HttpServletRequest request, AdminException e) {
		HttpHeaders header=new HttpHeaders();
		header.add("Content-Type", "text/html;charset=utf-8");
		//한글 및 제대로된 응답 정보를 구성하려면, ResponseEntity  header, body  { code:1, msg:"실패입니다."  }
		//Gson 을 직접 써도 되지만, 로드존슨이 이미 자동으로 json으로 변환하는 내부적 처리를 했다!!        객체 ---> JSON
		Message message = new Message(); //POJO 일반 평범한 클래스
		message.setCode(0);
		message.setMsg(e.getMessage());
		
		ResponseEntity<Message> entity=new ResponseEntity(message, HttpStatus.OK);
		return entity;
	}
}
