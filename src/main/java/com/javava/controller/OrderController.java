package com.javava.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javava.config.ApiCredentials;
import com.javava.service.OrderService;
import com.javava.vo.ReservationVO;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(("/order/*"))
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	//private IamportClient client = new IamportClient("impkey","impsecret");
	IamportClient client;
	public OrderController() {
		this.client = new IamportClient
				(ApiCredentials.PORTONE_KEY,ApiCredentials.PORTONE_SECRET);
	}
	
	@ResponseBody
	@RequestMapping(value = "/verify_iamport/{imp_uid}", method = RequestMethod.POST)
	public IamportResponse<Payment> verifyIamportPOST(
			@PathVariable(value = "imp_uid") String imp_uid) throws IamportResponseException, IOException {
			log.info("페이컨트롤러 "+client.paymentByImpUid(imp_uid));
			return client.paymentByImpUid(imp_uid);
		}
	
	@RequestMapping(value ="/complete", method = RequestMethod.POST)
	@ResponseBody
	public String paymentComplete(@RequestBody ReservationVO vo) throws Exception {
	    
	    String token = orderService.getToken();
	    log.info("오더 서비스에서 가져온 토큰 : "+token);
	    
	    // 결제 완료된 금액
	    //String amount = orderService.paymentInfo(vo.getImp_uid(), token);
	    
	    //int res = 1;
		// 결제 취소
//	    if (vo.getPaymentAmount() != Long.parseLong(amount)) {
//	    	res = 0;
//	    	결제 취소
//	    	payService.payMentCancle(token, imp_uid, amount,"결제 금액 오류");
//	    	return res;
//	    }
	    orderService.insert(vo);
	    
		return "redirect:/index";
	 
	}

}
