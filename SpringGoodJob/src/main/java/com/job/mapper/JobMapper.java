package com.job.mapper;

import java.util.List;

import com.job.domain.JobVO;
import com.paging.domain.PagingVO;

public interface JobMapper {

	int InsertJob(JobVO job);

	List<JobVO> selectJobList(String cid);

	JobVO selectJob(int cidx);

	int deleteJob(int cidx);

	int updateJob(JobVO job);
	
	List<JobVO> selectJobSearchList(JobVO job);
	
	List<JobVO> selectJobAll(JobVO job);
	
	int getTotalCountPaging(PagingVO paging);
	
	List<JobVO> selectJobAllPaging(PagingVO paging);

	int approve(JobVO job);

	List<JobVO> approveJob(JobVO job);

	int remove(JobVO job);
}
