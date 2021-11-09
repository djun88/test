package com.resume.service;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.resume.domain.ResumeVO;
import com.resume.mapper.ResumeMapper;

@Service("resumeServiceImp")
public class resumeServiceImp implements resumeService {
	
	@Inject
	private ResumeMapper resumeMapper;
	
	@Override
	public int insertResume(ResumeVO resume) {
		// TODO Auto-generated method stub
		return this.resumeMapper.insertResume(resume);
	}

	@Override
	public List<ResumeVO> selectResumeList(String pid) {
		// TODO Auto-generated method stub
		return this.resumeMapper.selectResumeList(pid);
	}

	@Override
	public ResumeVO selectResume(int idx) {
		// TODO Auto-generated method stub
		return this.resumeMapper.selectResume(idx);
	}

	@Override
	public int deleteResume(int idx) {
		// TODO Auto-generated method stub
		return this.resumeMapper.deleteResume(idx);
	}

	@Override
	public int updateResume(ResumeVO resume) {
		// TODO Auto-generated method stub
		return this.resumeMapper.updateResume(resume);
	}

}
