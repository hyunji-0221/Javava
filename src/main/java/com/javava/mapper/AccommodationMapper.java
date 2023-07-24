package com.javava.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.javava.vo.AccommodationVO;

@Mapper
public interface AccommodationMapper {
	
	@Insert("insert into accommodations (sellerID, accommodationName, zipcode, address1, address2, region, price, description, amenities) values (#{sellerID}, #{accommodationName},#{zipcode}, #{address1}, #{address2}, #{region}, #{price},#{description}, null)")
	public int insert(AccommodationVO acmd);
	
	@Select("select * from accommodations where sellerID = #{sellerID}")
	public List<AccommodationVO> getMyList(int sellerID);

}
