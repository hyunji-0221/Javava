package com.javava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.AccommodationMapper;
import com.javava.mapper.ImageMapper;
import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;
import com.javava.vo.ImageVO;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	ImageMapper mapper2;
	
	@Autowired
	AccommodationMapper mapper;
	
	@Override
	public int addMain(ImageVO image) {
		return mapper2.addMain(image);
	}
	@Override
	public int addRoom1(ImageVO image) {
		return mapper2.addRoom1(image);
	}
	@Override
	public int addRoom2(ImageVO image) {
		return mapper2.addRoom2(image);
	}
	@Override
	public int addRoom3(ImageVO image) {
		return mapper2.addRoom3(image);
	}
	
	@Override
	public int insert(AccommodationVO acmd) {
		return mapper.insert(acmd);
	}
	
	@Override
	public List<AccommodationVO> getMyList(int sellerID) {
		return mapper.getMyList(sellerID);
	}
	
	@Override
	public int insertImageTable(int accommodationID) {
		return mapper2.insertImageTable(accommodationID);
	}
	
	@Override
	public ImageVO read(int accommodationID) {
		return mapper2.read(accommodationID);
	}
	
	@Override
	public List<ForJoinVO> getFullList(int sellerID) {
		return mapper.getFullList(sellerID);
	}
	
	@Override
	public int delete(int accommodationID) {
		return mapper.delete(accommodationID);
	}
		
	@Override
	public AccommodationVO readAcc(int accommodationID) {
		return mapper.readAcc(accommodationID);
	}
	
	@Override
	public int modify(AccommodationVO acc) {
		return mapper.modify(acc);
	}
	@Override
	public int deleteImg(int accommodationID) {
		return mapper2.deleteImg(accommodationID);
	}
}
