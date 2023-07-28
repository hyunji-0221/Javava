package com.javava.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.javava.vo.NoticeVO;

@Mapper
public interface NoticeMapper {

	@Select("select * from notice")
	public List<NoticeVO> getList();    //얘는 리턴이 없어도 어노테이션 때문에 알아서 리턴을 해준다   뽑은 쿼리를 List<Notice>타입ㅁ으로  저장한다 그리고 

	
	@Select("select * from notice where bno=#{bno}")
	public NoticeVO read(int bno);
}
//데이터베이스에서 데이터를 불러와서 크루드 작업을 하는것
//#{ }이 있으면 메소드 안에 매개변수가 있어야 한다 이런느낌>