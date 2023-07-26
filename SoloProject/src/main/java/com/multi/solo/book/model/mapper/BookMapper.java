package com.multi.solo.book.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.solo.book.model.vo.Book;

@Mapper
public interface BookMapper {
	List<Book> selectBookList(Map<String, String> param);

	int selectBookCount(Map<String, String> param);

	Book selectBookById(int no);
}
