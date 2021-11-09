package com.apply.mapper;

import java.util.List;

import com.apply.domain.ApplyVO;

public interface applyMapper {

	int insertApply(ApplyVO apply);

	List<ApplyVO> selectApply(int cidx);

	List<ApplyVO> selectPid(String pid);
	
	
}
