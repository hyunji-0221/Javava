package com.javava.controller;


import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.javava.service.AccommodationService;
import com.javava.vo.MemberVO;
import com.javava.vo.WishVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@RequestMapping("/wish/*")
@AllArgsConstructor
public class WishController {
	
	AccommodationService service;
	
	@PostMapping("/full")
	public String fullUpdate(WishVO vo) {
		service.fullUpdate(vo);
		return "Post Mapping DataType String";
		
	}
	
	@PostMapping("/insert")
	public String insert(WishVO vo) {
		log.info("vo : "+vo);
//		service.insert(vo);
		return "redirect:/accommodation/accommodation_detail?accommodationID=${ acmd.accommodationID }";
		
	}
	
	@GetMapping("/delete")
	public String fullDelete(@RequestParam int accommodationID, Model model, HttpSession session) {
		WishVO vo=new WishVO();
		vo.setAccommodationID(accommodationID);
		int memberID=((MemberVO)(session.getAttribute("member"))).getMemberID();
		vo.setMemberID(memberID);
		vo.setFull(0);
		service.fullUpdate(vo);
		return "/member/wishlist?memberID="+memberID;
	}
	
}
