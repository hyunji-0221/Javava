package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ForJoinVO {
	
	//AccommodationVO
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
	private String type;
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
	
	//Review
	private int reviewID;
	private String content;
	private String writer;
	private Date creationDate;
	private String title;
	private int rating;
	
	private int min;
	private int max;
	
	//ReservationVO
	private int reservationID;
	private int memberID;
	private String address;
	private String checkInDate;
	private String checkOutDate;
	private int paymentAmount;
	private Date reservationDate;
	private String reserveName;
	private String reservePhone;
	private String roomName;
	
	
	
}
