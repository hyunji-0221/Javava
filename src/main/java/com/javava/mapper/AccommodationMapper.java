package com.javava.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;

@Mapper
public interface AccommodationMapper {
	
	@Insert("insert into accommodations (sellerID, accommodationName, zipcode, address1, address2, region, price, description, amenities, room1_Name, room1_Price, room2_Name, room2_Price, room3_Name, room3_Price) values (#{sellerID}, #{accommodationName},#{zipcode}, #{address1}, #{address2}, #{region}, #{price},#{description},null, #{room1_Name}, #{room1_Price},#{room2_Name}, #{room2_Price}, #{room3_Name}, #{room3_Price})")
	public int insert(AccommodationVO acmd);
	
	@Select("select * from accommodations where sellerID = #{sellerID}")
	public List<AccommodationVO> getMyList(int sellerID);
	
	@Select("SELECT * FROM accommodations a left JOIN image i ON a.AccommodationID = i.AccommodationID")
	public List<ForJoinVO> getList();
	
	@Select("select * from accommodations where accommodationID = #{accommodationID}")
	public AccommodationVO getRoomList(int accommodationID);
	
	@Update("update accommodations set room1_Name=#{room1_Name}, room1_Price=#{room1_Price}, room2_Name=#{room2_Name}, room2_Price=#{room2_Price}, room3_Name=#{room3_Name}, room3_Price=#{room3_Price} where accommodationID = #{accommodationID}")
	public int modifyRoom(AccommodationVO acmd);
}
