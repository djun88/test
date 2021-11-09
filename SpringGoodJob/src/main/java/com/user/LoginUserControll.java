package com.user;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.exception.NotUserException;
import com.user.domain.UserCVO;
import com.user.domain.UserPVO;
import com.user.service.UserCService;
import com.user.service.UserPService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class LoginUserControll {

	@Inject
	private UserPService userPService;
	@Inject
	private UserCService userCService;

	@PostMapping("/userPLogin")
	public String UserPLogin(Model m, @ModelAttribute("loginuserP") UserPVO userP, HttpSession ses,
			HttpServletRequest req) throws NotUserException 
	{
		log.info(userP);

		UserPVO loginUserP = this.userPService.loginCheck(userP);
		if (loginUserP != null) {
			ses.setAttribute("loginUserP", loginUserP);
		}
		return "redirect:index";
	}// -------------------------------------

	  @PostMapping("/userCLogin")
	  public String UserCLogin(Model m,@ModelAttribute("loginuserC") UserCVO userC, HttpSession ses,
			  HttpServletRequest req) throws NotUserException
	  {
		 log.info(userC);
		 
		 UserCVO loginUserC = this.userCService.loginCheck(userC);
		 if (loginUserC != null) {
			 ses.setAttribute("loginUserC", loginUserC);
		 }
		 
		 return "redirect:index";
	  }
	

	
	@GetMapping("/logout")
	public String logout(HttpSession ses) {
		ses.invalidate();

		return "redirect:index";
	}

	@ExceptionHandler(NotUserException.class)
	public String esceptionHandler(Exception ex) {
		log.error("로그인 중 에러 " + ex);
		return "errorAlert";
	}

}
