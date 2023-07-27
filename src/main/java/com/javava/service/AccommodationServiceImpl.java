package com.javava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.AccommodationMapper;
import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;

@Service
public class AccommodationServiceImpl implements AccommodationService{
	
	@Autowired
	AccommodationMapper mapper;
	
	@Override
	public List<ForJoinVO> getList() {
		return mapper.getList();
	}
	
	//accommodation_detail에 숙소 정보 불러올 때 쓰임
	@Override
	public AccommodationVO readAcc(int accommodationID) {
		return mapper.readAcc(accommodationID);
	}

}
