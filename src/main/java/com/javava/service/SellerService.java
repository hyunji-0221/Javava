package com.javava.service;

import com.javava.vo.SellerVO;

public interface SellerService {

	public int insert(SellerVO seller);
	public String login(int businessNumber, String password);
	public SellerVO read(int businessNumber);
	public int sellerNumberChkPOST(String businessNumber);
	
}
