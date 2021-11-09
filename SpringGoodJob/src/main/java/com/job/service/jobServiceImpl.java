package com.job.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.job.domain.JobVO;
import com.job.mapper.JobMapper;
import com.paging.domain.PagingVO;

@Service("jobServiceImpl")
public class jobServiceImpl implements jobService{

	@Inject
	private JobMapper jobMapper;

	@Override
	public int InsertJob(JobVO job) {

		return this.jobMapper.InsertJob(job);
	}

	@Override
	public List<JobVO> selectJobList(String cid) {
		// TODO Auto-generated method stub
		return this.jobMapper.selectJobList(cid);
	}

	@Override
	public JobVO selectJob(int cidx) {
		// TODO Auto-generated method stub
		return this.jobMapper.selectJob(cidx);
	}

	@Override
	public int deleteJob(int cidx) {
		// TODO Auto-generated method stub
		return this.jobMapper.deleteJob(cidx);
	}

	@Override
	public int updateJob(JobVO job) {
		// TODO Auto-generated method stub
		return this.jobMapper.updateJob(job);
	}
	
	@Override
	public List<JobVO> selectJobSearchList(JobVO job){
		return this.jobMapper.selectJobSearchList(job);
	}
	
	@Override
	public List<JobVO> selectJobAll(JobVO job){
		return this.jobMapper.selectJobAll(job);
	}
	
	//검색한 공고글 수 가져오기 --송동언------
	@Override
	public int getTotalCount(PagingVO paging) {
		return this.jobMapper.getTotalCountPaging(paging);
	}
	
	//공고글 검색 페이징 처리--송동언-------
	@Override
	public List<JobVO> selectJobAllPaging(PagingVO paging) {
		return this.jobMapper.selectJobAllPaging(paging);
	}

	@Override
	public int approve(JobVO job) {
		// TODO Auto-generated method stub
		return this.jobMapper.approve(job);
	}

	//승인된 공고글 index 페이지에 처리 --김동준
	@Override
	public List<JobVO> approveJob(JobVO job) {
		// TODO Auto-generated method stub
		return this.jobMapper.approveJob(job);
	}
	
	//공고글 해제해서 index페이지에 안보이게 하기 --김동준
	@Override
	public int remove(JobVO job) {
		// TODO Auto-generated method stub
		return this.jobMapper.remove(job);
	}
	
	
}
