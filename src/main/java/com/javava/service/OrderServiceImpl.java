package com.javava.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.javava.config.ApiCredentials;
import com.javava.mapper.ReservationMapper;
import com.javava.vo.ReservationVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class OrderServiceImpl implements OrderService {
	public String impKey = ApiCredentials.PORTONE_KEY;
	public String impSecret = ApiCredentials.PORTONE_SECRET;
	
	public String getToken() throws IOException {
		
		System.out.println("안녕");
		
	    HttpsURLConnection conn = null;

	    URL url = new URL("https://api.iamport.kr/users/getToken");

	    conn = (HttpsURLConnection)url.openConnection();

	    conn.setRequestMethod("POST");
	    conn.setRequestProperty("Content-type", "application/json");
	    conn.setRequestProperty("Accept", "application/json");
	    conn.setDoOutput(true);
	    JsonObject json = new JsonObject();
	    
	    log.info("잘가");
	    System.out.println("잘가");
	    
	    json.addProperty("imp_key", impKey);
	    json.addProperty("imp_secret", impSecret);

	    BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));

	    bw.write(json.toString());
	    bw.flush();
	    bw.close();

	    BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

	    Gson gson = new Gson();

	    String response = gson.fromJson(br.readLine(), Map.class).get("response").toString();

	    System.out.println("response : " + response);

	    String token = gson.fromJson(response, Map.class).get("access_token").toString();

	    br.close();
	    conn.disconnect();

	    return token;
	   // return "어쩔";
	}
	
	public String paymentInfo(String imp_uid, String access_token) throws IOException, ParseException {
		HttpsURLConnection conn = null;

		URL url = new URL("https://api.iamport.kr/payments/" + imp_uid);

		conn = (HttpsURLConnection) url.openConnection();

		conn.setRequestMethod("GET");
		conn.setRequestProperty("Authorization", access_token);
		conn.setDoOutput(true);

		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

		JSONParser parser = new JSONParser();

		JSONObject p = (JSONObject) parser.parse(br.readLine());
		
		String response = p.get("response").toString();
		
		p = (JSONObject) parser.parse(response);
		
		String amount = p.get("amount").toString();

		System.out.println("check : " + amount);
		return amount;
	}
	
	@Autowired
	private ReservationMapper mapper;
	
	public int insert(ReservationVO vo) {
		return mapper.insert(vo);
	}
}
