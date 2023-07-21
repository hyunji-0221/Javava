package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReservationVO {

	private int reservationID;
	private int memberID;
	private int accommodationID;
	private Date checkInDate;
	private Date checkOutDate;
	private int numberOfGuests;
	private int paymentAmount;
	private String reservationStatus;
	private Date reservationDate;



}
