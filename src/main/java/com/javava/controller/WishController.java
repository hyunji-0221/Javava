package com.javava.controller;


import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.javava.service.AccommodationService;
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
		System.out.println("vo : "+vo.getAddress());
		return "Post Mapping DataType String";
		
	}
	
}
