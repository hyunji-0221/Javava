package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReservationVO {

	private int reservationID;
	private int memberID;
	private int accommodationID;
	private String accommodationName;
	private String address;
	private String checkInDate;
	private String checkOutDate;
	private int paymentAmount;
	private Date reservationDate;
	private String reserveName;
	private String reservePhone;
	private String roomName;
	private String roomImg;

}
