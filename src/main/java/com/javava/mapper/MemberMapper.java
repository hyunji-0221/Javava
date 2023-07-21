package com.javava.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.javava.vo.MemberVO;

@Mapper
public interface MemberMapper {

	@Select("select count(*) from members where email = #{email}")
	public int idCheck(String email);
	
	
	@Insert("insert into members (email, name, password, phoneNumber, zipcode, address1, address2) values (#{email}, #{name}, #{password}, #{phoneNumber}, #{zipcode}, #{address1}, #{address2})")
	public int insert(MemberVO member);
	
	@Select("select * from members where email = #{email}")
	public MemberVO read(String email);
	
	@Delete("delete from members where email = #{email}")
	public int delete(String email);
	
	@Update("update members set name=#{name}, password=#{password}, phoneNumber=#{phoneNumber}, zipcode=#{zipcode}, address1=#{address1}, address2=#{address2} where email=#{email}")
	public int update(MemberVO member);
}
