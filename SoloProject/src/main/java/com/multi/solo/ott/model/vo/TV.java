package com.multi.solo.ott.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TV {
	private String adult;
	private String backdrop_path;
	private String id;
	private String name;
	private String original_language;
	private String original_name;
	private String overview;
	private String poster_path;
	private String media_type;
	private String popularity;
	private String first_air_date;
	private String vote_average;
	private String vote_count;
}
