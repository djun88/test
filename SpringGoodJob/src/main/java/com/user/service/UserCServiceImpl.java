package com.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.exception.NotUserException;
import com.user.domain.UserCVO;
import com.user.mapper.UserCMapper;

@Service("UserCServiceImpl")
public class UserCServiceImpl implements UserCService {

	@Inject
	private UserCMapper userCmapper;

	@Override
	public int insertUserC(UserCVO userC) {

		return this.userCmapper.insertUserC(userC);
	}

	@Override
	public UserCVO loginCheck(UserCVO userC) throws NotUserException {
		UserCVO db_userC = this.findUserC(userC);
		if (db_userC != null) {
			if (!db_userC.getCpw().equals(userC.getCpw())) {
				throw new NotUserException("�α��� ������ ���� �ʽ��ϴ�");
			}
		}

		return db_userC;
	}

	@Override
	public UserCVO findUserC(UserCVO userC) throws NotUserException {
		UserCVO user = this.userCmapper.findUserC(userC);
		if (user == null)
			throw new NotUserException("�α��� ������ ���� �ʽ��ϴ�.");
		return user;
	}

	@Override
	public List<UserCVO> selectAll(UserCVO userC) {
		// TODO Auto-generated method stub
		return this.userCmapper.selectAll(userC);
	}

	// ��� �������� ����---------�۵���
	@Override
	public UserCVO selectUserC(String cid) {
		return this.userCmapper.selectUserC(cid);
	}

	@Override
	public int updateUserC(UserCVO userC) {
		return this.userCmapper.updateUserC(userC);
	}
	
	@Override
	   public UserCVO idcheckC(String cid) {
	      UserCVO userc = this.userCmapper.idcheckC(cid);
	      return userc;
	   }

}
