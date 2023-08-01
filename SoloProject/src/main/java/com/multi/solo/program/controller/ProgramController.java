package com.multi.solo.program.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.solo.common.util.PageInfo;
import com.multi.solo.perform.model.service.PerformService;
import com.multi.solo.perform.model.vo.PerformInfo;
import com.multi.solo.program.model.service.ProgramService;
import com.multi.solo.program.model.vo.Program;

@Controller
@RequestMapping("/program")
public class ProgramController {

	@Autowired
	private ProgramService service;
	
	@Autowired
	private PerformService pService;
	@GetMapping("ProgramMain")
	public String ProgramMain(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		try {
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		int programCount = service.getProgramCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, programCount, 9);
		List<Program> list = service.getProgramList(pageInfo, param);
		
		model.addAttribute("list",list);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("param",param);
		return "etc/ProgramMain";
	}
	
	@GetMapping("ProgramDetail")
	public String ProgramDetail(Model model, @RequestParam Map<String, String> param) {
		Program list = service.findByNo(Integer.parseInt(param.get("pNo")));
		
		model.addAttribute("list",list);
		model.addAttribute("param",param);
		
		return "etc/ProgramDetail";
	}
}
