package com.javava.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javava.service.ReservationService;
import com.javava.vo.ReservationVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/reservation/*")
@AllArgsConstructor
public class ReservationController {
	//API 이름들 정리, 멤버 컨트롤러 참조  -----엄현지
	
	ReservationService service;
	
	@GetMapping("/reserve")
	public void reserve() {
		log.info("예약 페이지로 이동");
	}
	
	@PostMapping("/reserve")
	public String test(ReservationVO vo, Model model, HttpSession session) {
		log.info("loginCheck");
		if(session.getAttribute("member")!=null) {
			model.addAttribute("reserve", vo);
			return "reservation/reserve";
		}
		else {
			return "redirect:/member/login";
		}
	}
	
	@PostMapping("/insert")
	public String insert(ReservationVO vo ) {
		log.info("결제하기 폼");
		service.insert(vo);
		return "redirect:/";
	}
}
