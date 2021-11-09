package com.user.service;

import java.util.List;

import com.exception.NotUserException;
import com.user.domain.UserPVO;

public interface UserPService {

	int insertUserP(UserPVO userP);

	UserPVO loginCheck(UserPVO userP) throws NotUserException;

	UserPVO findUserP(UserPVO userP) throws NotUserException;

	List<UserPVO> selectAll(UserPVO userP);

	// 개인회원정보수정 송동언--------
	UserPVO selectUserP(String pid);

	int updateUserP(UserPVO userP);

	UserPVO idcheckP(String pid);
}
