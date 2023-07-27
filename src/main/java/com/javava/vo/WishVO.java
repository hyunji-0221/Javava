package com.javava.vo;

import lombok.Data;

@Data
public class WishVO {
	
	private int memberID;
	private int accommodationID;
	private String accommodationName;
	private String address;
	private int paymentAmount;
	private String mainImg;
	private int full;
	
}
