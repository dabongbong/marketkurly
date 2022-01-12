package com.kurly.marketkurly.controller.admin;

import java.util.List;

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
import org.springframework.web.servlet.ModelAndView;

import com.kurly.marketkurly.domain.Admin;
import com.kurly.marketkurly.exception.AdminException;
import com.kurly.marketkurly.exception.UploadException;
import com.kurly.marketkurly.model.admin.AdminService;
import com.kurly.marketkurly.util.HashBuilder;
import com.kurly.marketkurly.util.Message;
import com.kurly.marketkurly.util.Pager;


// 관리자 인증과 관련된 요청을 처리하는 하위 컨트롤러 
@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private HashBuilder hashBuilder;
	@Autowired
	private Pager pager;
	
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
	
	// 로그인 폼 요청 처리 
	@GetMapping("login/form")
	public ModelAndView getLoginForm(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/login/loginForm");
		return mav;
	}
	
	
	//로그아웃 요청 처리 
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate(); //세션을 무효화..기존의 세션을 사용할 수 없게 됨 
		
		return "redirect:/admin/login/form";
	} 
	//어드민 리스트 요청
	@GetMapping("/login/list")
	public ModelAndView getList(HttpServletRequest request) {
		List adminList = adminService.selectAll();
		System.out.println("어드민 리스트"+adminList);
		ModelAndView mav = new ModelAndView("admin/login/list");
		pager.init(adminList, request);
		mav.addObject("adminList",adminList);
		mav.addObject("pager",pager);
		
		return mav;
	}
	
	//어드민 등록 폼 요청
	@GetMapping("/login/registform")
	public ModelAndView registForm(HttpServletRequest request) {
		ModelAndView mav= new ModelAndView("admin/login/regist");
		return mav;
	}
	
	//어드민 등록 처리
	@PostMapping("/login/regist")
	public ModelAndView regist(HttpServletRequest request, Admin admin) {
		
		String pass=hashBuilder.convertStringToHash(admin.getPass());
		admin.setPass(pass);
		ModelAndView mav=new ModelAndView("redirect:/admin/login/list");
		
		adminService.insert(admin);
		
		return mav;
	}
	//한건 가져오기
	@GetMapping("/login/detail")
	public ModelAndView getDetail(HttpServletRequest request,Admin admin) {
		Admin obj = adminService.selectAdmin(admin);
		ModelAndView mav = new ModelAndView("admin/login/detail");
		mav.addObject("admin", obj);
		
		return mav;
	}
	
	//삭제하기
	@GetMapping("/login/delete")
	public String delete(int admin_id) {
		adminService.delete(admin_id);
		
		return "redirect:/admin/login/list";
	}
	
	@ExceptionHandler(AdminException.class)
	@ResponseBody
	public ResponseEntity<Message> handle(AdminException e) {
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
