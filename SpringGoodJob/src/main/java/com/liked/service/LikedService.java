package com.liked.service;

import java.util.List;

import com.liked.domain.LikedVO;

public interface LikedService {

	int addLiked(LikedVO liked);
	
	List<LikedVO> selectLikedList(String pid);
	
	int delLiked(int likedNum);
}
