package com.javava.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(("/order/*"))
public class OrderController {
	
	//private IamportClient client = new IamportClient("impkey","impsecret");
	IamportClient client;
	public OrderController() {
		this.client = new IamportClient
				("7823574325050846","show19RFlbVGhUDoGOKYb8WbrpoEnJaYFaKwGR4kx4IuOuLIAohAwG34Vurk4Yfxcb69jB3MeevMR95R");
	}
	
	@ResponseBody
	@RequestMapping(value = "/verify_iamport/{imp_uid}", method = RequestMethod.POST)
	public IamportResponse<Payment> verifyIamportPOST(@PathVariable(value = "imp_uid") String imp_uid) throws IamportResponseException, IOException {
			log.info("order : "+imp_uid);
			return client.paymentByImpUid(imp_uid);
		}
	
//	@ResponseBody
//	@RequestMapping(value="complete", method = RequestMethod.POST)
//	public 

}
