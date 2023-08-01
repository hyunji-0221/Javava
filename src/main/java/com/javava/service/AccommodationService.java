package com.javava.service;

import java.util.List;

import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;
import com.javava.vo.WishVO;

public interface AccommodationService {
	
	public List<ForJoinVO> getList();
	public AccommodationVO readAcc(int accommodationID);
	public WishVO readWish(WishVO vo);
	public int fullUpdate(WishVO vo);
	public int insert(WishVO vo);

}
