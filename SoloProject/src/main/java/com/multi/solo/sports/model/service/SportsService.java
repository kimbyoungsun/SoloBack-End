package com.multi.solo.sports.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.solo.common.util.PageInfo;
import com.multi.solo.sports.model.mapper.SportsMapper;
import com.multi.solo.sports.model.vo.SportsFacility;
import com.multi.solo.sports.model.vo.SportsVideo;

@Service
public class SportsService {

	@Autowired
	private SportsMapper mapper;
	
	public List<SportsVideo> getSportsVideoList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectSportsVideoList(param);
	}
	
	public int getSportsVideoCount(Map<String,String >param) {
		return mapper.selectSportsVideoCount(param);
	}
	
	public SportsVideo findVideoByNo(int no) {
		return mapper.selectSportsVideoByNo(no);
	}
	
	public List<SportsFacility> getSportsFacilityList(PageInfo pageInfo, Map<String, Object> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectSportsFacilityList(param);
	}
	
	public int getSportsFacilityCount(Map<String, Object > param) {
		return mapper.selectSportsFacilityCount(param);
	}
	
	public SportsFacility findFacilityById(String id) {
		return mapper.selectSportsFacilityById(id);
	}
}
