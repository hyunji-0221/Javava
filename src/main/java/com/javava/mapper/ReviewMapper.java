package com.javava.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.javava.vo.ReviewVO;

@Mapper
public interface ReviewMapper {
	
	@Insert("insert into reviews (memberID, accommodationID, content, writer, title) values (#{memberID}, #{accommodationID}, #{content}, #{writer}, #{title})")
	public int insert(ReviewVO review);
	
	@Select("select * from reviews where accommodationID = #{accommodationID}")
	public List<ReviewVO> readByAcc(int accommodationID);

}
