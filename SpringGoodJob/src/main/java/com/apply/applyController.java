package com.apply;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.apply.domain.ApplyVO;
import com.apply.service.applyService;
import com.job.domain.JobVO;
import com.resume.domain.ResumeVO;
import com.resume.service.resumeService;
import com.user.domain.UserPVO;

@Controller
public class applyController {
	
	@Inject
	private resumeService resumeservice;
	@Inject
	private applyService applyservice;
	
	
	@RequestMapping("/apply/applyPage")
	public String showApplyPage(Model m,@ModelAttribute("resumes")ResumeVO resume, 
			@ModelAttribute("Job") JobVO job,
			HttpSession ses) {
		
		UserPVO loginUser = (UserPVO) ses.getAttribute("loginUserP");
		String pid = loginUser.getPid();
		
		List<ResumeVO> resumeList = this.resumeservice.selectResumeList(pid);
		
		int cidx=Integer.valueOf(job.getCidx());
		
		m.addAttribute("resumeList", resumeList);	
		m.addAttribute("cidx", cidx);
		
		return "applyList/ApplyForm";
	}
	@RequestMapping("/apply/insertApplyAction")
	public String insertApplyAction(Model m,@ModelAttribute("apply") ApplyVO apply,HttpServletRequest req) {
		
		System.out.println(m.toString());
		
		int n = this.applyservice.insertApply(apply);
		
		String str = (n > 0) ? "지원 성공" : "지원 실패";
		String loc = (n > 0) ? "../index" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);
		
		return "msg";
	}
	@RequestMapping("/apply/applyList")
	public String applyList(Model m,@ModelAttribute("apply") ApplyVO apply,HttpServletRequest req) {
		
		System.out.println("넘어온 번호는~~?"+apply.toString());
		int cidx = Integer.valueOf(apply.getCidx());
		
		List<ApplyVO> applyList= this.applyservice.selectApply(cidx);
		
		m.addAttribute("applyList", applyList);
		
		
		return "applyList/ApplyList";
	}
	@RequestMapping("/apply/applyMe")
	public String applyMelist(Model m,@ModelAttribute("apply") ApplyVO apply, HttpServletRequest req,HttpSession ses) {
		UserPVO loginUserP=(UserPVO) ses.getAttribute("loginUserP");
		String pid=loginUserP.getPid();
		
		apply.setPid(pid);
		List<ApplyVO> aply=this.applyservice.selectPid(pid);
	
		m.addAttribute("aply", aply);
	
		return "applyList/ApplyListME";
	}
}
