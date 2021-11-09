package com.liked;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.liked.domain.LikedVO;
import com.liked.service.LikedService;
import com.user.domain.UserPVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/liked")
@Log4j
public class LikedController {

	@Inject
	private LikedService likedService;
	
	//찜하기---송동언-----------------------
	@PostMapping("/likedAdd")
	public String likedAdd(Model m, @ModelAttribute("like") LikedVO like,
			 HttpSession ses, HttpServletRequest req) {
		
		System.out.println("여기까지가나요??@@@@@@@");
		System.out.println("라이크드라이크드 "+like);
		log.info("likedVo "+like);
		
		UserPVO loginUserP=(UserPVO) ses.getAttribute("loginUserP");
		String pid=loginUserP.getPid();
		
		
		System.out.println("아이디받아옴?"+pid);
		
		like.setPid(pid);
		//likedVo.setCidx(cidx);
		//like.setCidx(String.valueOf(cidx));
		
		int n=this.likedService.addLiked(like);
		
		String str=(n>0)? "찜하기 성공":"찜하기 실패";
		String loc=(n>0)? "../index":"javascript:history.back()";
		
		req.setAttribute("message", str);
		req.setAttribute("loc", loc);
		
		return "msg";
	}
	
	@GetMapping("/likedList")
	public String likedList(Model m, HttpSession ses) {
		UserPVO loginUserP=(UserPVO) ses.getAttribute("loginUserP");
		String pid=loginUserP.getPid();
		
		List<LikedVO> likedList = this.likedService.selectLikedList(pid);
		
		m.addAttribute("likedList", likedList);
		
		return "userp/userPLiked";
	}
	
	@PostMapping("likedDel")
	public String likedDelete(@RequestParam(name="likedNum", defaultValue="0") int likedNum) {
		
		if(likedNum==0) return "redirect:likedList";
		this.likedService.delLiked(likedNum);
		
		return "redirect:likedList";
	}
	
	
}
