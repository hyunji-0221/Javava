package com.javava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javava.vo.ReviewVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {
	
	@PostMapping("/write")
	public void insert(ReviewVO review) {
		
		
		
		log.info("리뷰작성");
		
	}
	
}
