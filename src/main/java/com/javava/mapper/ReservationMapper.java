package com.javava.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.javava.vo.ReservationVO;

@Mapper
public interface ReservationMapper {
	
	/*
	 * @Insert("INSERT INTO RESERVATIONS " +
	 * "(reservationID, accommodationName, checkInDate, " +
	 * "checkOutDate, paymentAmount, reservationDate, reserveName, reservePhone, roomName)"
	 * + "VALUES " + "(#{reservationID}, #{accommodationName}, " +
	 * "#{checkInDate}, #{checkOutDate}, #{paymentAmount}, " +
	 * "#{reservationDate}, #{reserveName}, #{reservePhone}, #{roomName})")
	 */
	
	@Insert("INSERT INTO RESERVATIONS (accommodationID, memberID, reserveName, reservePhone, accommodationName, roomName, checkInDate, checkOutDate, paymentAmount) "
			+ "values "
			+ "(#{accommodationID}, #{memberID}, #{reserveName}, #{reservePhone}, #{accommodationName}, #{roomName}, #{checkInDate}, #{checkOutDate}, #{paymentAmount})")
	public int insert(ReservationVO vo);

}
