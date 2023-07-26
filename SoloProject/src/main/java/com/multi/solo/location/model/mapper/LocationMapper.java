package com.multi.solo.location.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.solo.location.model.vo.RentalHouse;
import com.multi.solo.location.model.vo.Restaurant;

@Mapper
public interface LocationMapper {
	List<Restaurant> selectRestaurantList(Map<String, String> param);
	int selectRestaruntCount(Map<String,String> param);
	Restaurant selectRestaruntById(String id);
	List<RentalHouse> selectRentalHouseList(Map<String,String> param);	
	int selectRentalHouseCount(Map<String, String> param);
}

