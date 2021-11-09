package com.liked.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //매개변수 받는 생성자
@NoArgsConstructor 
public class LikedVO {
	
	private String likedNum;
	private String pid;
	private String cidx;
	
	private String cname;
	private String cimage;
	private String cjobt;

}
