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
	
	//�˻��� ����� �� �������� --�۵���------
	@Override
	public int getTotalCount(PagingVO paging) {
		return this.jobMapper.getTotalCountPaging(paging);
	}
	
	//����� �˻� ����¡ ó��--�۵���-------
	@Override
	public List<JobVO> selectJobAllPaging(PagingVO paging) {
		return this.jobMapper.selectJobAllPaging(paging);
	}

	@Override
	public int approve(JobVO job) {
		// TODO Auto-generated method stub
		return this.jobMapper.approve(job);
	}

	//���ε� ����� index �������� ó�� --�赿��
	@Override
	public List<JobVO> approveJob(JobVO job) {
		// TODO Auto-generated method stub
		return this.jobMapper.approveJob(job);
	}
	
	//����� �����ؼ� index�������� �Ⱥ��̰� �ϱ� --�赿��
	@Override
	public int remove(JobVO job) {
		// TODO Auto-generated method stub
		return this.jobMapper.remove(job);
	}
	
	
}
