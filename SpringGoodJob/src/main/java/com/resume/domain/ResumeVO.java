package com.resume.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //�Ű����� �޴� ������
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
	
	private String filename;//������ ���ϸ�
	private String originFilename;//�������ϸ�(���� ���ϸ�)
	private long filesize;
	private String mode;
}
