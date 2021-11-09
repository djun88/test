package com.liked.mapper;

import java.util.List;

import com.liked.domain.LikedVO;

public interface LikedMapper {

	int addLiked(LikedVO liked);
	
	List<LikedVO> selectLikedList(String pid);
	
	int delLiked(int likedNum);
}
