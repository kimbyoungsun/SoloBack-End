package com.multi.solo.sports.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.solo.sports.model.vo.SportsFacility;
import com.multi.solo.sports.model.vo.SportsVideo;

@Mapper
public interface SportsMapper {
	List<SportsVideo> selectSportsVideoList(Map<String,String> map);
	int selectSportsVideoCount(Map<String,String> map);
	SportsVideo selectSportsVideoByNo(int no);
	List<SportsFacility> selectSportsFacilityList(Map<String, String> map);
	int selectSportsFacilityCount(Map<String,String> map);
	SportsFacility selectSportsFacilityById(String id);
}
