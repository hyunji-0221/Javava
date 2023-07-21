package com.javava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.SellerMapper;
import com.javava.vo.SellerVO;

@Service
public class SellerServiceImpl implements SellerService{
	
	@Autowired
	SellerMapper mapper;
	
	@Override
	public int insert(SellerVO seller) {
		return mapper.insert(seller);
	}
	
	@Override
	public String login(int businessNumber, String password) {
		String result = null;
		SellerVO seller = mapper.read(businessNumber);
		if(seller != null) {
			if(seller.getPassword().equals(password)) {
				result = String.valueOf(seller.getBusinessNumber());
			} else {
				result = "notEqual";
			}
		} else {
			return result = "empty";
		}
		return result;
	}
	
	@Override
	public SellerVO read(int businessNumber) {
		return mapper.read(businessNumber);
	}
	@Override
	public int sellerNumberChkPOST(String businessNumber) {

		return mapper.idCheck(businessNumber);
	}
}
