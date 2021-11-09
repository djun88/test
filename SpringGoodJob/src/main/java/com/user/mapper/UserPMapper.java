package com.user.mapper;

import java.util.List;

import com.user.domain.UserPVO;

public interface UserPMapper {

	int insertUserP(UserPVO userP);

	UserPVO findUserP(UserPVO userP);

	List<UserPVO> selectAll(UserPVO userP);

	UserPVO selectUserP(String pid);

	int updateUserP(UserPVO userP);
	
	UserPVO idcheckP(String pid);

}
