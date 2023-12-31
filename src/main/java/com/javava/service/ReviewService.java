package com.javava.service;

import java.util.List;

import com.javava.vo.ForJoinVO;
import com.javava.vo.ReviewVO;

public interface ReviewService {

	public int insert(ReviewVO review);
	
	public List<ReviewVO> readByAcc(int accommodationID);
	
	public List<ForJoinVO> getReserveList(int sellerID);
	
}
