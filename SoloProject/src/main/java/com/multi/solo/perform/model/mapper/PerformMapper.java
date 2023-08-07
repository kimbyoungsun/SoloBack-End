package com.multi.solo.perform.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.solo.perform.model.vo.PerformInfo;
import com.multi.solo.perform.model.vo.PerformPlaceInfo;

@Mapper
public interface PerformMapper {
//	List<PerformInfo> selectPerformList(Map<String, String> param);
	List<PerformInfo> selectPerformCategory(Map<String, String> param);
	
	
	// Remake_게시판 최상단 스와이퍼
	List<PerformInfo> selectPerformRemakeTop(Map<String, String> map);
	
//	Remake_ 최신 리스트
	List<PerformInfo> selectLatestList(Map<String, String> map);
	
//	Remake 장르 
	
	int selectPerformCount(Map<String, String> map);
	
	PerformInfo selectPerformById(String id);
	
	List<PerformPlaceInfo> selectPerformPlaceList(Map<String, String> param);
	
	int selectPerformPlaceCount(Map<String, String> param);
	
	PerformPlaceInfo selectPerformPlaceById(String id);

	//search 게시판 list
	List<PerformInfo> selectPerformSearchList(Map<String, String> map);
	
	PerformInfo selectPerformDetail(String no);


	

}
