package com.javava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javava.service.SellerService;
import com.javava.vo.SellerVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/seller/*")
@AllArgsConstructor
public class SellerController { //-----김호주 담당
	
	private SellerService service;
	
	@GetMapping("/login")
	public void login() {
		log.info("sellerLogin");
	}
	
	@GetMapping("/join")
	public void join() {
		log.info("sellerJoin");
	}
	
	@PostMapping("/join")
	public String insert(SellerVO seller, RedirectAttributes ra) {
		log.info("insertSeller");
		service.insert(seller);
		ra.addFlashAttribute("result", "join");
		return "redirect:/seller/login";
	}
	
	@PostMapping("/login")
	public String login(int businessNumber, String password, HttpSession session, RedirectAttributes ra) {
		
		log.info("sellerIsLogging");
		String result = service.login(businessNumber, password);
		
		if(result.equals("notEqual") || result.equals("empty")) {
			ra.addFlashAttribute("result", result);
			return "redirect:/seller/login";
		} else {
			session.setAttribute("seller", service.read(businessNumber) );
			session.setMaxInactiveInterval(60*60);
			return "redirect:/";
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		log.info("sellerLogout");
		session.removeAttribute("seller");
		return "redirect:/";
	}
	
	// 아이디 중복 검사
		@ResponseBody
		@PostMapping("/sellerNumberChkPOST")
		public String sellerNumberChkPOST(String businessNumber) throws Exception {


			int result = service.sellerNumberChkPOST(businessNumber);
			log.info("결과값 : " + result);
			if (result != 0) {
				return "fail"; // 중복아이디가 존재하면 fail
			} else {
				return "success"; // 중복아이디가 존재하지 않는다면 success
			}
		}
	
}
