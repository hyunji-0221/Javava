package com.javava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javava.service.NoticeService;
import com.javava.vo.NoticeVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;  

@Log4j 
@Controller
@RequestMapping("/notice/*")
@AllArgsConstructor
public class NoticeController {   

	private NoticeService service;

	@GetMapping({"/adminList", "/userList" })
	public void list(Model model) {  //views  폴더에 notice 폴더에 list.jsp 랑 짝
		
		//List<NoticeVO> list = service.getList();
		model.addAttribute("nList",	service.getList());  //데이터에 대한 이름은  nList
	
	//서비스한테 getList 해서  //views  폴더에 notice 폴더에 list.jsp 랑 짝 매칭시켜주는애는 컨트롤러
		
		
		
	}
	
	
	@GetMapping("/read")
	public void read(@RequestParam int bno,Model model ) {
		// 특정 bno값을 가진 게시글 보여주기
		NoticeVO notice = service.read(bno);
		model.addAttribute("nread", notice);
			//서비스리드를 실행한값을  nread란 이름으로 저장 
	}
	//컨트롤로가 끝나면 view에  ("/read")랑 같은 jsp파일을 보여준다
	//RequestParam
	
	
	
	
	@GetMapping("/write")
	public void write() {
	}
	
	@PostMapping("/write")
	public String write(NoticeVO vo, RedirectAttributes rttr) {
		service.insert(vo);
	    return "redirect:/notice/adminList";
	}
	

		
	@GetMapping("/update")
	public String update(@RequestParam int bno,Model model) {
		model.addAttribute("nread", service.read(bno));
		return "notice/update";
	}
	
	@PostMapping("/update")
	public String update(NoticeVO notice , RedirectAttributes ra) {
		service.update(notice);
		ra.addFlashAttribute("result","update");
		
		
		return "redirect:/notice/adminList";
		
	}
	
	
	@GetMapping("/delete")
	public String delete (@RequestParam int bno ) {
		service.delete(bno);
		return "redirect:/notice/adminList";
	}
	
	@GetMapping("/noticeList")
	public void noticeList(Model model) {
		model.addAttribute("nList",service.getList());
		
	}
	
	@GetMapping("/noticeRead")
	public void noticeRead(Model model,@RequestParam int bno ) {
		model.addAttribute("nread",service.read( bno));
	}
	
	
	
	
	
}


