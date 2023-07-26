package com.javava.service;

import java.util.List;

import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;
import com.javava.vo.ImageVO;

public interface AdminService {
	
	public int addMain(ImageVO image);
	public int addRoom1(ImageVO image);
	public int addRoom2(ImageVO image);
	public int addRoom3(ImageVO image);
	
	public int insert(AccommodationVO acmd);
	
	public List<AccommodationVO> getMyList(int sellerID);
	
	public int insertImageTable(int accommodationID);
	
	public ImageVO read(int accommodationID);

	public List<ForJoinVO> getFullList(int sellerID);
	
	public int delete(int accommodationID);
	
	public AccommodationVO readAcc(int accommodationID);
	
	public int modify(AccommodationVO acc);
	
	public int deleteImg(int accommodationID);
}
