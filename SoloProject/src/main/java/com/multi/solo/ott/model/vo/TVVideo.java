package com.multi.solo.ott.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TVVideo {
	private String mId;
	private String iso_639_1;
	private String iso_3166_1;
	private String name;
	private String key;
	private String site;
	private String size;
	private String type;
	private String official;
	private String published_at;
	private String id;
}
