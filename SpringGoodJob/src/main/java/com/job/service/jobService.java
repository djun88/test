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
	
	int getTotalCount(PagingVO paging);//�˻��� ����� �� �������� --�۵���------
	
	List<JobVO> selectJobAllPaging(PagingVO paging);//����� �˻� ����¡ ó��--�۵���-------

	int approve(JobVO job);//JOBC registjob �÷� �� 1�� ���� --> ���ο� ǥ���ϰԲ� --�赿��

	List<JobVO> approveJob(JobVO job);//

	int remove(JobVO job);
	
}
