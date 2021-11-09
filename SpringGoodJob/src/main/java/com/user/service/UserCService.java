package com.user.service;

import java.util.List;

import com.exception.NotUserException;
import com.user.domain.UserCVO;

public interface UserCService {

	int insertUserC(UserCVO userC);

	UserCVO loginCheck(UserCVO userC) throws NotUserException;

	UserCVO findUserC(UserCVO userC) throws NotUserException;

	List<UserCVO> selectAll(UserCVO userC);

	// 기업회원정보수정 송동언--------
	UserCVO selectUserC(String cid);

	int updateUserC(UserCVO userC);

	UserCVO idcheckC(String cid);
}
