package com.multi.solo.book.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.solo.book.model.vo.Book;

@Mapper
public interface BookMapper {
	List<Book> selectBestList(Map<String, String> param);
	int selectBestCount(Map<String, String> param);
	Book selectBestById(int no);
	List<Book> selectBookList(Map<String, Object> param);
	int selectBookCount(Map<String, Object> param);
	Book selectBookById(int no);
}
