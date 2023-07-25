package com.javava.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/accommodation/*")
@AllArgsConstructor
public class AccommodationsController {


	@GetMapping("/accommodation_list")
	public void product_list() {
		log.info("제품상세보기");
	}
	
	@GetMapping("/accommodation_detail")
	public void product_detail() {
		log.info("제품리스트");
	}
	
	@GetMapping("/add_product")
	public void add_product() {
		log.info("제품등록");
	}
}
