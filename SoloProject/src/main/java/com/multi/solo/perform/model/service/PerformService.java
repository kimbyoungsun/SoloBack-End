package com.multi.solo.perform.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.solo.common.util.PageInfo;
import com.multi.solo.perform.model.mapper.PerformMapper;
import com.multi.solo.perform.model.vo.PerformInfo;
import com.multi.solo.perform.model.vo.PerformPlaceInfo;

@Service
public class PerformService {
	@Autowired
	private PerformMapper mapper;
	
//	public List<PerformInfo> getPerformList(PageInfo pageInfo, Map<String, String> param){
//		param.put("limit", "" + pageInfo.getListLimit());
//		param.put("offset", "" + (pageInfo.getStartList() - 1));
//		
//		return mapper.selectPerformList(param);
//	}
//	이미지 바꾸기
	public List<PerformInfo> getselectPerformCategory(PageInfo pageInfo, Map<String,String> paramMap) {
		paramMap.put("limit", "" + pageInfo.getListLimit());
		paramMap.put("offset", "" + (pageInfo.getStartList() - 1));
        return mapper.selectPerformCategory(paramMap);
    }
	
//	remake_최상단 swiper
	public List<PerformInfo> getselectPerformRemakeTop(PageInfo pageInfo, Map<String,String> paramMap) {
		return mapper.selectPerformRemakeTop(paramMap);
	}
	
//	remake 최신 리스트
	public List<PerformInfo> getselectLatestList(PageInfo pageInfo, Map<String,String> paramMap) {
		return mapper.selectLatestList(paramMap);
	}
	
//	search 리스트
	public List<PerformInfo> getPerformSearchList(PageInfo pageInfo, Map<String,String> paramMap){
		paramMap.put("limit", "" + pageInfo.getListLimit());
		paramMap.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectPerformSearchList(paramMap);
	}
	
//	search 디테일
	public PerformInfo selectPerformDetail(String no) {
		return mapper.selectPerformDetail(no);
	}
	
	
	public int getPerformCount(Map<String, String> param) {
		return mapper.selectPerformCount(param);
	}
	
	public PerformInfo findById(String id) {
		return mapper.selectPerformById(id);
	}
	
	public List<PerformPlaceInfo> getPerformPlaceList(PageInfo pageInfo, Map<String,String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectPerformPlaceList(param);
	}
	
	public int getPerformPlaceCount(Map<String, String> param) {
		return mapper.selectPerformPlaceCount(param);
	}
	
	public PerformPlaceInfo findPerformPlaceById(String id) {
		return mapper.selectPerformPlaceById(id); 
	}



}