package com.javava.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

	private int memberID;
	private String name;
	private String email;
	private String password;
	private String phoneNumber;
	private int zipcode;
	private String address1;
	private String address2;
	private Date regDate;
	private String admin;

}
