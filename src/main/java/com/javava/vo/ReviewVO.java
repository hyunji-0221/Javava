package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int reviewID;
	private int memberID;
	private int accommodationID;
	private String content;
	private String writer;
	private Date creationDate;
	private String title;
	private int rating;
}
