package com.javava.service;


import com.javava.vo.MemberVO;

public interface MemberService {

	// 아이디 중복 검사
		public int idCheck(String email);
		public int insert(MemberVO member);
		public String login(String email, String password);
		public MemberVO read(String email);
		public int delete(String email);
		public int update(MemberVO member);
}
