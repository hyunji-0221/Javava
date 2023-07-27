package com.javava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javava.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;  

@Log4j 
@Controller
@RequestMapping("/notice/*")
@AllArgsConstructor
public class NoticeController {   

	private NoticeService service;

	@GetMapping({"/adminList", "/userList"})
	public void list(Model model) {  //views  폴더에 notice 폴더에 list.jsp 랑 짝
		
		//List<NoticeVO> list = service.getList();
		model.addAttribute("nList",	service.getList());  //데이터에 대한 이름은  nList
		//서비스한테 getList 해서  //views  폴더에 notice 폴더에 list.jsp 랑 짝 매칭시켜주는애는 컨트롤러
	}
}
