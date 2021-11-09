package com.common.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.user.domain.UserPVO;

import lombok.extern.log4j.Log4j;

/*  - ���� ���
*  1. ���ͼ��� ����
*     [1] HandlerInterceptor�������̽��� ��ӹ޴� ��� implements
*     [2] HandlerInterceptorAdapter �߻�Ŭ������ ��ӹ޴� ��� extends
*		
*	//������(admin)�� �ƴ϶�� �޼��� �����ϰ� forward�̵� �� false��ȯ
*	//�����ڰ� ������ true��ȯ	
*
*	2. servlet-context.xml�� interceptor����ϱ�
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
				req.setAttribute("message", "�����ڸ� �̿� �����մϴ�.");
				req.setAttribute("loc", req.getContextPath()+"/index");
				String view = "/WEB-INF/views/msg.jsp";
				RequestDispatcher disp=req.getRequestDispatcher(view);
				disp.forward(req, res);
				return false; //�����ڰ� �ƴ� ���
				
			
			}
			
		}
		
		return false;//�α��� ���� ���� ���
	}
	
	
}
