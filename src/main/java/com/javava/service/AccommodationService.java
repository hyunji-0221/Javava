package com.javava.service;

import java.util.List;

import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;
import com.javava.vo.ImageVO;
import com.javava.vo.WishVO;

public interface AccommodationService {
	
	public List<ForJoinVO> getList();
	public AccommodationVO readAcc(int accommodationID);
	public WishVO readWish(WishVO vo);
	public int fullUpdate(WishVO vo);
	public List<ForJoinVO> getListByType(String type);
	public List<ForJoinVO> getListByRegion(String region);
	public List<ForJoinVO> getListBySearch(ForJoinVO acmd);
	public int insert(WishVO vo);
	public List<ForJoinVO> getListByKeyword(String keyword);
	public ImageVO readImage(int accommodationID);

	public int fullDelete(WishVO vo);
}
