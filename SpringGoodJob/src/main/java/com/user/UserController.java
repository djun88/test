package com.user;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.domain.UserCVO;
import com.user.domain.UserPVO;
import com.user.service.UserCService;
import com.user.service.UserPService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UserController {
	@Inject
	private UserPService userPService;
	@Inject
	private UserCService userCService;

	@RequestMapping(value = "/user/joinP", method = RequestMethod.GET)
	public String joinPForm() {

		return "user/joinP";
	}

	@RequestMapping(value = "/user/joinP", method = RequestMethod.POST)
	public String UserPInsert(Model m, HttpServletRequest req, @ModelAttribute("userP") UserPVO userP) {
		log.info("UserP==" + userP);

		int n = userPService.insertUserP(userP);
		String str = (n > 0) ? "회원 가입 성공" : "회원 가입 실패";
		String loc = (n > 0) ? "../index" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);
		return "msg";
	}

	@GetMapping("/user/joinC")
	public String joinCForm() {

		return "user/joinC";
	}

	@PostMapping("/user/joinC")
	public String UserCInsert(Model m, HttpServletRequest req, @ModelAttribute("userC") UserCVO userC) {

		int n = userCService.insertUserC(userC);

		String str = (n > 0) ? "회원 가입 성공" : "회원 가입 실패";
		String loc = (n > 0) ? "../index" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);

		return "msg";
	}

	// 개인유저정보 수정폼으로 감--송동언------
	@GetMapping("/user/userPEditForm")
	public String userPEditForm(Model m, HttpSession ses) {

		UserPVO loginUser = (UserPVO) ses.getAttribute("loginUserP");
		String pid = loginUser.getPid();

		UserPVO userP = this.userPService.selectUserP(pid);

		m.addAttribute("userp", userP);

		return "/userp/userPEditForm";
	}

	// 개인유저정보 수정 --송동언----------
	@PostMapping("/user/userPEdit")
	public String userPEdit(Model m, @ModelAttribute("userP") UserPVO userP, HttpServletRequest req) {
		log.info(m);

		int n = userPService.updateUserP(userP);

		String str = (n > 0) ? "수정 완료" : "수정 실패";
		String loc = (n > 0) ? "javascript:history.back()" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);

		return "msg";

	}

	// 기업유저정보 수정폼으로 감--송동언------
	@GetMapping("/user/userCEditForm")
	public String userCEditForm(Model m, HttpSession ses) {

		UserCVO loginUser = (UserCVO) ses.getAttribute("loginUserC");
		String cid = loginUser.getCid();

		UserCVO userC = this.userCService.selectUserC(cid);

		m.addAttribute("userc", userC);

		return "/userc/userCEditForm";
	}

	// 기업유저정보 수정 --송동언----------
	@PostMapping("/user/userCEdit")
	public String userCEdit(Model m, @ModelAttribute("userC") UserCVO userC, HttpServletRequest req) {
		log.info(m);

		int n = userCService.updateUserC(userC);

		String str = (n > 0) ? "수정 완료" : "수정 실패";
		String loc = (n > 0) ? "javascript:history.back()" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);

		return "msg";

	}
	@GetMapping("/user/idcheckC")
	   public String IdcheckUserCForm() {
	      
	      return "user/idcheckC";
	   }
	   @GetMapping("/user/checkC")
	   public String IdCheckUSerC(Model m,@ModelAttribute("userC") UserCVO userC,
	         HttpSession ses,
	         HttpServletRequest req) {
	      UserCVO idcheckC = this.userCService.idcheckC(userC.getCid());
	     
	      System.out.println("idcheckC==="+idcheckC);
	      // log.info("idcheckC==="+idcheckC);
	      if(idcheckC==null) {
	         String str="등록 가능한 아이디 입니다";
	         String loc="javascript:history.back()";
	         req.setAttribute("message", str);
	         req.setAttribute("loc", loc);
	         req.setAttribute("uid", userC.getCid());
	      }else {
	         String str="이미 등록된 아이디 입니다.";
	         String loc="javascript:history.back()";
	         req.setAttribute("message", str);
	         req.setAttribute("loc", loc);
	      }
	      
	      return "msg1";
	   }
	   @GetMapping("/user/idcheckP")
	   public String IdCheckUserPForm() {
	      
	      return "user/idcheckP";
	   }
	   
	   
	   @GetMapping("/user/checkP")
	   public String IdCheckUserP(Model m,@ModelAttribute("userP") UserPVO userP, HttpServletRequest req) {
	      
	      UserPVO idcheckP = this.userPService.idcheckP(userP.getPid());
	      
	      if(idcheckP==null) {
	         String str="등록 가능한 아이디 입니다";
	         String loc="javascript:history.back()";
	         req.setAttribute("message", str);
	         req.setAttribute("loc", loc);
	         req.setAttribute("puid", userP.getPid());
	      }else {
	         String str="이미 등록된 아이디 입니다.";
	         String loc="javascript:history.back()";
	         req.setAttribute("message", str);
	         req.setAttribute("loc", loc);
	      }
	      
	      return "msg2";
	   }


}// --------------------------------------------------
