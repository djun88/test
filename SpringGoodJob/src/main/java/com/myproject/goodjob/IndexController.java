package com.myproject.goodjob;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.job.domain.JobVO;
import com.job.service.jobService;

@Controller
public class IndexController {

	@Inject
	private jobService jobservice;
	
	@RequestMapping("/index")
	public String showMainJob(Model m, @ModelAttribute("job") JobVO job) {
		
		List<JobVO> jobarr=this.jobservice.approveJob(job);
		
		m.addAttribute("jobarr", jobarr);
		
		return "main";
	}
	
	
	
}
