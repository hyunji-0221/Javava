package com.javava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminController {
	
	@GetMapping("/index")
	public void index() {
		log.info("최고관리자");
	}
	
	@GetMapping("/board")
	public void board() {
		log.info("보드");
	}
	

}
