package com.multi.solo.book.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
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
		try {
			if (category != null && category.length > 0) {
				param.put("category", Arrays.asList(category));
			} else {
				param.remove("category");
			}
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {
		}
		
		int bookCount = service.getBookCount(param);
		
		PageInfo pageInfo = new PageInfo(page, 5,bookCount, 8);
		List<Book> book = service.getBookList(pageInfo, param);

		
		boolean isPut = category != null && category.length > 0;
		if (isPut) {
			for(String str : category) {
				System.out.println(str);
			}
			model.addAttribute("category",Arrays.asList(category));
		}
		
		model.addAttribute("book",book);
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		
		return "book/BookSearch";
	}
	
	@GetMapping("/BookDetail")
	public String bookSearch(Model model, @RequestParam Map<String, String> param) {
		int id = Integer.parseInt(param.get("bId"));
		Book book = service.findById(id);
		String originalString = book.getCover();
        String modifiedString = originalString.replace("cover", "cover500");
        
        Map<String, Object> map = new HashMap<>();
        map.put("categoryId", book.getCategoryId());
        int bookCount = service.getBookCount(map);
        List<Book> list = service.getBookList(new PageInfo(1,5,bookCount,10), map);
        
		model.addAttribute("book", book);
		model.addAttribute("image",modifiedString);
		model.addAttribute("list",list);
		
		return "book/BookDetail";
	}

}
