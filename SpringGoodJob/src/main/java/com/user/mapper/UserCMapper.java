package com.user.mapper;

import java.util.List;

import com.exception.NotUserException;
import com.user.domain.UserCVO;

public interface UserCMapper {

	int insertUserC(UserCVO userC);

	UserCVO findUserC(UserCVO userC) throws NotUserException;

	List<UserCVO> selectAll(UserCVO userC);

	UserCVO selectUserC(String cid);

	int updateUserC(UserCVO userC);
	
	UserCVO idcheckC(String cid);
}
