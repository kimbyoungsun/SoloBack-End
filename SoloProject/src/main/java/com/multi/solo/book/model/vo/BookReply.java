package com.multi.solo.book.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookReply {
	private int rno;
	private int mno;
	private int bid;
	private String content;
	private int score;
	private String createdate;
	private String id;
}
