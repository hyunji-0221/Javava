package com.javava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.MemberMapper;
import com.javava.vo.MemberVO;
import com.javava.vo.ReservationVO;
import com.javava.vo.WishVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper mapper;

	// id 중복검사
		@Override
		public int idCheck(String email) {

			return mapper.idCheck(email);
		}
		
		@Override
		public int insert(MemberVO member) {
			return mapper.insert(member);
		}
		
		@Override
		public String login(String email, String password) {
			String result = null;
			MemberVO member = mapper.read(email);
			if(member != null) {
				if(member.getPassword().equals(password)) {
					result = member.getEmail();
				} else {
					result = "notEqual";
				}
			} else {
				return result = "empty";
			}
			return result;
		}
		
		@Override
		public MemberVO read(String email) {
			return mapper.read(email);
		}
		
		@Override
		public int delete(String email) {
			return mapper.delete(email);
		}
		@Override
		public int update(MemberVO member) {
			return mapper.update(member);
		}
		
		@Override
		public List<ReservationVO> getReservationList(int memberID) {
			return mapper.getReservationList(memberID);
		}
		
		@Override
		public List<WishVO> getWishList(int memberID) {
			return mapper.getWishList(memberID);
		}
}
