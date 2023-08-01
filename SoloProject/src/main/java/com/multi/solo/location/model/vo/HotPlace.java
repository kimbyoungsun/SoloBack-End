package com.multi.solo.location.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HotPlace {
	private String category;
	private int no;
	private String area_cd;
	private String area_nm;
}
