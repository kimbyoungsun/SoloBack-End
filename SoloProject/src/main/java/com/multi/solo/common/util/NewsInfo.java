package com.multi.solo.common.util;

public class NewsInfo {
	private String text;
	private String img;
	private String url;
	private String compony;
	private String title;
	public NewsInfo() {}
	public NewsInfo(String text, String img, String url, String compony, String title) {
		super();
		this.text = text;
		this.img = img;
		this.url = url;
		this.compony = compony;
		this.title = title;
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
	public String getCompony() {
		return compony;
	}
	public void setCompony(String componny) {
		this.compony = componny;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
