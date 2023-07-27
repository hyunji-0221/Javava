package com.javava.service;

import java.util.List;

import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;

public interface AccommodationService {
	
	public List<ForJoinVO> getList();
	
	//accommodation_detail에 숙소 정보 불러올 때 쓰임
	public AccommodationVO readAcc(int accommodationID);

}
