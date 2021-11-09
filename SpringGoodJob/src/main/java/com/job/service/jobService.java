package com.job.service;

import java.util.List;

import com.job.domain.JobVO;
import com.paging.domain.PagingVO;

public interface jobService {

	int InsertJob(JobVO job);

	List<JobVO> selectJobList(String cid);

	JobVO selectJob(int cidx);

	int deleteJob(int cidx);

	int updateJob(JobVO job);
	
	List<JobVO> selectJobSearchList(JobVO job);
	
	List<JobVO> selectJobAll(JobVO job);
	
	int getTotalCount(PagingVO paging);//검색한 공고글 수 가져오기 --송동언------
	
	List<JobVO> selectJobAllPaging(PagingVO paging);//공고글 검색 페이징 처리--송동언-------

	int approve(JobVO job);//JOBC registjob 컬럼 값 1로 변경 --> 메인에 표시하게끔 --김동준

	List<JobVO> approveJob(JobVO job);//

	int remove(JobVO job);
	
}
