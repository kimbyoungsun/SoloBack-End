package com.multi.solo.ott.controller;

import java.util.HashMap;
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
import com.multi.solo.ott.model.service.OTTService;
import com.multi.solo.ott.model.vo.Movie;
import com.multi.solo.ott.model.vo.MovieCredit;
import com.multi.solo.ott.model.vo.MovieVideo;
import com.multi.solo.ott.model.vo.TV;
import com.multi.solo.ott.model.vo.TVCredit;
import com.multi.solo.ott.model.vo.TVVideo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/ott")
public class OTTController {

	@Autowired
	private OTTService service;

	@GetMapping("/OTTMain")
	public String OttMain(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		Map<String, String> searchMap = new HashMap<String, String>();
		try {
			String searchValue = param.get("String, String");
			if (searchValue != null && searchValue.length() > 0) {
				String searchType = param.get("searchType");
				searchMap.put(searchType, searchValue);
			} else {
				param.put("searchType", "all");
			}
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
		}

		Map<String, String> sortMap = new HashMap<>();
		sortMap.put("sort", "release_date");
		int ottCount = service.getMoiveCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, ottCount, 10);
		List<Movie> list = service.getMovieList(pageInfo, sortMap);
		sortMap.put("sort", "popularity");
		List<Movie> list2 = service.getMovieList(pageInfo, sortMap);
		sortMap.put("sort", "vote_average");
		List<Movie> list3 = service.getMovieList(pageInfo, sortMap);

		List<MovieVideo> list4 = service.getMovieVideoList(pageInfo, param);

		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "ott/OTTMain";
	}

	@GetMapping("/OTTSearch")
	public String OttSearch(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchType = "all";

		try {
			String searchValue = param.get("searchValue"); // 정확한 요청 매개변수 이름을 사용해야 합니다.
			if (searchValue != null && !searchValue.isEmpty()) {
				searchType = param.get("searchType");
				searchMap.put(searchType, searchValue);
			} else {
				param.put("searchType", "all");
				searchMap.put("all", ""); // 검색어가 없을 때도 "all"로 설정되도록 수정
			}
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
		}

		int ottCount = service.getMoiveCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 5, ottCount, 9);
		searchMap.put("sort", "release_date");
		List<Movie> list = service.getMovieList(pageInfo, searchMap);

		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "ott/OTTSearch";
	}

	@GetMapping("/movie/photo")
	@JsonIgnore
	public ResponseEntity<Map<String, Object>> moviePhoto(Model model, @RequestParam("id") String id) {
		Movie movie = service.findMovieById(id);
		if (movie == null) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}

		Map<String, Object> map = new HashMap<>();
		map.put("movie", movie);
		System.out.println(map);
		return ResponseEntity.status(HttpStatus.OK).body(map);
	}

	@GetMapping("/movie/video")
	@JsonIgnore
	public ResponseEntity<Map<String, Object>> moiveVideo(Model model, @RequestParam("id") String id) {
		List<MovieVideo> movieVideo = service.findMovieByVideo(id);
		System.out.println(id);
		if (movieVideo == null) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
		String result = "";
		System.out.println(movieVideo);
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			result = objectMapper.writeValueAsString(movieVideo);
		} catch (Exception e) {
			// TODO: handle exception
		}
		Map<String, Object> map = new HashMap<>();
		map.put("result", movieVideo);
		System.out.println(map);
		return ResponseEntity.status(HttpStatus.OK).body(map);
	}

	@GetMapping("/movie/credit")
	@JsonIgnore
	public ResponseEntity<Map<String, Object>> moiveCredit(Model model, @RequestParam("id") String id) {
		List<MovieCredit> movieVideo = service.findMovieByCredit(id);
		System.out.println(id);
		if (movieVideo == null) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
		String result = "";
		System.out.println(movieVideo);
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			result = objectMapper.writeValueAsString(movieVideo);
		} catch (Exception e) {
			// TODO: handle exception
		}
		Map<String, Object> map = new HashMap<>();
		map.put("result", movieVideo);
		System.out.println(map);
		return ResponseEntity.status(HttpStatus.OK).body(map);
	}

	

}