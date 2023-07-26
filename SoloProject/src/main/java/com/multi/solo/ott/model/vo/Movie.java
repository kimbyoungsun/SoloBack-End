package com.multi.solo.ott.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Movie {
	private String adult;
	private String backdrop_path;
	private String genre_ids;
	private String id;
	private String original_language;
	private String original_title;
	private String overview;
	private String popularity;
	private String poster_path;
	private String release_date;
	private String title;
	private String video;
	private String vote_average;
	private String vote_count;
}
