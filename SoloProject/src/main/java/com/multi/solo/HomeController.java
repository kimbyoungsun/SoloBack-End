package com.multi.solo;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.solo.book.model.service.BookService;
import com.multi.solo.common.util.PageInfo;
import com.multi.solo.location.model.service.LocationService;
import com.multi.solo.ott.model.service.OTTService;
import com.multi.solo.ott.model.vo.Movie;
import com.multi.solo.perform.model.service.PerformService;
import com.multi.solo.program.model.service.ProgramService;
import com.multi.solo.sports.model.service.SportsService;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
//	@Autowired
//	private BoardService service;
	
//	@Autowired
//	private MemberService memberService;
	
	@Autowired
	private OTTService ottService;
	
	@Autowired
	private SportsService sportsService;
	
	@Autowired
	private PerformService performService;

	@Autowired
	private LocationService locationService;
	
	@Autowired
	private ProgramService programService;
	
	@Autowired
	private BookService bookService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Map<String, String> map = new HashMap<String, String>();

//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
//		test();
		
		
		return "home";
	}
}
