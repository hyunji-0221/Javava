package com.javava.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.javava.service.AccommodationService;
import com.javava.vo.ForJoinVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class HomeController {
	
	private AccommodationService service;
	
	@GetMapping("/")
	public String home(Model model) {
		
		log.info("home");
		List<ForJoinVO> acmd = service.getList();
		model.addAttribute("acList", acmd);
		
		return "index";
		
	}

}
