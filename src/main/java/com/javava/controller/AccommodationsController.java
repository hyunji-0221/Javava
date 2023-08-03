package com.javava.controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javava.service.AccommodationService;
import com.javava.service.ReviewService;
import com.javava.vo.AccommodationVO;
import com.javava.vo.ForJoinVO;
import com.javava.vo.MemberVO;
import com.javava.vo.ReviewVO;
import com.javava.vo.WishVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/accommodation/*")
@AllArgsConstructor
public class AccommodationsController {

	private AccommodationService service;
	private ReviewService reviewService;

	@GetMapping("/accommodation_list")
	public void product_list(String type, Model model, String region) {
		if(type != null) {
			model.addAttribute("list", service.getListByType(type));
		}
		if(region != null) {
			model.addAttribute("list", service.getListByRegion(region));
		}
		log.info("제품상세보기");
	}

	@GetMapping("/accommodation_detail") 
	public String product_detail(@RequestParam int accommodationID, Model model, HttpSession session) { 
		AccommodationVO acc = service.readAcc(accommodationID); 
		List<ReviewVO> list = reviewService.readByAcc(accommodationID);
		WishVO wish=new WishVO();
		if(session.getAttribute("member")!=null) {
			int memberID=((MemberVO)(session.getAttribute("member"))).getMemberID();
			wish.setAccommodationID(accommodationID);
			wish.setMemberID(memberID);
			wish.setAccommodationName(acc.getAccommodationName());
			wish.setAddress(acc.getAddress1());
			wish.setPaymentAmount(acc.getPrice());
			WishVO vo=service.readWish(wish);
			if(vo == null) {
				service.insert(wish);
			}
			WishVO wishlist=service.readWish(wish);
			model.addAttribute("acc", acc);
			model.addAttribute("reviews", list);
			model.addAttribute("wishlist", wishlist);
			model.addAttribute("image", service.readImage(accommodationID));
			return "accommodation/accommodation_detail";
		}
		else {
			return "redirect:/member/login";
		}
	}

	@PostMapping("/review/write")
	public String insert(ReviewVO review, RedirectAttributes ra) {
		log.info("리뷰작성");
		reviewService.insert(review);
		ra.addFlashAttribute("review", "success");
		return "redirect:/accommodation/accommodation_detail?accommodationID=" + review.getAccommodationID();
	}


	//	@GetMapping("/accommodation_detail")
	//	public void product_detail() {
	//		log.info("제품리스트");
	//	}

	@GetMapping("/add_accommodation")
	public void add_product() {
		log.info("제품등록");
	}

	@PostMapping("/accommodation_list")
	public void search(ForJoinVO acmd, Model model) {
		acmd.setMax(acmd.getMax() * 10000);
		acmd.setMin(acmd.getMin() * 10000);
		model.addAttribute("list", service.getListBySearch(acmd));

		log.info("숙소검색");
	}
	@PostMapping("/accommodation_search")
	public String search1(String keyword, Model model) {

		List<ForJoinVO> list = service.getListByKeyword(keyword);
		model.addAttribute("list", list);

		return "/accommodation/accommodation_list";
	}

}
