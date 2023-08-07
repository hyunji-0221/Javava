package com.javava.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.javava.vo.ForJoinVO;
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
	
	@Select("SELECT * FROM reservations r left JOIN accommodations a ON r.AccommodationID = a.AccommodationID where sellerID= #{sellerID}")
	public List<ForJoinVO> getReserveList(int sellerID);
}
