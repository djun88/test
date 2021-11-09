package com.apply.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.apply.domain.ApplyVO;
import com.apply.mapper.applyMapper;

@Service("applyServiceImpl")
public class applyServiceImpl implements applyService {

	@Inject
	private applyMapper applyMapper;
	
	
	@Override
	public int insertApply(ApplyVO apply) {
		// TODO Auto-generated method stub
		return this.applyMapper.insertApply(apply);
	}


	@Override
	public List<ApplyVO> selectApply(int cidx) {
		// TODO Auto-generated method stub
		return this.applyMapper.selectApply(cidx);
	}


	@Override
	public List<ApplyVO> selectPid(String pid) {
		// TODO Auto-generated method stub
		return this.applyMapper.selectPid(pid);
	}

}
