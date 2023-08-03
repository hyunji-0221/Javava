package com.javava.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;

@Mapper
public interface AccommodationMapper {
	
	@Insert("insert into accommodations (sellerID, accommodationName, zipcode, address1, address2, region, price, description, amenities, room1_Name, room1_Price, room2_Name, room2_Price, room3_Name, room3_Price, type) values (#{sellerID}, #{accommodationName},#{zipcode}, #{address1}, #{address2}, #{region}, #{price},#{description},null, #{room1_Name}, #{room1_Price},#{room2_Name}, #{room2_Price}, #{room3_Name}, #{room3_Price}, #{type})")
	public int insert(AccommodationVO acmd);
	
	@Select("select * from accommodations where sellerID = #{sellerID}")
	public List<AccommodationVO> getMyList(int sellerID);
	
	@Select("SELECT * FROM accommodations a left JOIN image i ON a.AccommodationID = i.AccommodationID")
	public List<ForJoinVO> getList();
	
	@Select("SELECT * FROM accommodations a left JOIN image i ON a.AccommodationID = i.AccommodationID WHERE sellerID = #{sellerID}")
	public List<ForJoinVO> getFullList(int sellerID);
	
	@Delete("delete from accommodations where accommodationID = #{accommodationID}")
	public int delete(int accommodationID);
	
	@Select("select * from accommodations where accommodationID = #{accommodationID}")
	public AccommodationVO readAcc(int accommodationID);
	
	@Update("update accommodations set accommodationName = #{accommodationName}, zipcode = #{zipcode}, address1 = #{address1}, address2 = #{address2}, region = #{region}, price = #{price}, description = #{description}, type= #{type}, room1_Name = #{room1_Name}, room1_Price= #{room1_Price}, room2_Name=#{room2_Name}, room2_Price = #{room2_Price}, room3_Name=#{room3_Name}, room3_Price = #{room3_Price} where accommodationID = #{accommodationID}")
	public int modify(AccommodationVO acc);
	
	@Select("SELECT * FROM accommodations a left JOIN image i ON a.AccommodationID = i.AccommodationID where type = #{type}")
	public List<ForJoinVO> getListByType(String type);
	
	@Select("SELECT * FROM accommodations a left JOIN image i ON a.AccommodationID = i.AccommodationID where region = #{region}")
	public List<ForJoinVO> getListByRegion(String region);
	
	@Select("SELECT * FROM accommodations a left JOIN image i ON a.AccommodationID = i.AccommodationID where type = #{type} and region = #{region} and price between #{min} and #{max}")
	public List<ForJoinVO> getListBySearch(ForJoinVO acmd);
	
	@Select("SELECT * FROM accommodations a left JOIN image i ON a.AccommodationID = i.AccommodationID where accommodationName LIKE CONCAT('%', #{keyword}, '%')")
	public List<ForJoinVO> getListByKeyword(String keyword);
	
	
}
