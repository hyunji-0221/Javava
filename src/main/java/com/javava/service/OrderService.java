package com.javava.service;

import java.io.IOException;

import org.json.simple.parser.ParseException;

import com.javava.vo.ReservationVO;

public interface OrderService {
	
	public String getToken() throws IOException;
	public String paymentInfo(String imp_uid, String access_token) throws IOException, ParseException;
	public int insert(ReservationVO vo);
	
}
