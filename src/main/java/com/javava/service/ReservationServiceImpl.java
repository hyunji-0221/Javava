package com.javava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.ReservationMapper;
import com.javava.vo.ReservationVO;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	ReservationMapper mapper;
	
	@Override
	public int insert(ReservationVO vo) {
		return mapper.insert(vo);
	}

}
