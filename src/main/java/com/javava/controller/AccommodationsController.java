package com.javava.controller;



import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javava.service.AccommodationService;
import com.javava.vo.AccommodationVO;
import com.javava.vo.MemberVO;
import com.javava.vo.WishVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/accommodation/*")
@AllArgsConstructor
public class AccommodationsController {
	
	AccommodationService service;

	
	@GetMapping("/accommodation_list")
	public void product_list() {
		log.info("제품상세보기");
	}
	
	@GetMapping("/accommodation_detail")
	public void product_detail(@RequestParam int accommodationID, Model model, HttpSession session) {
		log.info("제품리스트");
		AccommodationVO accommodation=service.readAcc(accommodationID);
		WishVO vo=new WishVO();
		vo.setAccommodationID(accommodationID);
		log.info("acid : "+accommodationID);
		log.info("VO부터 시작 : "+(MemberVO)(session.getAttribute("member")));
		int memberID=((MemberVO)(session.getAttribute("member"))).getMemberID();
		vo.setMemberID(memberID);
		log.info("memid : "+memberID);
		WishVO wishlist=service.readWish(vo);
		model.addAttribute("accommodation", accommodation);
		model.addAttribute("wishlist", wishlist);
	}
	
	@GetMapping("/add_accommodation")
	public void add_product() {
		log.info("제품등록");
	}
}
