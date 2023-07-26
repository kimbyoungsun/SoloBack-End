package com.multi.solo.program.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.solo.program.model.vo.Program;

@Mapper
public interface ProgramMapper {
	List<Program> selectProgramList(Map<String,String> param);
	int selectProgramCount(Map<String, String> param);
	Program selectProgramByNo(int no);
}
