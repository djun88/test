package com.job;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.job.domain.JobVO;
import com.job.service.jobService;
import com.paging.domain.PagingVO;
import com.user.domain.UserCVO;

import lombok.extern.log4j.Log4j;

@Controller

@Log4j
public class jobController {

	@Inject
	private jobService jobservice;

	@GetMapping("/job/jobPage")
	public String showjobPage(Model m, HttpSession ses) {
		UserCVO loginUser = (UserCVO) ses.getAttribute("loginUserC");
		String cid = loginUser.getCid();

		List<JobVO> jobList = this.jobservice.selectJobList(cid);

		m.addAttribute("jobList", jobList);

		return "job/jobPage";
	}//

	@GetMapping("/job/jobForm")
	public String jobForm() {

		return "job/jobForm";
	}//

	@PostMapping("/job/jobPAdd_old")
	public String insertJob(Model m, @RequestParam(value = "cimagename", required = false) MultipartFile cimage,
			@ModelAttribute("job") JobVO job, HttpServletRequest req) {
		log.info(m);
		String originFile = cimage.getOriginalFilename();
		job.setCimage(originFile);

		int n = jobservice.InsertJob(job);

		String str = (n > 0) ? "���� ��� ����" : "���� ��� ����";
		String loc = (n > 0) ? "jobPage" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);

		return "msg";
	}//

	@GetMapping("/jobview/{cidx}")
	public String jobView(Model m, @PathVariable(name = "cidx") int cidx) {
		if (cidx == 0) {
			return "redirect:../jobPage";
		}
		JobVO job = this.jobservice.selectJob(cidx);
		m.addAttribute("job", job);

		return "job/jobView";
	}//

	@PostMapping("/job/jobDel")
	public String jobDelete(Model m, @RequestParam(defaultValue = "0") int cidx, HttpServletRequest req) {

		int n = this.jobservice.deleteJob(cidx);
		String str = (n > 0) ? "���� ���� ����" : "���� ���� ����";
		String loc = (n > 0) ? "jobPage" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);

		return "msg";

	}

	@PostMapping("/job/jobEditForm")
	public String jobEditForm(Model m, @RequestParam(defaultValue = "0") int cidx) {

		JobVO job = this.jobservice.selectJob(cidx);

		m.addAttribute("job", job);

		return "/job/jobEditForm";

	}

	@PostMapping("/job/jobEdit")
	public String jobEdit(Model m, @RequestParam(value = "cimagename", required = false) MultipartFile cimage,
			@ModelAttribute("job") JobVO job, HttpServletRequest req) {
		log.info(m);
		String originFile = cimage.getOriginalFilename();
		job.setCimage(originFile);

		int n = jobservice.updateJob(job);

		String str = (n > 0) ? "���� ���� ����" : "���� ���� ����";
		String loc = (n > 0) ? "jobPage" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);

		return "msg";
	}//
	
	
	//�˻�-------------------------------------------------
	@GetMapping("jobSearch")
	public String jobSearchList(Model m, @ModelAttribute("job") JobVO job) {
		log.info(m);
		System.out.println("��?@@@@@@@@@@@@@@"+m);
		
		List<JobVO> jobList=this.jobservice.selectJobSearchList(job);
		
		m.addAttribute("jobList", jobList);
		
		return "job/jobSearch";
	}
	
	//����¡ ó�� �˻�   �۵���  --------------------------------------------
	@GetMapping("/jobSearch_page")
	public String jobSearchPagingList(Model m, @ModelAttribute("page") PagingVO page,
			HttpServletRequest req, @RequestHeader("User-Agent") String userAgent) {
		
		String myctx=req.getContextPath();
		//1. �� ����� �� ��������
		int totalCount=this.jobservice.getTotalCount(page);
		log.info("totalCount: "+totalCount);
		page.setTotalCount(totalCount);
		page.setPageSize(5);
		page.setPagingBlock(3);
		
		page.init(req.getSession());
		
		log.info("����¡ initȣ����: "+page);
		
		//2. ������ ��������
		List<JobVO> jobList=this.jobservice.selectJobAllPaging(page);
		
		String loc="job/jobSearch";
		String pageNavi=page.getPageNavi(myctx, loc, userAgent);
		
		m.addAttribute("jobList", jobList);
		m.addAttribute("pageNavi", pageNavi);
		m.addAttribute("totalCount", totalCount);
		m.addAttribute("page", page);
		
		return "job/jobSearch";
	}
	
	//�����ϱ� ���ϱ� ��ư�ִ°� ----------�۵���-----
	@GetMapping("/job/jobApplyAndLiked/{cidx}")
	public String jobApplyAndLiked(Model m, @PathVariable(name = "cidx") int cidx) {
		if (cidx == 0) {
			return "redirect:../jobPage";
		}
		JobVO job = this.jobservice.selectJob(cidx);
		m.addAttribute("job", job);

		return "job/jobApplyAndLiked";
	}//
	
	@PostMapping("/job/jobPAdd")
	   public String insertJob(Model m, @RequestParam(value = "cimagename", required = false) MultipartFile cimage,
	         @RequestParam(value="cmsgf", required=false)MultipartFile cmsg,
	         @ModelAttribute("job") JobVO job, HttpServletRequest req) {
	      
	      log.info(m);
	      String originFile = cimage.getOriginalFilename();
	      String originFile2= cmsg.getOriginalFilename();
	      job.setCimage(originFile);
	      job.setCmsg(originFile2);
	      
	      int n = jobservice.InsertJob(job);

	      String str = (n > 0) ? "���� ��� ����" : "���� ��� ����";
	      String loc = (n > 0) ? "jobPage" : "javascript:history.back()";

	      req.setAttribute("message", str);
	      req.setAttribute("loc", loc);

	      return "msg";
	   }//
	
}// ----------------------
