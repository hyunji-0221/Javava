package com.javava.service;

import java.util.List;

import com.javava.vo.NoticeVO;

public interface NoticeService {

	public List<NoticeVO> getList();
	public NoticeVO read(int bno);  //임플에 쓸라고 쓴거고
	public void insert(NoticeVO vo);
	public int update(NoticeVO vo);
	public int delete(int bno);
}
