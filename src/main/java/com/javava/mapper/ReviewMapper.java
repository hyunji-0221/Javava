package com.javava.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.javava.vo.ReviewVO;

@Mapper
public interface ReviewMapper {
	
	@Insert("insert into reviews (memberID, accommodationID, content, writer, title) values (#{memberID}, #{accommodationID}, #{content}, #{writer}, #{title}")
	public int insert(ReviewVO review);

}
