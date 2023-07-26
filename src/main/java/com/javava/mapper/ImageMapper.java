package com.javava.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.javava.vo.ImageVO;

@Mapper
public interface ImageMapper {
	
	@Update("update image set main_img=#{main_img} where accommodationID = #{accommodationID}")
	public int addMain(ImageVO image);
	@Update("update image set room1_img=#{room1_img} where accommodationID = #{accommodationID}")
	public int addRoom1(ImageVO image);
	@Update("update image set room2_img=#{room2_img} where accommodationID = #{accommodationID}")
	public int addRoom2(ImageVO image);
	@Update("update image set room3_img=#{room3_img} where accommodationID = #{accommodationID}")
	public int addRoom3(ImageVO image);

	@Insert("insert into image (accommodationID) values (#{accommodationID})")
	public int insertImageTable(int accommodationID);
	
	@Select("select * from image where accommodationID = #{accommodationID}")
	public ImageVO read(int accommodationID);
	
	@Delete("delete from image where accommodationID = #{accommodationID}")
	public int deleteImg(int accommodationID);
	
}
