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
 *  - ��Ʈ�ѷ��� ����Ǳ� ���� ���� ó���� ���� ������ 
 *    ������������ ���ͼ��Ϳ��� �����Ѵ�.
 *  - ���� ���
 *  1. ���ͼ��� ����
 *     [1] HandlerInterceptor�������̽��� ��ӹ޴� ��� implements
 *      [2] HandlerInterceptorAdapter �߻�Ŭ������ ��ӹ޴� ��� extends
 *      
 *  2. ���ͼ��� ��� => servlet-context.xml���� ����ϰ� ���� ������ ����
 *  <!-- Interceptor���� =========================================================== -->
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
	
	//[1]��Ʈ�ѷ��� �����ϱ� ���� ȣ��Ǵ� �޼ҵ�
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.info("preHandle");
		
		//���ǿ� loginUser�� ����Ǿ� �ִ��� Ȯ��
		//�ִٸ� true�� ��ȯ�Ѵ�. ==> ��Ʈ�ѷ��� ������.
		//���࿡ ���ٸ� false�� ��ȯ ==> ��Ʈ�ѷ��� ���� ����.
		HttpSession ses = request.getSession();
		UserPVO userp = (UserPVO)ses.getAttribute("loginUserP");
		UserCVO userc = (UserCVO)ses.getAttribute("loginUserC");
		if(userp!=null) return true;
		if(userc!=null) return true;
		
		String view = "/WEB-INF/views/msg.jsp";
		String loc = request.getContextPath()+"/index"; //�����η�
		//�α��� ���� �ʾҴٸ�
		request.setAttribute("message", "�α��� �ؾ� �̿� �����մϴ�.");
		request.setAttribute("loc", loc);
		
		RequestDispatcher disp = request.getRequestDispatcher(view);
		disp.forward(request, response);
		return false;
		
	}

	//[2]��Ʈ�ѷ��� ������ ��, ���� �並 �����ϱ� ���� ȣ��Ǵ� �޼ҵ�
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		log.info("postHandle");
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
	//[3]��Ʈ�ѷ� �����ϰ�, �並 ������ �� ȣ��Ǵ� �޼ҵ�
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.info("afterCompletion");
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
	
}
