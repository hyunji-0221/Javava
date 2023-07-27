package com.javava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.AccommodationMapper;
import com.javava.mapper.WishListMapper;
import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;
import com.javava.vo.WishVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AccommodationServiceImpl implements AccommodationService{
	
	@Autowired
	AccommodationMapper mapper;
	
	@Autowired
	WishListMapper wishmapper;
	
	@Override
	public List<ForJoinVO> getList() {
		return mapper.getList();
	}
	
	@Override
	public AccommodationVO readAcc(int accommodationID) {
		return mapper.readAcc(accommodationID);
		
	}
	
	@Override
	public WishVO readWish(WishVO vo) {
		return wishmapper.readWish(vo);
	}
	
	@Override
	public int fullUpdate(WishVO vo) {
		return wishmapper.fullUpdate(vo);
	}

}
