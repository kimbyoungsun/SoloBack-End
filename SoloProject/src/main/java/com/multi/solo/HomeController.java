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
import com.multi.solo.common.util.NewsCrawling;
import com.multi.solo.common.util.NewsInfo;
import com.multi.solo.common.util.PageInfo;
import com.multi.solo.location.model.service.LocationService;
import com.multi.solo.location.model.vo.HotPlace;
import com.multi.solo.ott.model.service.OTTService;
import com.multi.solo.perform.model.service.PerformService;
import com.multi.solo.program.model.service.ProgramService;
import com.multi.solo.program.model.vo.Program;
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
		int page = 1;
		logger.info("Welcome home! The client locale is {}.", locale);
		Map<String, String> map = new HashMap<String, String>();
		int programCount = programService.getProgramCount(map); 
		PageInfo pageInfo = new PageInfo(page, 5,programCount,4);
		List<Program> program = programService.getProgramList(pageInfo, map);
		try {
			List<NewsInfo> news = NewsCrawling.crawling();
			model.addAttribute("news", news);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		List<HotPlace> hotplace = locationService.getHotPlaceList(pageInfo, map);
		model.addAttribute("hotplace",hotplace);
		model.addAttribute("program",program);
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
//		test();		
		
		return "etc/restaurant";
	}
}
