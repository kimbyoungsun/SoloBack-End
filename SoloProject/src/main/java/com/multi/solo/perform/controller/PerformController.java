package com.multi.solo.perform.controller;

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

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/perform") // 요청 url의 상위 url을 모두 처리할때 사용
@Controller
public class PerformController {


    @Autowired
    private PerformService service;
    

    @GetMapping("/Perform_remake")
    public String list(Model model, @RequestParam Map<String, String> paramMap) {
    	System.out.println(paramMap.get("category"));
    	if(paramMap.get("category") == null) {
    		paramMap.put("category", "콘서트");
    	}
    	if(paramMap.get("region") == "null") {
    		paramMap.put("region", "서울");
    	}
    	
    	
    	
        int PerformSearchCount = service.getPerformCount(paramMap);
//      장르 리스트
        List<PerformInfo> performList = service.getselectPerformCategory(new PageInfo(1, 10, PerformSearchCount, 6), paramMap);
        
//      지역 리스트
        List<PerformInfo> regionList = service.getPerformSearchList(new PageInfo(1, 10, PerformSearchCount, 6), paramMap);
        
//      최신 리스트
        PageInfo pageInfo = new PageInfo(1, 10, PerformSearchCount, 3); // 게시글이 보여지는 갯수 = 10
        List<PerformInfo> list = service.getselectLatestList(pageInfo, paramMap);
        
//      스와이퍼 리스트
        List<PerformInfo> swiperList = service.getselectPerformRemakeTop(new PageInfo(1, 10, PerformSearchCount, 10), paramMap);
        
        model.addAttribute("performList", performList);	
        model.addAttribute("swiperList",swiperList);
        model.addAttribute("list", list);
        model.addAttribute("regionList", regionList);
//        System.out.println("공연 리스트 : " + performList);
//        System.out.println("스와이퍼 리스트 : " + swiperList);
        System.out.println("지역 리스트 : " + regionList);
//        System.out.println("최신 리스트 : " + list);
        return "perform/Perform_remake"; 
    }
    
    @GetMapping("/Perform_search")
    public String PerformSearch(Model model, @RequestParam Map<String, String> paramMap) {
    	System.out.println(paramMap);
    	System.out.println(paramMap.get("search"));
    	
    	int page = 1;
		try {
			if(paramMap.get("search") != null) {
				paramMap.put((String) paramMap.get("search"), paramMap.get("searchValue"));
			}
			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
			page = Integer.parseInt((String) paramMap.get("page"));
		} catch (Exception e) {}
		
		int PerformSearchCount = service.getPerformCount(paramMap);
//		PageInfo pageInfo = new PageInfo(page, 10, boardCount, 15); // 게시글이 보여지는 갯수 = 15
		PageInfo pageInfo = new PageInfo(page, 10, PerformSearchCount, 10); // 게시글이 보여지는 갯수 = 10
		List<PerformInfo> list = service.getPerformSearchList(pageInfo, paramMap);
		
		model.addAttribute("list", list);
		model.addAttribute("pageInfo", pageInfo);
    	model.addAttribute("paramMap", paramMap);
    	return "perform/Perform_search";
    }
    
    @GetMapping("Perform_detail")
    public String PerformDetail(Model model, String no) {
    	System.out.println(no);
    	
    	PerformInfo info = service.selectPerformDetail(no);
    	System.out.println("공연정보 : "  + info);
    	
    	model.addAttribute("info", info);
    	
    	return "perform/Perform_detail";
    }
   
    


//	
//	@GetMapping("/Perform_search")
//	public String list(Model model, @RequestParam Map<String, String> paramMap) {
//		int page = 1;
//
//		// 탐색할 맵을 선언
//		Map<String, String> searchMap = new HashMap<String, String>();
//		try {
//			String searchValue = paramMap.get("String, String");
//			if(searchValue != null && searchValue.length() > 0) {
//				String searchType = paramMap.get("searchType");
//				searchMap.put(searchType, searchValue);
//			}else {
//				paramMap.put("searchType", "all");
//			}
//			page = Integer.parseInt(paramMap.get("page"));
//		} catch (Exception e) {}
//		
//		int PerformCount = service.getPerformCount(searchMapW);
//		PageInfo pageInfo = new PageInfo(page, 10, PerformCount, 10);
//		List<PerformInfo> list = service.getPerformList(pageInfo, searchMap);
//		
//		model.addAttribute("list", list);
//		model.addAttribute("paramMap", paramMap);
//		model.addAttribute("pageInfo", pageInfo);
//		return "perform/Perform_search";
//	}
//	
////	@RequestMapping("/board/view")
//	@RequestMapping("/view")
//	public String view(Model model, @RequestParam("no") int no) {
//		Board board = service.findByNo(no);
//		if(board == null) {
//			return "redirect:error";
//		}
//		
//		model.addAttribute("board", board);
//		model.addAttribute("replyList", board.getReplyList());
//		return "board/view";
//	}
//	
//	
//	@GetMapping("/error")
//	public String error() {
//		return "common/error";
//	}
//	
//	@GetMapping("/write")
//	public String writeView() {
//		return "board/write";
//	}
//	
//	@PostMapping("/write")
//	public String writeBoard(Model model, HttpSession session,
//			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
//			@ModelAttribute Board board,
//			@RequestParam("upfile") MultipartFile upfile
//			) {
//		log.info("게시글 작성 요청");
//		
//		board.setMNo(loginMember.getMNo());
//		
//		// 파일 저장 로직
//		if(upfile != null && upfile.isEmpty() == false) {
//			String renameFileName = service.saveFile(upfile, savePath); 
//			
//			if(renameFileName != null) {
//				board.setOriginalFileName(upfile.getOriginalFilename());
//				board.setRenamedFileName(renameFileName);
//			}
//		}
//		
//		log.debug("board : " + board);
//		int result = service.saveBoard(board);
//
//		if(result > 0) {
//			model.addAttribute("msg", "게시글이 등록 되었습니다.");
//			model.addAttribute("location", "/board/list");
//		}else {
//			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
//			model.addAttribute("location", "/board/list");
//		}
//		
//		return "common/msg";
//	}
//	
//	
//	@RequestMapping("/reply")
//	public String writeReply(Model model, 
//			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
//			@ModelAttribute Reply reply
//			) {
//		reply.setMNo(loginMember.getMNo());
//		log.info("리플 작성 요청 Reply : " + reply);
//		
//		int result = service.saveReply(reply);
//		
//		if(result > 0) {
//			model.addAttribute("msg", "리플이 등록되었습니다.");
//		}else {
//			model.addAttribute("msg", "리플 등록에 실패하였습니다.");
//		}
//		model.addAttribute("location", "/board/view?no="+reply.getBNo());
//		return "common/msg";
//	}
//	
//	@RequestMapping("/delete")
//	public String deleteBoard(Model model,  HttpSession session,
//			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
//			int boardNo
//			) {
//		log.info("게시글 삭제 요청 boardNo : " + boardNo);
//		int result = service.deleteBoard(boardNo, savePath);
//		
//		if(result > 0) {
//			model.addAttribute("msg", "게시글 삭제가 정상적으로 완료되었습니다.");
//		}else {
//			model.addAttribute("msg", "게시글 삭제에 실패하였습니다.");
//		}
//		model.addAttribute("location", "/board/list");
//		return "common/msg";
//	}
//	
//	@RequestMapping("/replyDel")
//	public String deleteReply(Model model, 
//			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
//			int replyNo, int boardNo
//			){
//		log.info("리플 삭제 요청");
//		int result = service.deleteReply(replyNo);
//		
//		if(result > 0) {
//			model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
//		}else {
//			model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
//		}
//		model.addAttribute("location", "/board/view?no=" + boardNo);
//		return "/common/msg";
//	}
//	
//	// http://localhost/mvc/board/update?no=27
//	@GetMapping("/update")
//	public String updateView(Model model,
//			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
//			@RequestParam("no") int no
//			) {
//		Board board = service.findByNo(no);
//		model.addAttribute("board",board);
//		return "board/update";
//	}
//	
//
//	@PostMapping("/update")
//	public String updateBoard(Model model, HttpSession session,
//			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
//			@ModelAttribute Board board,
//			@RequestParam("reloadFile") MultipartFile reloadFile
//			) {
//		log.info("게시글 수정 요청");
//		
//		board.setMNo(loginMember.getMNo());
//		
//		// 파일 저장 로직
//		if(reloadFile != null && reloadFile.isEmpty() == false) {
//			// 기존 파일이 있는 경우 삭제
//			if(board.getRenamedFileName() != null) {
//				service.deleteFile(savePath + "/" +board.getRenamedFileName());
//			}
//			
//			String renameFileName = service.saveFile(reloadFile, savePath); // 실제 파일 저장하는 로직
//			
//			if(renameFileName != null) {
//				board.setOriginalFileName(reloadFile.getOriginalFilename());
//				board.setRenamedFileName(renameFileName);
//			}
//		}
//		
//		log.debug("board : " + board);
//		int result = service.saveBoard(board);
//
//		if(result > 0) {
//			model.addAttribute("msg", "게시글이 수정 되었습니다.");
//			model.addAttribute("location", "/board/list");
//		}else {
//			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
//			model.addAttribute("location", "/board/list");
//		}
//		
//		return "common/msg";
//	}
//	
//	@GetMapping("/file/{fileName}")
//	@ResponseBody
//	public Resource downloadImage(@PathVariable("fileName") String fileName, Model model) throws IOException {
//		return new UrlResource("file:" + savePath + fileName);
//	}
//	
//	@RequestMapping("/fileDown")
//	public ResponseEntity<Resource> fileDown(@RequestParam("oriname") String oriname,
//			@RequestParam("rename") String rename, @RequestHeader(name = "user-agent") String userAgent) {
//		try {
//			Resource resource = new UrlResource("file:" + savePath + rename + "");
//			String downName = null;
//
//			// 인터넷 익스플로러 인 경우
//			boolean isMSIE = userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1;
//
//			if (isMSIE) { // 익스플로러 처리하는 방법
//				downName = URLEncoder.encode(oriname, "UTF-8").replaceAll("\\+", "%20");
//			} else {
//				downName = new String(oriname.getBytes("UTF-8"), "ISO-8859-1"); // 크롬
//			}
//			return ResponseEntity.ok()
//					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\"" + downName + "\"")
//					.header(HttpHeaders.CONTENT_LENGTH, String.valueOf(resource.contentLength()))
//					.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM.toString()).body(resource);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 실패했을 경우
//	}


}

