package com.multi.solo.perform.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.solo.perform.model.vo.PerformInfo;
import com.multi.solo.perform.model.vo.PerformPlaceInfo;

@Mapper
public interface PerformMapper {
	List<PerformInfo> selectPerformList(Map<String, String> param);
	int selectPerformCount(Map<String, String> param);
	PerformInfo selectPerformById(String id);
	List<PerformPlaceInfo> selectPerformPlaceList(Map<String, String> param);
	int selectPerformPlaceCount(Map<String, String> param);
	PerformPlaceInfo selectPerformPlaceById(String id);
	
}
