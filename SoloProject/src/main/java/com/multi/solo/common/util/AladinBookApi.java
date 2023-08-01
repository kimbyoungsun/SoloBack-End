package com.multi.solo.common.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import com.multi.solo.book.model.vo.Book;

public class AladinBookApi {
	public static void main(String[] args) {
		List<Book> list = new ArrayList<>();

		list = AladinBookApi.parser();
	}

	public static List<Book> parser() {

		List<Book> list = new ArrayList<Book>();
		try {
			StringBuilder urlBuilder = new StringBuilder(" http://www.aladin.co.kr/ttb/api/ItemList.aspx"); /* URL */
			urlBuilder.append("?" + URLEncoder.encode("ttbkey", "UTF-8") + "=ttbsloth03171345001"); /* 서비스키 */
			urlBuilder.append("&" + URLEncoder.encode("QueryType", "UTF-8") + "=Bestseller"); /* 공연시작일자 */
			urlBuilder.append("&" + URLEncoder.encode("MaxResults", "UTF-8") + "=100"); /* 공연종료일자 */
			urlBuilder.append("&" + URLEncoder.encode("SearchTarget", "UTF-8") + "=Book"); /* 현재페이지 */
			urlBuilder.append("&" + URLEncoder.encode("Version", "UTF-8") + "=20131101"); /* 페이지당 목록 수 */

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn.getResponseCode());

			BufferedReader rd;
			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {

				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
			// 3. 페이지 Parsing(해석)
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();

			Document doc = db.parse(conn.getInputStream()); // xml 부를 파싱하여 객체화 <- 크

			doc.getDocumentElement().normalize();

			
			System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());
			System.out.println("======================================================");

            
			NodeList nList = doc.getElementsByTagName("item");
			
			for (int i = 0; i < nList.getLength(); i++) {
				Node node = nList.item(i);
//				System.out.println("\nCurrent Element : " + node.getNodeName());
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					try {
						Element eElement = (Element) node;	
						int id = Integer.parseInt(eElement.getAttribute("itemId"));
						String title = getStrData(eElement, "title");
						String link = getStrData(eElement, "link");
						String author = getStrData(eElement, "author");
						String pubDate = getStrData(eElement, "pubDate");
						String description = getStrData(eElement, "description");
						String isbn = getStrData(eElement, "isbn");
						String isbn13 = getStrData(eElement, "isbn13");
						String priceSales = getStrData(eElement, "priceSales");
						String priceStandard = getStrData(eElement, "priceStandard");
						String mallType = getStrData(eElement, "mallType");
						String stockStatus = getStrData(eElement, "stockStatus");
						String mileage = getStrData(eElement, "mileage");
						String cover = getStrData(eElement, "cover");
						String categoryId = getStrData(eElement, "categoryId");
						String categoryName = getStrData(eElement, "categoryName");
						String publisher = getStrData(eElement, "publisher");
						String salesPoint = getStrData(eElement, "salesPoint");
						String adult = getStrData(eElement, "adult");
						String fixedPrice = getStrData(eElement, "fixedPrice");
						String customerReviewRank = getStrData(eElement, "customerReviewRank");
						String bestDuration = getStrData(eElement, "bestDuration");
						String bestRank = getStrData(eElement, "bestRank");
						String subInfo = getStrData(eElement, "subInfo");
						
						Book ab = new Book(id, title, link, author, pubDate, description, isbn, isbn13, priceSales, priceStandard, mallType, stockStatus, mileage, cover, categoryId, categoryName, publisher, salesPoint, adult, fixedPrice, customerReviewRank, bestDuration, bestRank, subInfo);
						list.add(ab);
					} catch (Exception e) {
						System.out.println("데이터가 잘못되었습니다!");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}

	private static String getStrData(Element eElement, String tagName) {
		try {
			String str = eElement.getElementsByTagName(tagName).item(0).getTextContent();
			if(str.equals(""))
				return "-";
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return "-";
		}
	}
}
