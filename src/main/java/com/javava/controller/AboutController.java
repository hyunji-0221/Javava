package com.javava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/about/*")
@AllArgsConstructor
public class AboutController {
	
	@GetMapping("/policy")
	public void policy() {
		log.info("�̿��� Ŭ��");
	}
	
	
	@GetMapping("/privacy")
	public void privacy() {
		log.info("����������ȣ��ħ Ŭ��");
	}


}
