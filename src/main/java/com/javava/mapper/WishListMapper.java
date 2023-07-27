package com.javava.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.javava.vo.WishVO;

@Mapper
public interface WishListMapper {
	
	@Select("select * from wishlist where accommodationID=#{accommodationID} and memberID=#{memberID}")
	public WishVO readWish(WishVO vo);
	
	@Update("update wishlist set full=#{full} where memberID=#{memberID}")
	public int fullUpdate(WishVO vo);
	
}
