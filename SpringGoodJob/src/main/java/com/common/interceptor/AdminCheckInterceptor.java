package com.common.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.user.domain.UserPVO;

import lombok.extern.log4j.Log4j;

/*  - 구현 방법
*  1. 인터셉터 구현
*     [1] HandlerInterceptor인터페이스를 상속받는 방법 implements
*     [2] HandlerInterceptorAdapter 추상클래스를 상속받는 방법 extends
*		
*	//관리자(admin)가 아니라면 메세지 저장하고 forward이동 후 false반환
*	//관리자가 맞으면 true반환	
*
*	2. servlet-context.xml에 interceptor등록하기
*/    
@Log4j
public class AdminCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) 
			throws Exception{
		log.info("preHandle");
		HttpSession ses = req.getSession();
		UserPVO user =(UserPVO)ses.getAttribute("loginUserP");
		if(user!=null) {
			if(user.getPid().equals("admin")) return true;
			else{
				req.setAttribute("message", "관리자만 이용 가능합니다.");
				req.setAttribute("loc", req.getContextPath()+"/index");
				String view = "/WEB-INF/views/msg.jsp";
				RequestDispatcher disp=req.getRequestDispatcher(view);
				disp.forward(req, res);
				return false; //관리자가 아닌 경우
				
			
			}
			
		}
		
		return false;//로그인 하지 않은 경우
	}
	
	
}
