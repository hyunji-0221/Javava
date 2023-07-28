package com.javava.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.javava.vo.MemberVO;
import com.javava.vo.ReservationVO;
import com.javava.vo.WishVO;

@Mapper
public interface MemberMapper {

	@Select("select count(*) from members where email = #{email}")
	public int idCheck(String email);
	
	
	@Insert("insert into members (email, name, password, phoneNumber) values (#{email}, #{name}, #{password}, #{phoneNumber})")
	public int insert(MemberVO member);
	
	@Select("select * from members where email = #{email}")
	public MemberVO read(String email);
	
	@Delete("delete from members where email = #{email}")
	public int delete(String email);
	
	@Update("update members set name=#{name}, password=#{password}, phoneNumber=#{phoneNumber} where email=#{email}")
	public int update(MemberVO member);
	
	@Select("select * from reservations where memberID = #{memberID}")
	public List<ReservationVO> getReservationList(int memberID);
	
	@Select("select * from wishlist where memberID=#{memberID}")
	public List<WishVO> getWishList(int memberID);
}
