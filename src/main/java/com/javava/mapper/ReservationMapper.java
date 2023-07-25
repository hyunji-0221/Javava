package com.javava.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.javava.vo.ReservationVO;

@Mapper
public interface ReservationMapper {
	
	@Insert("INSERT INTO RESERVATIONS VALUES(#{reservationID}, "
			+ "#{memberID}, #{accommodationID}, #{accommodationName}, "
			+ "#{checkInDate}, #{checkOutDate}, #{paymentAmount}, "
			+ "#{reservationDate}, #{reserveName}, #{reservePhone}, #{roomName})")
	public int insert(ReservationVO vo);

}
