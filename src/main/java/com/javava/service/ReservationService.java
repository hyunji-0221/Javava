package com.javava.service;

import java.util.List;

import com.javava.vo.ForJoinVO;
import com.javava.vo.ReservationVO;

public interface ReservationService {
	
	//DB에 예약자 내용 저장
	public int insert(ReservationVO vo);
	public List<ForJoinVO> getReserveList(int sellerID);

		

}
