package com.multi.solo.ott.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.solo.common.util.PageInfo;
import com.multi.solo.ott.model.mapper.OTTMapper;
import com.multi.solo.ott.model.vo.Movie;
import com.multi.solo.ott.model.vo.MovieCredit;
import com.multi.solo.ott.model.vo.MovieVideo;
import com.multi.solo.ott.model.vo.TV;
import com.multi.solo.ott.model.vo.TVCredit;
import com.multi.solo.ott.model.vo.TVVideo;

@Service
public class OTTService {
	@Autowired
	private OTTMapper mapper;

	public List<Movie> getMovieList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectMovieList(param);
	}
	
	public int getMoiveCount(Map<String,String> param) {
		return mapper.selectMovieCount(param);
	}
	
	public Movie findMovieById(String id) {
		return mapper.selectMovieById(id);
	}
	
	public List<MovieVideo> findMovieByVideo(String id) {
		return mapper.selectMovieVideo(id);
	}
	public List<MovieCredit> findMovieByCredit(String id) {
		return mapper.selectMovieCredit(id);
	}
	
	public List<TV> getTVList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectTVList(param);
	}
	
	public int getTVCount(Map<String, String> param) {
		return mapper.selectTVCount(param);
	}
	
	public TV findTVById(String id) {
		return mapper.selectTVById(id);
	}
	
	public List<TVVideo> findVideoByTV(String id){
		return mapper.selectVideoByTV(id);
	}
	public List<TVCredit> findCreditByTV(String id){
		return mapper.selectCreditByTV(id);
	}
}
