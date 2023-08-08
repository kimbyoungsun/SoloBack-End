package com.multi.solo.book.controller;

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

import com.multi.solo.book.model.service.BookService;
import com.multi.solo.book.model.vo.Book;
import com.multi.solo.book.model.vo.BookReply;
import com.multi.solo.common.util.PageInfo;

@Controller
@RequestMapping("/book")
public class BookController {

	@Autowired
	private BookService service;
	
	@GetMapping("/BookSearch")
	public String bookMain(Model model, @RequestParam Map<String, Object> param,
			@RequestParam(required = false) String[] category) {
		int page=1;
		Map<String,String> checked = new HashMap<>();
		String selected = "title";
		
		checked.put("sort", String.valueOf(param.get("sort")));
		
		if(param.get("searchType") != null) {
			selected = (String) param.get("searchType");
			System.out.println(selected);
		}
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		String searchType = "all";
		
		try {
			String searchValue =(String) param.get("searchValue"); // 정확한 요청 매개변수 이름을 사용해야 합니다.
			if (searchValue != null && !searchValue.isEmpty()) {
				searchType = (String) param.get("searchType");
				searchMap.put(searchType, searchValue);
			} else {
				param.put("searchType", "all");
				searchMap.put("all", ""); // 검색어가 없을 때도 "all"로 설정되도록 수정
			}
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {
		}
		
		
		searchMap.put("sort",param.get("sort"));
		
		if(param.get("sort") == null) {
			checked.put("sort", "title");
		}
		
		
		try {
			if (category != null && category.length > 0) {
				searchMap.put("category", Arrays.asList(category));
			} else {
				searchMap.remove("category");
			}
		} catch (Exception e) {
		}
	
		int bookCount = service.getBookCount(searchMap);
		
		PageInfo pageInfo = new PageInfo(page, 5,bookCount, 8);
		List<Book> book = service.getBookList(pageInfo, searchMap);

		
		boolean isPut = category != null && category.length > 0;
		if (isPut) {
			model.addAttribute("category",Arrays.asList(category));
		}
		
		model.addAttribute("book",book);
		model.addAttribute("param",searchMap);
		model.addAttribute("checked",checked);
		model.addAttribute("selected",selected);
		model.addAttribute("pageInfo",pageInfo);
		
		return "book/BookSearch";
	}
	
	@GetMapping("/BookDetail")
	public String bookSearch(Model model, @RequestParam Map<String, String> param) {
		int id = Integer.parseInt(param.get("bId"));
		int page=1;
		
		Book book = service.findById(id);
		String originalString = book.getCover();
        String modifiedString = originalString.replace("cover", "cover500");
        
        Map<String, Object> map = new HashMap<>();
        map.put("categoryId", book.getCategoryId());
        int bookCount = service.getBookCount(map);
        List<Book> list = service.getBookList(new PageInfo(1,1,bookCount,bookCount), map);
        
        int replyCount = service.getReplyCount(param);
        PageInfo pageInfo = new PageInfo(page,5,replyCount,5);
        List<BookReply> reply = service.getBookReplyList(pageInfo, param);
        
        boolean replyIsEmpty = false;
        if(reply.isEmpty()) {
        	replyIsEmpty = true;
        }
        	
        
		model.addAttribute("book", book);
		model.addAttribute("image",modifiedString);
		model.addAttribute("list",list);
		model.addAttribute("reply",reply);
		model.addAttribute("replyIsEmpty",replyIsEmpty);
		model.addAttribute("pageInfo",pageInfo);
		
		return "book/BookDetail";
	}

}
