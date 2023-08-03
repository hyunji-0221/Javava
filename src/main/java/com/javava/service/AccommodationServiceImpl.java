package com.javava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.AccommodationMapper;
import com.javava.mapper.ImageMapper;
import com.javava.mapper.WishListMapper;
import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;
import com.javava.vo.ImageVO;
import com.javava.vo.WishVO;

@Service
public class AccommodationServiceImpl implements AccommodationService{
	
	@Autowired
	AccommodationMapper mapper;
	
	@Autowired
	WishListMapper wishmapper;
	
	@Autowired
	ImageMapper imagemapper;
	
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
	@Override
	public List<ForJoinVO> getListByType(String type) {
		return mapper.getListByType(type);
	}
	@Override
	public List<ForJoinVO> getListByRegion(String region) {
		return mapper.getListByRegion(region);
	}
	@Override
	public List<ForJoinVO> getListBySearch(ForJoinVO acmd) {
		return mapper.getListBySearch(acmd);
	}
	
	@Override
	public int insert(WishVO vo) {
		return wishmapper.insert(vo);
	}
	
	@Override
	public List<ForJoinVO> getListByKeyword(String keyword) {
		return mapper.getListByKeyword(keyword);
	}
	
	@Override
	public ImageVO readImage(int accommodationID) {
		return imagemapper.read(accommodationID);
	}
	
	public int fullDelete(WishVO vo) {
		return wishmapper.fullUpdate(vo);
	}

}
