package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class AccommodationVO {

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
}
