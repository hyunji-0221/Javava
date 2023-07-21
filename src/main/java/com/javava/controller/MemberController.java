package com.javava.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javava.service.MemberService;
import com.javava.vo.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {

	private MemberService service;

	@GetMapping("/login")
	public void login() {
		log.info("login");
	}

	@GetMapping("/join")
	public void join() {
		log.info("join");

	}
	@PostMapping("/join")
	public String insert(MemberVO member, RedirectAttributes ra) {
		log.info("insert");
		service.insert(member);
		ra.addFlashAttribute("result", "join");
		return "redirect:/member/login";
	}
	
	@PostMapping("/login")
	public String login(String email,String password, HttpSession session, RedirectAttributes ra) {
		
		log.info("loginProc");
		String result = service.login(email, password);
		if(result.equals(email)) {
			MemberVO member = service.read(email);
			session.setAttribute("member", member);
			return "redirect:/";
		} else {
			ra.addFlashAttribute("result", result);
			return "redirect:/member/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		log.info("logout");
		session.removeAttribute("member");
		return "redirect:/";
	}
	
	@GetMapping({"/read","/modify"})
	public void read(@RequestParam String email, Model model) {
		MemberVO member = service.read(email);
		model.addAttribute("member", member);
		log.info("read");
	}
	
	@GetMapping("/delete")
	public String delete(String email, String checkPwd, RedirectAttributes ra, HttpSession session) {
		MemberVO member = service.read(email);
		if(checkPwd.equals(member.getPassword())){
			log.info("success:delete");
			ra.addFlashAttribute("result", "delete");
			service.delete(email);
			session.removeAttribute("member");
			return "redirect:/";
		} else {
			log.info("fail:delete");
			ra.addFlashAttribute("result", "failDelete");
			return "redirect:/member/read?email=" + email;
		}
	}
	
	@PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes ra) {
		log.info("update");
		service.update(member);
		String email = member.getEmail();
		ra.addFlashAttribute("result", "update");
		return "redirect:/member/read?email=" + email;
	}
	
	// 아이디 중복 검사
	@ResponseBody
	@PostMapping("/member/memberEmailChkPOST")
	public String memberEmailChkPOST(String email) throws Exception {


		int result = service.idCheck(email);
		log.info("결과값 : " + result);
		if (result != 0) {
			return "fail"; // 중복아이디가 존재하면 fail
		} else {
			return "success"; // 중복아이디가 존재하지 않는다면 success
		}
	}

}
