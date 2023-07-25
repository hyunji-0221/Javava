package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ForJoinVO {

	private int accommodationID;
	private int sellerID;
	private String accommodationName;
	private int zipcode;
	private String address1;
	private String address2;
	private String region;
	private int price;
	private String description;
	private Date regDate;
	private String amenities;
	private String room1_Name;
	private String room2_Name;
	private String room3_Name;
	private int room1_Price;
	private int room2_Price;
	private int room3_Price;
	private String main_img;
	private String room1_img;
	private String room2_img;
	private String room3_img;
	
	
}
