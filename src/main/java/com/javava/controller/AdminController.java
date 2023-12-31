package com.javava.controller;


import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javava.service.AdminService;
import com.javava.service.ReservationService;
import com.javava.service.ReviewService;
import com.javava.service.SellerService;
import com.javava.vo.AccommodationVO;
import com.javava.vo.ImageVO;
import com.javava.vo.SellerVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminController {
	
	private AdminService service;
	private SellerService service1;
	private ReservationService reserveService;
	private ReviewService reviewService;
	
	@GetMapping("/index")
	public void index() {
		log.info("최고관리자");
	}
	
	@GetMapping("/board")
	public void board() {
		log.info("보드");
	}
	
	@GetMapping("/addAccommodation")
	public void add() {
		log.info("상품추가");
	}
	@PostMapping("/addAccommodation")
	public String addAccommodation(AccommodationVO acmd, RedirectAttributes ra) {
		
		log.info("상품등록POST");
		service.insert(acmd);
		ra.addFlashAttribute("result", "success");
		
		return "redirect:/admin/index";
		
		
	}
	@GetMapping("/accommodationList")
	public void getList(int sellerID, Model model) {
		model.addAttribute("myFullList", service.getFullList(sellerID));
		log.info("숙소리스트");
	}
	@GetMapping("/modify")
	public void readAcc(int accommodationID, Model model) {
		log.info("변경할 숙소정보출력");
		model.addAttribute("myAcc", service.readAcc(accommodationID));
	}
	@PostMapping("/modify")
	public String modify(AccommodationVO acc, RedirectAttributes ra) {
		log.info("숙소변경완료");
		service.modify(acc);
		System.out.println(acc);
		ra.addFlashAttribute("result", "modify");
		return "redirect:/admin/index";
	}
	
	@GetMapping("/selectImage")
	public void selectImage(int sellerID, Model model) {
		
		model.addAttribute("myList", service.getMyList(sellerID));
		log.info("업로드할 숙소선택");
	}
	
	@GetMapping("/delete")
	public void delete(int accommodationID) {
		log.info("숙소삭제");
	}
	@GetMapping("/deleteProc")
	public String deleteProc(int businessNumber, String checkPwd, int accommodationID, RedirectAttributes ra) {
		SellerVO seller = service1.read(businessNumber);
		int sellerID = seller.getSellerID();
		if(checkPwd.equals(seller.getPassword())){
			log.info("success:delete");
			ra.addFlashAttribute("result", "successDelete");
			service.delete(accommodationID);
			service.deleteImg(accommodationID);
			return "redirect:/admin/index";
		} else {
			log.info("fail:delete");
			ra.addFlashAttribute("result", "failDelete");
			return "redirect:/admin/accommodationList?sellerID=" + sellerID;
		}
		
	}
	
	@GetMapping("/reserveList")
	public void readReserve(int sellerID, Model model) {
		
		log.info("나의숙소 예약상황");
		model.addAttribute("reserve", reserveService.getReserveList(sellerID));
		
	}
	
	@GetMapping("/reviewList")
	public void getReviewList(int sellerID, Model model) {
		log.info("나의 숙소리뷰목록");
		model.addAttribute("reviews", reviewService.getReserveList(sellerID));
	}
	
	@GetMapping("/uploadMainImg")
	public void mainImg() {
		log.info("메인이미지등록");
	}
	@GetMapping("/uploadRoom1Img")
	public void room1Img() {
		log.info("객실1이미지등록");
	}
	@GetMapping("/uploadRoom2Img")
	public void room2Img() {
		log.info("객실2이미지등록");
	}
	@GetMapping("/uploadRoom3Img")
	public void room3Img() {
		log.info("객실3이미지등록");
	}
	
	
	@PostMapping("/uploadMainImg")
	public String uploadMain(@RequestParam("main_img") MultipartFile file, int accommodationID, RedirectAttributes ra,HttpServletRequest request) {
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
		long size = file.getSize(); //파일 사이즈
		
		System.out.println("파일명 : "  + fileRealName);
		System.out.println("용량크기(byte) : " + size);
		//서버에 저장할 파일이름 fileextension으로 .jsp이런식의  확장자 명을 구함
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String defaultfilepath = request.getSession().getServletContext().getRealPath("");
		String uploadFolder =  defaultfilepath + "\\resources\\img1";
		
		/*
		  파일 업로드시 파일명이 동일한 파일이 이미 존재할 수도 있고 사용자가 
		  업로드 하는 파일명이 언어 이외의 언어로 되어있을 수 있습니다. 
		  타인어를 지원하지 않는 환경에서는 정산 동작이 되지 않습니다.(리눅스가 대표적인 예시)
		  고유한 랜던 문자를 통해 db와 서버에 저장할 파일명을 새롭게 만들어 준다.
		 */
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		System.out.println("생성된 고유문자열" + uniqueName);
		System.out.println("확장자명" + fileExtension);
		
		ImageVO image = new ImageVO();
		image.setAccommodationID(accommodationID);
		image.setMain_img(uniqueName + fileExtension);
		System.out.println(image.getMain_img());
		
		if(service.read(accommodationID) == null) {
		service.insertImageTable(accommodationID);
		}
		
		service.addMain(image);
		// File saveFile = new File(uploadFolder+"\\"+fileRealName); uuid 적용 전
		
		File saveFile = new File(uploadFolder+"\\"+uniqueName + fileExtension);  // 적용 후
		try {
			file.transferTo(saveFile); // 실제 파일 저장메서드(filewriter 작업을 손쉽게 한방에 처리해준다.)
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ra.addFlashAttribute("result","mainImg");
		return "redirect:/admin/index";
	}
	
	@PostMapping("/uploadRoom1Img")
	public String uploadRoom1(@RequestParam("room1_img") MultipartFile file, int accommodationID, RedirectAttributes ra, HttpServletRequest request) {
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
		long size = file.getSize(); //파일 사이즈
		log.info("객실1이미지등록POST");
		System.out.println("파일명 : "  + fileRealName);
		System.out.println("용량크기(byte) : " + size);
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String defaultfilepath = request.getSession().getServletContext().getRealPath("");
		String uploadFolder =  defaultfilepath + "\\resources\\img1";
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		System.out.println("생성된 고유문자열" + uniqueName);
		System.out.println("확장자명" + fileExtension);
		
		ImageVO image = new ImageVO();
		image.setAccommodationID(accommodationID);
		image.setRoom1_img(uniqueName + fileExtension);
		System.out.println(image.getRoom1_img());
		
		if(service.read(accommodationID) == null) {
		service.insertImageTable(accommodationID);
		}
		
		service.addRoom1(image);
		
		File saveFile = new File(uploadFolder+"\\"+uniqueName + fileExtension);  
		try {
			file.transferTo(saveFile); 
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ra.addFlashAttribute("result","room1Img");
		return "redirect:/admin/index";
	}
	@PostMapping("/uploadRoom2Img")
	public String uploadRoom2(@RequestParam("room2_img") MultipartFile file, int accommodationID, RedirectAttributes ra, HttpServletRequest request) {
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
		long size = file.getSize(); //파일 사이즈
		log.info("객실2이미지등록POST");
		System.out.println("파일명 : "  + fileRealName);
		System.out.println("용량크기(byte) : " + size);
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String defaultfilepath = request.getSession().getServletContext().getRealPath("");
		String uploadFolder =  defaultfilepath + "\\resources\\img1";
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		System.out.println("생성된 고유문자열" + uniqueName);
		System.out.println("확장자명" + fileExtension);
		
		ImageVO image = new ImageVO();
		image.setAccommodationID(accommodationID);
		image.setRoom2_img(uniqueName + fileExtension);
		System.out.println(image.getRoom2_img());
		
		if(service.read(accommodationID) == null) {
			service.insertImageTable(accommodationID);
		}
		
		service.addRoom2(image);
		
		File saveFile = new File(uploadFolder+"\\"+uniqueName + fileExtension);  
		try {
			file.transferTo(saveFile); 
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ra.addFlashAttribute("result","room2Img");
		return "redirect:/admin/index";
	}
	@PostMapping("/uploadRoom3Img")
	public String uploadRoom3(@RequestParam("room3_img") MultipartFile file, int accommodationID, RedirectAttributes ra, HttpServletRequest request) {
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
		long size = file.getSize(); //파일 사이즈
		log.info("객실3이미지등록POST");
		System.out.println("파일명 : "  + fileRealName);
		System.out.println("용량크기(byte) : " + size);
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String defaultfilepath = request.getSession().getServletContext().getRealPath("");
		String uploadFolder =  defaultfilepath + "\\resources\\img1";
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		System.out.println("생성된 고유문자열" + uniqueName);
		System.out.println("확장자명" + fileExtension);
		
		ImageVO image = new ImageVO();
		image.setAccommodationID(accommodationID);
		image.setRoom3_img(uniqueName + fileExtension);
		System.out.println(image.getRoom3_img());
		
		if(service.read(accommodationID) == null) {
			service.insertImageTable(accommodationID);
		}
		
		service.addRoom3(image);
		
		File saveFile = new File(uploadFolder+"\\"+uniqueName + fileExtension);  
		try {
			file.transferTo(saveFile); 
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ra.addFlashAttribute("result","room3Img");
		return "redirect:/admin/index";
	}
	
}
