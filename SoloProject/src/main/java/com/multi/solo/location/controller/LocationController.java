package com.multi.solo.location.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.multi.solo.common.util.PageInfo;
import com.multi.solo.location.model.service.LocationService;
import com.multi.solo.location.model.vo.HotPlace;
import com.multi.solo.location.model.vo.RentalHouse;
import com.multi.solo.ott.model.vo.Movie;
import com.multi.solo.ott.model.vo.MovieCredit;
import com.multi.solo.ott.model.vo.MovieVideo;

@Controller
@RequestMapping("/location")
public class LocationController {
	@Autowired
	private LocationService service;
	
//	@GetMapping("/RentalHouse")
//	public String RentalHouse(Model model, @RequestParam Map<String, Object> param,
//			@RequestParam(required = false) String[] address) {
//		int page=1;
//		try {
//			if (address != null && address.length > 0) {
//				param.put("address", Arrays.asList(address));
//			} else {
//				param.remove("address");
//			}
//			page = Integer.parseInt((String) param.get("page"));
//		} catch (Exception e) {
//		}
//		int rentalCount = service.getRentalCount(param);
//		PageInfo pageInfo= new PageInfo(page,5,rentalCount, 8);
//		List<RentalHouse> list = service.getRentalHouseList(pageInfo, param);
//		
//	
//		model.addAttribute("list",list);
//		model.addAttribute("pageInfo",pageInfo);
//		model.addAttribute("param",param);
//	
//		boolean isPut = address != null && address.length > 0;
//		if (isPut) {
//			model.addAttribute("address",Arrays.asList(address));
//		}
//		
//		return "etc/RentalHouse";
//	}
	
	@GetMapping("/HotPlace")
	public String HotPlace(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		try {
			page =Integer.parseInt(param.get("page"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		int placeCount = service.getHotPlaceCount(param);
		PageInfo pageInfo= new PageInfo(page,5,placeCount, 9);
		List<HotPlace> list = service.getHotPlaceList(pageInfo, param);
	
		String category = "전체보기";
		if(param.get("category") != null) {
			switch(param.get("category")) {
			case "관광특구": category = "관광특구" ;break;
			case "고궁·문화유산":category = "고궁·문화유산" ;break;
			case "인구밀집지역":category = "인구밀집지역" ;break;
			case "발달상권":category = "발달상권" ;break;
			case "공원":category = "공원" ;break;
			default:category = "전체보기"; break;
			}
		}
		model.addAttribute("list",list);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("category",category);
		model.addAttribute("param",param);
	
		return "etc/HotPlace";
	}
	
	@GetMapping("/RentalHouse")
	public String kakaoMap(Model model, @RequestParam Map<String, String> param) {
		
		int page = 1;
		try {
			page =Integer.parseInt(param.get("page"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		double x;
		double y;
		x=127.269311;
		y=37.413294;
		int level =7;
		String category = "서울특별시";
		if(param.get("category") != null) {
			switch(param.get("category")) {
			case "부산광역시":category = "부산광역시";			level =7;		x=129.07695277777776; y=35.17701944444444; break;
			case "대구광역시":category = "대구광역시";		    level =7; 	x=128.60355277777776;y=35.868541666666665; break;
			case "인천광역시":category = "인천광역시";		    level =7; 	x=126.70735277777779;y=37.45323333333334; break;
			case "광주광역시":category = "광주광역시";		    level =7; 	x=126.85336388888888;y=35.156974999999996; break;
			case "대전광역시":category = "대전광역시";		    level =7; 	x=127.38656666666667;y=36.347119444444445; break;
			case "울산광역시":category = "울산광역시";		    level =7; 	x=129.3136888888889;y=35.53540833333333; break;
			case "경기도":category = "경기도" ;				    level =7; 	x= 128.69416666666666; y=35.23473611111111; break;
			case "세종특별자치시":category = "세종특별자치시";		level =7;		x=127.2890691; y=36.4800121;	 	break;
			case "강원도":category = "강원도";				    level =10; 	x=127.170231;y=38.642618; break;
			case "충청북도":category = "충청북도";			    level =10; 	x=127.49358611111111;y=36.6325; break;
			case "충청남도":category = "충청남도";			    level =10; 	x=127.42295555555556;y=36.32387222222223; break;
			case "전라북도":category = "전라북도";			    level =10; 	x=127.11105277777777;y=35.81727; break;
			case "전라남도":category = "전라남도";			    level =10; 	x=126.465;y=34.813044444444444; break;
			case "경상북도":category = "경상북도";			    level =10; 	x=128.889433;y=36.491286; break;
			case "경상남도":category = "경상남도";			    level =10; 	x=128.214826;y=35.459369; break;
			case "제주특별자치도":category = "제주특별자치도";		level =7;		x=126.50033333333333;y=33.48569444444445;	 break;
			default:category = "서울특별시"; 				    level =7; 	x=126.98000833333333;y=37.56356944444444; break;
			}
		}
		 
		int houseCount = service.getRentalCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, houseCount, houseCount);
		List<RentalHouse> list = service.getRentalHouseList(pageInfo, param);
		
		
		
		model.addAttribute("list",list);
		model.addAttribute("houseCount",houseCount);
		model.addAttribute("category",category);
		model.addAttribute("x", x);
		model.addAttribute("y", y);
		model.addAttribute("level",level);
		return "etc/kakaoMap";
	}
	
	@GetMapping("/Restaurant")
	public String restaurant(Model model,@RequestParam Map<String, String> param) {
		
		
		return "etc/Restaurant";
	}
}
