package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class SellerVO {
	
	
	private int sellerID;
	private String companyName;
	private String representativeName;
	private int zipcode;
	private String address1;
	private String address2;
	private String phoneNumber;
	private int businessNumber;
	private String password;
	private Date regDate;

}
