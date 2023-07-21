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
	private Date regDate;
	private String admin;

}
