package com.job.domain;

import lombok.AllArgsConstructor;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //매개변수 받는 생성자
@NoArgsConstructor 
public class JobVO  {
	
	private String cidx;
	private String cid;
	private String cimage;
	private String cname; 
	private String cdname;
	private int chp1;
	private int chp2;
	private int chp3;
	private String caddr;
	private String ccategory;
	private String ce;
	private String ctype;
	private String cc;
	private String cpay;
	private String cpr; 
	private String cposition;
	private String cmsg;
	private String cjobt;
	private String registjob;
		
	private String jobKeyword;
	
	}
