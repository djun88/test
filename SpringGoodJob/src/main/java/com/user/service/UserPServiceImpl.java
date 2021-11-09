package com.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.exception.NotUserException;
import com.user.domain.UserPVO;
import com.user.mapper.UserPMapper;

@Service("UserPServiceImpl")
public class UserPServiceImpl implements UserPService {

	@Inject
	private UserPMapper userPmapper;

	@Override
	public int insertUserP(UserPVO userP) {

		return this.userPmapper.insertUserP(userP);
	}

	@Override
	public UserPVO findUserP(UserPVO userP) throws NotUserException {
		System.out.println("findUserP" + userP.getPid() + "//" + userP.getPpw());
		UserPVO user = userPmapper.findUserP(userP);
		if (user == null)
			throw new NotUserException("로그인 정보가 옳지 않습니다.");
		return user;
	}

	@Override
	public UserPVO loginCheck(UserPVO userP) throws NotUserException {
		UserPVO db_userP = this.findUserP(userP);
		if (db_userP != null) {
			if (!db_userP.getPpw().equals(userP.getPpw())) {
				throw new NotUserException("로그인 정보가 옳지 않습니다.");
			}
		}

		return db_userP;
	}

	@Override
	public List<UserPVO> selectAll(UserPVO userP) {
		// TODO Auto-generated method stub
		return this.userPmapper.selectAll(userP);
	}

	// 개인정보 수정---------송동언
	@Override
	public UserPVO selectUserP(String pid) {
		return this.userPmapper.selectUserP(pid);
	}

	@Override
	public int updateUserP(UserPVO userP) {
		return this.userPmapper.updateUserP(userP);
	}
	
	@Override
	   public UserPVO idcheckP(String pid) {
	      // TODO Auto-generated method stub
	      return this.userPmapper.idcheckP(pid);
	   }

}
