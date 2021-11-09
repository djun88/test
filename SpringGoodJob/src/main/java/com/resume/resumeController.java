package com.resume;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.resume.domain.ResumeVO;
import com.resume.service.resumeService;
import com.user.domain.UserPVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/resume")
@Log4j
public class resumeController {

	@Inject
	private resumeService resumeService;

	@GetMapping("/resumePage")
	public String showResumePage(Model m, HttpSession ses) {

		UserPVO loginUser = (UserPVO) ses.getAttribute("loginUserP");
		String pid = loginUser.getPid();

		List<ResumeVO> resumeList = this.resumeService.selectResumeList(pid);

		m.addAttribute("resumeList", resumeList);

		return "resume/reList";
	}//

	@GetMapping("/resumeForm")
	public String showResumeForm() {

		return "resume/reForm";
	}

	@PostMapping("/resumeAdd")
	public String insertResume(Model m, @RequestParam("pimagename") MultipartFile pimage,
			@ModelAttribute("resume") ResumeVO resume, HttpServletRequest req, HttpSession ses) {
		System.out.println(pimage);
		ServletContext ctx = req.getServletContext();
		String upDir = ctx.getRealPath("/Upload");

		File dir = new File(upDir);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		if (!pimage.isEmpty()) {
			// 1) ���� ÷�������̸�, ����ũ�⸦ �˾Ƴ���.
			String originFile = pimage.getOriginalFilename();// �������ϸ�
			long fsize = pimage.getSize();// ����ũ��
			log.info(originFile + ">>>" + fsize);

			// ������ ���ϸ��� ��� ����� �����ϱ� ����
			// ������ ���ϸ��� "�����ѹ��ڿ�_�������ϸ�"
			UUID uuid = UUID.randomUUID();
			String filename = uuid.toString() + "_" + originFile;
			log.info("filename==" + filename);
			resume.setPimage(originFile);

			try {
				pimage.transferTo(new File(upDir, filename));
			} catch (Exception e) {
				log.error("���� ���ε� �� ����" + e);

			}

		}

		int n = resumeService.insertResume(resume);

		String str = (n > 0) ? "�̷¼� ��� ����" : "�̷¼� ��� ����";
		String loc = (n > 0) ? "resumePage" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);

		return "msg";
	}

	@GetMapping("/resumeview/{idx}")
	public String resumeView(Model m, @PathVariable(name = "idx") int idx) {
		if (idx == 0) {
			return "redirect:../reList";
		}

		ResumeVO resume = this.resumeService.selectResume(idx);
		m.addAttribute("res", resume);
		return "resume/resumeview";
	}

	@PostMapping("/resumeDel")
	public String resumeDelete(Model m, @RequestParam(defaultValue = "0") int idx, HttpServletRequest req) {

		int n = this.resumeService.deleteResume(idx);

		String str = (n > 0) ? "�̷¼� ���� ����" : "�̷¼� ���� ����";
		String loc = (n > 0) ? "resumePage" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);

		return "msg";

	}

	@PostMapping("/resumeEdit")
	public String resumeEditForm(Model m, @RequestParam(defaultValue = "0") int idx) {

		ResumeVO resume = this.resumeService.selectResume(idx);

		m.addAttribute("res", resume);

		return "/resume/resumeEdit";
	}

	@PostMapping("/editR")
	public String resumeEdit(Model m, @RequestParam("pimagename") MultipartFile pimage,
			@ModelAttribute("resume") ResumeVO resume, HttpServletRequest req) {

		System.out.println(pimage);
		ServletContext ctx = req.getServletContext();
		String upDir = ctx.getRealPath("/Upload");

		File dir = new File(upDir);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		if (!pimage.isEmpty()) {
			// 1) ���� ÷�������̸�, ����ũ�⸦ �˾Ƴ���.
			String originFile = pimage.getOriginalFilename();// �������ϸ�
			long fsize = pimage.getSize();// ����ũ��
			log.info(originFile + ">>>" + fsize);

			// ������ ���ϸ��� ��� ����� �����ϱ� ����
			// ������ ���ϸ��� "�����ѹ��ڿ�_�������ϸ�"
			UUID uuid = UUID.randomUUID();
			String filename = uuid.toString() + "_" + originFile;
			log.info("filename==" + filename);
			resume.setPimage(originFile);

			try {
				pimage.transferTo(new File(upDir, filename));
			} catch (Exception e) {
				log.error("���� ���ε� �� ����" + e);

			}

		}

		int n = resumeService.updateResume(resume);

		String str = (n > 0) ? "�̷¼� ���� ����" : "�̷¼� ���� ����";
		String loc = (n > 0) ? "resumePage" : "javascript:history.back()";

		req.setAttribute("message", str);
		req.setAttribute("loc", loc);

		return "msg";

	}

}// resume----------------------------------------
