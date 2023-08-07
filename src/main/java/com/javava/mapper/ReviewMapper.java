package com.javava.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.javava.vo.ForJoinVO;
import com.javava.vo.ReviewVO;

@Mapper
public interface ReviewMapper {
	
	@Insert("insert into reviews (memberID, accommodationID, content, writer, title, rating) values (#{memberID}, #{accommodationID}, #{content}, #{writer}, #{title}, #{rating})")
	public int insert(ReviewVO review);
	
	@Select("select * from reviews where accommodationID = #{accommodationID}")
	public List<ReviewVO> readByAcc(int accommodationID);
	
	@Select("SELECT * FROM reviews r left JOIN accommodations a ON r.AccommodationID = a.AccommodationID where sellerID= #{sellerID}")
	public List<ForJoinVO> getReviewList(int sellerID);

}
