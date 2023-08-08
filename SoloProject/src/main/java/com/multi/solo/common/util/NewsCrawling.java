package com.multi.solo.common.util;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class NewsCrawling {
	public static void main(String[] args)  throws Exception{
		// 다음 뉴스 페이지 크롤링 예제
		NewsCrawling.crawling();
		
	}
	
	public static List<NewsInfo> crawling() throws Exception {
		String URL = "https://search.naver.com/search.naver?where=news&sm=tab_jum&query=1인가구";
		Connection conn = Jsoup.connect(URL);
		Document document = conn.get(); // Document : html 문서를 말함
		
		List<NewsInfo> newsList = new ArrayList<>();
		List<String> title = new ArrayList<>();
		List<String> url= new ArrayList<>();
		List<String> img = new ArrayList<>();
		List<String> newscompony = new ArrayList<>();
		List<String> text = new ArrayList<>();
 		NewsInfo newsInfo = new NewsInfo();
		Elements elements = document.getElementsByTag("a"); // a태그의 모든 elements 가져오기
		for(int i = 0; i < elements.size(); i++) {
//			System.out.println(elements.get(i));
			Elements elements2 = elements.get(i).getElementsByClass("news_tit");
			if(elements2.size() > 0 && elements2.toString().contains("#direct_") == false) {
				//System.out.println(elements2.get(0).attr("title"));
				title.add(elements2.get(0).attr("title"));
				url.add(elements2.get(0).attr("href"));
			}
//			elements2 = elements.get(i).getElementsByClass("api_txt_lines dsc_txt_wrap");
//			//System.out.println(elements2);
//			if(elements2.size() > 0 && elements2.toString().contains("#direct_") == false) {
//				newsList.add(elements2);
//			}
			elements2 = elements.get(i).getElementsByClass("dsc_thumb");
			if(elements2.size() > 0 && elements2.toString().contains("#direct_") == false) {
				//System.out.println("dsc_thumb : "+elements2.get(0).getElementsByTag("img").attr("data-lazysrc"));
				img.add(elements2.get(0).getElementsByTag("img").attr("data-lazysrc"));				
			}
			
			elements2 = elements.get(i).getElementsByClass("info press");
//			System.out.println(elements.get(i).getElementsByClass("info press").text());
			if(elements2.size() > 0 && elements2.toString().contains("#direct_") == false) {
				//System.out.println("dsc_thumb : "+elements2.get(0).getElementsByTag("img").attr("data-lazysrc"));
				newscompony.add(elements.get(i).getElementsByClass("info press").text());				
			}
			
			elements2 = elements.get(i).getElementsByClass("api_txt_lines dsc_txt_wrap");
//			System.out.println(elements.get(i).getElementsByClass("api_txt_lines dsc_txt_wrap").text());
			if(elements2.size() > 0 && elements2.toString().contains("#direct_") == false) {
				//System.out.println("dsc_thumb : "+elements2.get(0).getElementsByTag("img").attr("data-lazysrc"));
				text.add(elements.get(i).getElementsByClass("api_txt_lines dsc_txt_wrap").text());				
			}
		}
		
		// <a href="https://v.daum.net/v/20230417112453656" class="link_txt">입술·혀로 기기 제어, 새 VR 경험 제공할까</a>
		//System.out.println(newsList);

		//		for(Elements e : newsList) {
//			System.out.println(e.get(0).text());
//			System.out.println(e.get(0).getElementsByClass("news_tit").attr("href"));
//			System.out.println(e.get(0).getElementsByTag("img").attr("data-lazysrc"));
//			System.out.println("@@@@");
//		}
		
		int i = 0;
		for(String item : img) {
			newsInfo = new NewsInfo();
			if (img.get(i) != null) {
				newsInfo.setImg(img.get(i));
			}
			if (title.get(i) != null) {
				newsInfo.setTitle(title.get(i));
			}
			if (url.get(i) != null) {
				newsInfo.setUrl(url.get(i));
			}
			if (text.get(i) != null) {
				newsInfo.setImg(img.get(i));
			}
			if (text.get(i) != null) {
				newsInfo.setText(text.get(i));
			}
			if (newscompony.get(i) != null) {
				newsInfo.setCompony(newscompony.get(i));
			}
			
			newsList.add(newsInfo);
//			System.out.println("img : " +newsList.get(i).getImg());
//			System.out.println("text : " +newsList.get(i).getText());
//			System.out.println("url : " +newsList.get(i).getUrl());
			i++;
		}
//		System.out.println("---------------------------------------------------");
//		for (NewsInfo info : newsList) {
//			System.out.println("img : "+info.getImg());
//			System.out.println("title : "+info.getTitle());
//			System.out.println("url : "+info.getUrl());
//			System.out.println("text : "+info.getText());
//			System.out.println("compony : "+info.getCompony());
//			System.out.println();
//		}
		
		return newsList;
	}
	
}
