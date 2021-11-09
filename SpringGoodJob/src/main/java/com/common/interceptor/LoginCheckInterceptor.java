package com.common.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.user.domain.UserCVO;
import com.user.domain.UserPVO;

import lombok.extern.log4j.Log4j;

/** #0909*/
/* Interceptor
 *  - 컨트롤러가 실행되기 전에 사전 처리할 일이 있으면 
 *    스프링에서는 인터셉터에서 구현한다.
 *  - 구현 방법
 *  1. 인터셉터 구현
 *     [1] HandlerInterceptor인터페이스를 상속받는 방법 implements
 *      [2] HandlerInterceptorAdapter 추상클래스를 상속받는 방법 extends
 *      
 *  2. 인터셉터 등록 => servlet-context.xml에서 등록하고 매핑 정보를 설정
 *  <!-- Interceptor설정 =========================================================== -->
   <interceptors>
         <interceptor>
            <mapping path="/user/**"/>
            <mapping path="/admin/**"/>
            <beans:bean class="com.common.interceptor.LoginCheckInterceptor"/>
         </interceptor>
   </interceptors>
 * */
@Log4j
public class LoginCheckInterceptor implements HandlerInterceptor{
	
	//[1]컨트롤러를 실행하기 전에 호출되는 메소드
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.info("preHandle");
		
		//세션에 loginUser가 저장되어 있는지 확인
		//있다면 true로 반환한다. ==> 컨트롤러를 수행함.
		//만약에 없다면 false로 반환 ==> 컨트롤러로 가지 않음.
		HttpSession ses = request.getSession();
		UserPVO userp = (UserPVO)ses.getAttribute("loginUserP");
		UserCVO userc = (UserCVO)ses.getAttribute("loginUserC");
		if(userp!=null) return true;
		if(userc!=null) return true;
		
		String view = "/WEB-INF/views/msg.jsp";
		String loc = request.getContextPath()+"/index"; //절대경로로
		//로그인 하지 않았다면
		request.setAttribute("message", "로그인 해야 이용 가능합니다.");
		request.setAttribute("loc", loc);
		
		RequestDispatcher disp = request.getRequestDispatcher(view);
		disp.forward(request, response);
		return false;
		
	}

	//[2]컨트롤러를 실행한 후, 아직 뷰를 실행하기 전에 호출되는 메소드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		log.info("postHandle");
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
	//[3]컨트롤러 실행하고, 뷰를 실행한 후 호출되는 메소드
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.info("afterCompletion");
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
	
}
