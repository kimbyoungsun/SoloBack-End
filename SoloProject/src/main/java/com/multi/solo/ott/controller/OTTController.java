package com.multi.solo.ott.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.solo.common.util.PageInfo;
import com.multi.solo.ott.model.service.OTTService;
import com.multi.solo.ott.model.vo.Movie;

@Controller
@RequestMapping("/ott")
public class OTTController {
	
	@Autowired
	private OTTService service;
	
	
	public String OttMain(Model model, @RequestParam Map<String, String> param) {
		int page=1;
		
		
		Map<String, String> searchMap = new HashMap<String, String>();
		try {
			String searchValue = param.get("String, String");
			if(searchValue != null && searchValue.length() > 0) {
				String searchType = param.get("searchType");
				searchMap.put(searchType, searchValue);
			}else {
				param.put("searchType", "all");
			}
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {}
		
		int ottCount = service.getMoiveCount(searchMap);
		PageInfo pageInfo = new PageInfo(page,10,ottCount,10);
		List<Movie> list = service.getMovieList(pageInfo, searchMap);
		
		model.addAttribute("list",list);
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "ott/OTTMain";
	}
}
