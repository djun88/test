package com.admin;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.job.domain.JobVO;
import com.job.service.jobService;
import com.user.domain.UserCVO;
import com.user.domain.UserPVO;
import com.user.service.UserCService;
import com.user.service.UserPService;

@Controller
public class adminController {

	@Inject 
	private jobService jobservice;
	@Inject
	private UserPService userPService; 
	@Inject
	private UserCService userCService;
	
	@RequestMapping("/admin/index")
	public String showAdmin(Model m, @ModelAttribute("job") JobVO job) {
		
		List<JobVO> jobAll=this.jobservice.selectJobAll(job);
		
		m.addAttribute("joball", jobAll);
		
		return "admin/adminPage";
	}
	
	@RequestMapping("/admin/userP")
	public String showUserPlist(Model m,@ModelAttribute("userP") UserPVO userP) {
	
		List<UserPVO> userPall=this.userPService.selectAll(userP);
		
		m.addAttribute("userPall", userPall);
		
		return "admin/adminUserP";
	}
	
	@RequestMapping("/admin/userC")
	public String showUserClist(Model m,@ModelAttribute("userC") UserCVO userC) {
		
		List<UserCVO> userCall=this.userCService.selectAll(userC);
		
		m.addAttribute("userCall", userCall);
		
		return "admin/adminUserC";
	}
	
	@RequestMapping("/admin/approve")
	public String approveJob(Model m,@ModelAttribute("Job") JobVO job, HttpServletRequest req) {
		
		int n = this.jobservice.approve(job);
		
		String str = (n > 0) ? "승인 완료" : "승인 실패";
		String loc = (n > 0) ? "index" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);
		
		
		return "msg";
	}
	@RequestMapping("/admin/remove")
	public String removeJob(Model m,@ModelAttribute("Job") JobVO job, HttpServletRequest req) {
		
		int n = this.jobservice.remove(job);
		
		String str = (n > 0) ? "해제 완료" : "해제 실패";
		String loc = (n > 0) ? "index" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);
		
		return "msg";
	}
}
