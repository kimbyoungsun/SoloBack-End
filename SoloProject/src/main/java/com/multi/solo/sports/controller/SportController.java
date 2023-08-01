package com.multi.solo.sports.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.solo.common.util.PageInfo;
import com.multi.solo.sports.model.service.SportsService;
import com.multi.solo.sports.model.vo.SportsFacility;
import com.multi.solo.sports.model.vo.SportsVideo;

@RequestMapping("/sports") // 요청 url의 상위 url을 모두 처리할때 사용
@Controller
public class SportController {
	@Autowired
	private SportsService service;
	
	
	@GetMapping("/SportMain")
	public String SportMain(Model model,@RequestParam Map<String, Object> param,
			@RequestParam(required = false) String[] minclassnm
			) {
		int page = 1;
		Map<String, Object> searchMap = new HashMap<String, Object>();
		try {
			Object searchValue = param.get("String, String");
			if(searchValue != null && ((String) searchValue).length() > 0) {
				String searchType = (String) param.get("searchType");
				searchMap.put(searchType, searchValue);
			}else {
				param.put("all", "");
			}
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		try {
			if (minclassnm != null && minclassnm.length > 0) {
				param.put("minclassnm", Arrays.asList(minclassnm));
			} else {
				param.remove("minclassnm");
			}
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {
		}
		
		
		int sportCount = service.getSportsFacilityCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, sportCount, 6);
		List<SportsFacility> list = service.getSportsFacilityList(pageInfo, param);
		
		model.addAttribute("list",list);
		model.addAttribute("param",param);
		boolean isPut = minclassnm != null && minclassnm.length > 0;
		if (isPut) {
			model.addAttribute("minclassnm",Arrays.asList(minclassnm));
		}
//		model.addAttribute("minclassnm",Arrays.asList(minclassnm));
		model.addAttribute("pageInfo",pageInfo);
		
		
		return "sports/SportMain";
	}
	
	@GetMapping("/SportVideo")
	public String SportVideo(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		try {
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		int sportCount = service.getSportsVideoCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, sportCount, 9);
		List<SportsVideo> list = service.getSportsVideoList(pageInfo, param);
		
		model.addAttribute("list",list);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("param",param);
		return "sports/SportVideo";
	}
	
}
