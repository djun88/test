package com.apply.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //�Ű����� �޴� ������
@NoArgsConstructor 
public class ApplyVO {

	private int num;
	private int idx;
	private int cidx;
	private String pid;
	
	
	private String pimage;
	private String pname;
	
}
