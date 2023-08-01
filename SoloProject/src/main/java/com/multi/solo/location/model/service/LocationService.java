package com.multi.solo.location.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.solo.common.util.PageInfo;
import com.multi.solo.location.model.mapper.LocationMapper;
import com.multi.solo.location.model.vo.HotPlace;
import com.multi.solo.location.model.vo.RentalHouse;
import com.multi.solo.location.model.vo.Restaurant;
import com.multi.solo.location.model.vo.SignguCode;

@Service
public class LocationService {
	
	@Autowired
	private LocationMapper mapper;
	
	public List<Restaurant>  getRestaurantList(PageInfo pageInfo, Map<String, String> param) {
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectRestaurantList(param);
	}
	
	public int getRestaurantCount(Map<String, String> param) {
		return mapper.selectRestaruntCount(param);
	}
	
	public Restaurant findRestaurntById(String id) {
		return mapper.selectRestaruntById(id);
	}
	
	public List<RentalHouse> getRentalHouseList(PageInfo pageInfo, Map<String, String> param) {
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		
		return mapper.selectRentalHouseList(param);
	}
	
	public int getRentalCount(Map<String, String> param) {
		return mapper.selectRentalHouseCount(param);
	}
	
	
	public List<HotPlace> getHotPlaceList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		
		return mapper.selectHotPlaceList(param);
	}
	
	public int getHotPlaceCount(Map<String, String> param) {
		return mapper.selectHotPlaceCount(param);
	}
	
	public List<SignguCode> getSignguCodeList(Map<String, Object> param){
		return mapper.selectSignguCodeList(param);
	}
}
