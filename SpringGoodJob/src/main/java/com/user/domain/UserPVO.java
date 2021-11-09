package com.user.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //매개변수 받는 생성자
@NoArgsConstructor 
public class UserPVO {

	private String pname;
	private String pid;
	private String ppw;
	private String pbirth;
	private String php1;
	private String php2;
	private String php3;
	private String addr;
	private String addr2;
	
	
	}//---------------------
