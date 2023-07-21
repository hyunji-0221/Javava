package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class accommodations {

	private int accommodationID;
	private int sellerID;
	private String accommodationName;
	private int zipcode;
	private String address1;
	private String address2;
	private String region;
	private int price;
	private double rating;
	private String description;
	private String imageURL1;
	private String imageURL2;
	private String imageURL3;
	private Date regDate;
	private String amenities;
}
