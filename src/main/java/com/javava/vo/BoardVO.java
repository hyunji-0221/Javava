package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private int bno;
	private String title;
	private String content;
	private int writer;
	private int hit;
	private Date regDate;



}
