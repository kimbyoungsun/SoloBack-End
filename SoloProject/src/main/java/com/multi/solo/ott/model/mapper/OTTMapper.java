package com.multi.solo.ott.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.solo.ott.model.vo.Movie;
import com.multi.solo.ott.model.vo.MovieCredit;
import com.multi.solo.ott.model.vo.MovieVideo;
import com.multi.solo.ott.model.vo.TV;
import com.multi.solo.ott.model.vo.TVCredit;
import com.multi.solo.ott.model.vo.TVVideo;

@Mapper
public interface OTTMapper {
	List<Movie> selectMovieList(Map<String, String> map);
	int selectMovieCount(Map<String, String> map);
	Movie selectMovieById(String id);
	List<MovieVideo> selectMovieVideo(String id);
	List<MovieCredit> selectMovieCredit(String id);
	List<TV> selectTVList(Map<String, String> map);
	int selectTVCount(Map<String,String> map);
	TV selectTVById(String id);
	List<TVVideo> selectVideoByTV(String id);
	List<TVCredit> selectCreditByTV(String id);
}
