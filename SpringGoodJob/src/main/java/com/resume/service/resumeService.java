package com.resume.service;

import java.util.List;

import com.resume.domain.ResumeVO;

public interface resumeService {

	
	int insertResume(ResumeVO resume);

	List<ResumeVO> selectResumeList(String pid);

	ResumeVO selectResume(int idx);

	int deleteResume(int idx);
	
	int updateResume(ResumeVO resume);
}
