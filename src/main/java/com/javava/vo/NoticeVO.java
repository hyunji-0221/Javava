package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {  //

	private int bno;
	private String title;
	private String content;
	private int hit;
	private Date regDate;



}
