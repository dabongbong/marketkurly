package com.kurly.marketkurly.aop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;

import com.kurly.marketkurly.exception.AdminException;
import com.kurly.marketkurly.exception.MemberException;



public class MarketSessionCheckAspect {
	
	// 관리자로 들어오는 요청에 대한 검열을 시도할 수 있는 메소드 정의 
	public Object sessionCheck(ProceedingJoinPoint joinPoint) throws MemberException, Throwable{
		Object result =null; // 최종적으로 반환될 반환값 
		// 원래 호출하려던 타겟이 되는 객체 
		Object target = joinPoint.getTarget();
		Class targetClass = target.getClass();
		Signature method = joinPoint.getSignature();
		Object[] args = joinPoint.getArgs(); // 원래 타겟이 보유한 메소드의 매개변수 
		
		// HttpServletRequest가 몇번째 있는지 알 수가 없으므로, 반복문으로 꺼내보자.
		HttpServletRequest request=null;
		for(int i=0; i<args.length; i++) {
			if(args[i] instanceof HttpServletRequest) {
				request=(HttpServletRequest)args[i];
			}
		}
		System.out.println("원래 호출하려던 컨트롤러와 메소드는 "+targetClass.getName()+","+method);
		
		String uri = request.getRequestURI();
		
		if(
				uri.equals("/loginform") ||
				uri.equals("/login") 
				
				
				) { // 그냥가게 해주고 ...
			result=joinPoint.proceed();
		} else {
			if(request != null) {
				// 세션이 존재하는지 체크
				HttpSession session = request.getSession();
		
				if(session.getAttribute("admin")==null) {
					// 로그인 에러페이지 보여주기...
					throw new AdminException("관리자 인증이 필요한 서비스 입니다.");
				} else {
					result=joinPoint.proceed(); // 원래 호출하려던 target의 메소드 호출 (가던길 가게함)
				}
			}
		}
		return result;
	}
}
