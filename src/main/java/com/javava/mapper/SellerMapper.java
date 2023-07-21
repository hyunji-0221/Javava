package com.javava.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.javava.vo.SellerVO;

@Mapper
public interface SellerMapper {
	
	@Insert("insert into seller (companyName, representativeName, zipcode, address1, address2, phoneNumber, businessNumber, password) values (#{companyName}, #{representativeName}, #{zipcode}, #{address1}, #{address2}, #{phoneNumber}, #{businessNumber}, #{password})")
	public int insert(SellerVO seller);
	
	@Select("select * from seller where businessNumber=#{businessNumber}")
	public SellerVO read(int businessNumber);
	
	@Select("select count(*) from members where businessNumber = #{businessNumber}")
	public int idCheck(String businessNumber);
}
