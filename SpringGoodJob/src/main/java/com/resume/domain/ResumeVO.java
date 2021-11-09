package com.resume.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //매개변수 받는 생성자
@NoArgsConstructor
public class ResumeVO {
	

	private String pid;
	private String idx;
	private String pname;
	private String pbirth;
	private int php1;
	private int php2;
	private int php3;
	private String addr;
	private String pimage;
	private String pc;
	private String psname;
	private String pmajor;
	private String pcname;
	private String pdate;
	private String pjname;
	private String pposition;
	private String pmsg;
	private String ptitle;
	
	private String filename;//물리적 파일명
	private String originFilename;//원본파일명(논리적 파일명)
	private long filesize;
	private String mode;
}
