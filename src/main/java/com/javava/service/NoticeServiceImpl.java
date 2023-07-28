package com.javava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javava.mapper.NoticeMapper;
import com.javava.vo.NoticeVO;

@Service	
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeMapper mapper;
	
	@Override
	public List<NoticeVO> getList() {      //mapper한테 getList 하도록시킨애 서비스임플
	
		// List<NoticeVO> list = mapper.getList();
		return mapper.getList();
	}
	
	@Override
	public NoticeVO read(int bno){
		
		return mapper.read(bno);
	}
	
	
	@Override
	public void insert(NoticeVO vo) {
		
		mapper.insert(vo);
	}
		

}
