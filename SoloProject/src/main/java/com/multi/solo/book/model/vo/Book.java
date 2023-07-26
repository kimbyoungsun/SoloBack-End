package com.multi.solo.book.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {
	private int bid;
	private String title;
	private String link;
	private String author;
	private String pubDate;
	private String description;
	private String isbn;
	private String isbn13;
	private String priceSales;
	private String priceStandard;
	private String mallType;
	private String stockStatus;
	private String mileage;
	private String cover;
	private String categoryId;
	private String categoryName;
	private String publisher;
	private String salesPoint;
	private String adult;
	private String fixedPrice;
	private String customerReviewRank;
	private String bestDuration;
	private String bestRank;
	private String subInfo;
}
