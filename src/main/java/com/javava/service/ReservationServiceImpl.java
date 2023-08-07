package com.javava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.ReservationMapper;
import com.javava.vo.ForJoinVO;
import com.javava.vo.ReservationVO;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	ReservationMapper mapper;
	
	@Override
	public int insert(ReservationVO vo) {
		return mapper.insert(vo);
	}
	
	@Override
	public List<ForJoinVO> getReserveList(int sellerID) {
		return mapper.getReserveList(sellerID);
	}

}
