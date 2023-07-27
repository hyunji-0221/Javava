package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {  //

	private int bno;
	private String title;
	private int hit;
	private Date regDate;
	private String content;
	

}
