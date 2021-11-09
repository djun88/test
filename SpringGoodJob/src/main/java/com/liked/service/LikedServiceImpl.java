package com.liked.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.liked.domain.LikedVO;
import com.liked.mapper.LikedMapper;

@Service("LikedServiceImpl")
public class LikedServiceImpl implements LikedService {
	
	@Inject
	private LikedMapper likedMapper;
	
	@Override
	public int addLiked(LikedVO liked) {
		
		return this.likedMapper.addLiked(liked);
	}
	
	@Override
	public List<LikedVO> selectLikedList(String pid){
		return this.likedMapper.selectLikedList(pid);
	}
	
	@Override
	public int delLiked(int likedNum) {
		return this.likedMapper.delLiked(likedNum);
	}

}
