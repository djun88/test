package com.user.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //매개변수 받는 생성자
@NoArgsConstructor 
public class UserCVO {

	private String cname; 
	private String cnum;
	private String cdname;
	private String cid;
	private String cpw;
	private String chp1;
	private String chp2;
	private String chp3;
	private String caddr;
	private String caddr2;
	
}
