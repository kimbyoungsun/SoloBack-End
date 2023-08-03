package com.multi.solo.book.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.solo.board.model.vo.Reply;
import com.multi.solo.book.model.mapper.BookMapper;
import com.multi.solo.book.model.vo.Book;
import com.multi.solo.book.model.vo.BookReply;
import com.multi.solo.common.util.PageInfo;

@Service
public class BookService {

	@Autowired
	private BookMapper mapper;
	
	
	public List<Book> getBestList(PageInfo pageInfo, Map<String,String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectBestList(param);
	}
	
	public int getBestCount(Map<String, String> param) {
		return mapper.selectBestCount(param);
	}
	
	public Book findBestById(int no) {
		return mapper.selectBestById(no);
	}
	
	public List<Book> getBookList(PageInfo pageInfo, Map<String,Object> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectBookList(param);
	}
	
	public int getBookCount(Map<String, Object> param) {
		return mapper.selectBookCount(param);
	}
	
	public Book findById(int no) {
		return mapper.selectBookById(no);
	}
	
	public List<BookReply> getBookReplyList(PageInfo pageInfo, Map<String, String> param) {
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectBookReplyById(param);
	}
	
	public int getReplyCount(Map<String, String> param) {
		return mapper.selectBookReplyCount(param);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int saveBookReply(BookReply reply) {
		return mapper.insertBookReply(reply);
	}
}
