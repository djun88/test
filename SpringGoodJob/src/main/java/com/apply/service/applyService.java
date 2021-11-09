package com.apply.service;

import java.util.List;

import com.apply.domain.ApplyVO;

public interface applyService {
	
	int insertApply(ApplyVO apply);

	List<ApplyVO> selectApply(int cidx);

	List<ApplyVO> selectPid(String pid);
	
	
	
}
