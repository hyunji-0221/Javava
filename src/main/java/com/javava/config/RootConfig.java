package com.javava.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@EnableScheduling
@Configuration
@MapperScan(basePackages = { "com.javava.mapper","ezen.exam.mapper" })
@ComponentScan(basePackages = { "com.javava.controller", "com.javava.service", "com.javava.myapp","ezen.exam.service" })
public class RootConfig {



	  @Bean //메소드의 실행 결과로 반환된 객체는 스프링 객체로 등록
	  public DataSource dataSource() {

	  HikariConfig hikariConfig = new HikariConfig();
	  hikariConfig.setDriverClassName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
	  hikariConfig.setJdbcUrl("jdbc:log4jdbc:mariadb://172.30.1.194:3306/hr");
	  hikariConfig.setUsername("hr");
	  hikariConfig.setPassword("hr");
	  HikariDataSource dataSource = new HikariDataSource(hikariConfig); return
	  dataSource;

	  }


	  @Bean public SqlSessionFactory sqlSessionFactory() throws Exception{
	  SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
	  sqlSessionFactory.setDataSource(dataSource()); return sqlSessionFactory.getObject();
	  }


}
