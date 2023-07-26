package com.multi.solo.book.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.solo.book.model.mapper.BookMapper;
import com.multi.solo.book.model.vo.Book;
import com.multi.solo.common.util.PageInfo;

@Service
public class BookService {

	@Autowired
	private BookMapper mapper;
	
	public List<Book> getBookList(PageInfo pageInfo, Map<String,String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectBookList(param);
	}
	
	public int getBookCount(Map<String, String> param) {
		return mapper.selectBookCount(param);
	}
	
	public Book findById(int no) {
		return mapper.selectBookById(no);
	}
}
