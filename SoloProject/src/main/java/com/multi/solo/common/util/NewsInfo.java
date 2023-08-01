package com.multi.solo.common.util;

public class NewsInfo {
	private String text;
	private String img;
	private String url;
	
	public NewsInfo() {
		
	}
	public NewsInfo(String text, String img, String url) {
		super();
		this.text = text;
		this.img = img;
		this.url = url;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
}
