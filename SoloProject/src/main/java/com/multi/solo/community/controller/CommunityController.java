package com.multi.solo.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.solo.community.model.service.CommunityService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/community")
@Controller
public class CommunityController {
	
	@GetMapping("/pet")
	public String petCommunityMain() {
		log.info("pet community main page 요청");
		return "community/PetCommunity";
	}
	
	@GetMapping("/pet/post")
	public String petCommunityPost() {
		log.info("pet community post page 요청");
		return "community/PetCommunityPost";
	}
	
	@GetMapping("/product")
	public String TraceProductMain() {
		log.info("trace product main page 요청");
		return "community/traceProductDetail";
	}
	
	@GetMapping("/product/post")
	public String TraceProductPost() {
		log.info("trace product post page 요청");
		return "community/traceProductPost";
	}
	
	@GetMapping("/talent")
	public String TraceTalentMain() {
		log.info("trace talent main page 요청");
		return "community/traceTalentDetail";
	}
	
	@GetMapping("/talent/post")
	public String TraceTalentPost() {
		log.info("trace talent post page 요청");
		return "community/traceTalentPost";
	}
	
	
}
