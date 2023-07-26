package com.multi.solo.program.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.solo.common.util.PageInfo;
import com.multi.solo.program.model.mapper.ProgramMapper;
import com.multi.solo.program.model.vo.Program;

@Service
public class ProgramService {
	@Autowired
	private ProgramMapper mapper;
	
	public List<Program> getProgramList(PageInfo pageInfo, Map<String,String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectProgramList(param);
	}
	
	public int getProgramCount(Map<String, String> param) {
		return mapper.selectProgramCount(param);
	}
	
	public Program findByNo(int no) {
		return mapper.selectProgramByNo(no);
	}
}
