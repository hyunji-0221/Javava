package com.javava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.ReviewMapper;
import com.javava.vo.ForJoinVO;
import com.javava.vo.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewMapper mapper;
	
	@Override
	public int insert(ReviewVO review) {
		return mapper.insert(review);
	}
	@Override
	public List<ReviewVO> readByAcc(int accommodationID) {
		return mapper.readByAcc(accommodationID);
	}
	
	@Override
	public List<ForJoinVO> getReserveList(int sellerID) {
		return mapper.getReviewList(sellerID);
	}
	
}
