package com.multi.solo.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.multi.solo.board.model.service.BoardService;
import com.multi.solo.board.model.vo.Board;
import com.multi.solo.member.model.service.MemberService;
import com.multi.solo.member.model.vo.Member;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j // log4j 선언을 대신 선언 해주는 lombok 어노테이션
@SessionAttributes("loginMember") // loginMember를 Model 취급할때 세션으로 처리하도록 도와주는 어노테이션
@Controller
public class MemberController {

	@Autowired
	private MemberService service;

	@GetMapping("/login")
	public String loginFormPage() {
		log.info("로그인 페이지 호출");
		return "member/loginForm";
	}

	@PostMapping("/login")
	public String signIn(Model model, String inputId, String inputPwd) {
		log.info("@@@Login : " + inputId + ", " + inputPwd);

		Member loginMember = service.login(inputId, inputPwd);

		// 로그인이 성공한 케이스
		if (loginMember != null) {
			model.addAttribute("loginMember", loginMember); // 세션으로 저장되는 코드, @SessionAttributes 사용
			log.info("@@@로그인 성공>> " + loginMember.toString());
			return "/community/traceProductDetail";
		} else {
			model.addAttribute("msg", "아이디와 패스워드를 확인해주세요.");
			model.addAttribute("location", "/login");
			return "/common/msg";
		}
	}

	@RequestMapping("/logout")
	public String logout(SessionStatus staus) { // staus: 세션의 상태확인 가능한 메소드
		log.info("staus : " + staus.isComplete());
		staus.setComplete(); // 세션을 종료 시키는 메소드
		log.info("staus : " + staus.isComplete());
		return "redirect:/";
	}

	@GetMapping("/enroll")
	public String enrollPage() {
		log.info("회원가입 페이지 호출");
		return "member/enroll";
	}

	/*
	 * @PostMapping(value = "/enroll") public String signUp(Model model, Member
	 * member, HttpSession session, @RequestParam("upfile") MultipartFile upfile) {
	 * log.info("회원가입 요청"); int result = 0;
	 * 
	 * if(upfile != null && upfile.isEmpty() == false) { String rootPath =
	 * session.getServletContext().getRealPath("resources"); String savePath =
	 * rootPath + "/upload/profile"; log.info("controller에서 보내는 savePath>> " +
	 * savePath); String renamedFileName = service.saveFile(upfile, savePath); // 실제
	 * 파일 저장로직
	 * 
	 * if(renamedFileName != null) { member.setReFileNm(renamedFileName);
	 * member.setOriFileNm(upfile.getOriginalFilename()); } } else {
	 * member.setReFileNm("default-avatar.png"); } log.info(member.toString());
	 * 
	 * result = service.saveMember(member);
	 * 
	 * if(result > 0) { model.addAttribute("msg", "회원가입 성공하였습니다.");
	 * model.addAttribute("location", "/"); } else { model.addAttribute("msg",
	 * "회원가입에 실패하였습니다. 입력정보를 확인해주세요."); model.addAttribute("location", "/enroll"); }
	 * 
	 * return "common/msg"; }
	 * 
	 * @RequestMapping("/member/delete") public String delete(Model model,
	 * 
	 * @SessionAttribute(name="loginMember", required = false) Member loginMember //
	 * 세션값 ) { if (loginMember == null) { model.addAttribute("msg", "잘못된 접근입니다.");
	 * model.addAttribute("loation", "/login"); return "/common/msg"; } int result =
	 * service.delete(loginMember.getMNo());
	 * 
	 * if(result > 0) { model.addAttribute("msg", "회원탈퇴에 성공하였습니다.");
	 * model.addAttribute("location", "/logout"); }else { model.addAttribute("msg",
	 * "회원탈퇴를 할수 없습니다."); model.addAttribute("location", "/MyProfile"); }
	 * 
	 * return "/common/msg"; }
	 * 
	 * 
	 * @GetMapping(value = "/MyProfile") public String profilePage(Model
	 * model, @SessionAttribute(name="loginMember", required = false) Member
	 * loginMember) { if (loginMember == null) {
	 * model.addAttribute("msg","잘못된 접근입니다."); model.addAttribute("location","/");
	 * return "common/msg"; } return "/account/AccountProfile"; }
	 * 
	 * @PostMapping(value = "/MyProfile") public String updateProfile(Model model,
	 * HttpSession session,
	 * 
	 * @RequestParam("upfile") MultipartFile upfile,
	 * 
	 * @ModelAttribute Member updateMember, // request에서 온 값
	 * 
	 * @SessionAttribute(name="loginMember", required = false) Member loginMember) {
	 * log.info("update method/prev value>> " + String.valueOf(loginMember));
	 * log.info("update method/update value>> " + String.valueOf(updateMember));
	 * 
	 * model.addAttribute("loginMember", loginMember);
	 * 
	 * if(loginMember == null || loginMember.getId().equals(updateMember.getId()) ==
	 * false) { model.addAttribute("msg","잘못된 접근입니다.");
	 * model.addAttribute("location","/"); return "common/msg"; }
	 * 
	 * if(upfile != null && upfile.isEmpty() == false) { String rootPath =
	 * session.getServletContext().getRealPath("resources"); String savePath =
	 * rootPath + "/upload/profile"; log.info("controller에서 보내는 savePath>> " +
	 * savePath); String renamedFileName = service.saveFile(upfile, savePath); // 실제
	 * 파일 저장로직
	 * 
	 * if(renamedFileName != null) { updateMember.setReFileNm(renamedFileName);
	 * updateMember.setOriFileNm(upfile.getOriginalFilename()); }
	 * log.info("파일 업로드 성공"); }
	 * 
	 * updateMember.setMNo(loginMember.getMNo()); // update가 되는 코드 int result =
	 * service.saveMember(updateMember);
	 * 
	 * if(result > 0) { loginMember = service.findById(loginMember.getId());
	 * model.addAttribute("loginMember", loginMember); // 세션을 업데이트 하는 코드
	 * model.addAttribute("msg", "회원정보를 수정하였습니다.");
	 * model.addAttribute("location","/MyProfile"); } else {
	 * model.addAttribute("msg", "회원정보 수정에 실패하였습니다.");
	 * model.addAttribute("location","/MyProfile"); }
	 * log.info("updateProfile메소드 파일 업로드 체크>> " + loginMember.toString());
	 * 
	 * return "common/msg"; }
	 * 
	 * @PostMapping("/updateId") public String updateId(Model model, String
	 * id, @SessionAttribute(name="loginMember", required = false) Member
	 * loginMember) { if(loginMember == null) {
	 * model.addAttribute("msg","잘못된 접근입니다."); model.addAttribute("location","/");
	 * return "common/msg"; } log.info(id); int result = service.updateID(id,
	 * loginMember.getMNo());
	 * 
	 * if(result > 0) { loginMember = service.findByMno(loginMember.getMNo());
	 * model.addAttribute("loginMember", loginMember); // 세션을 업데이트 하는 코드
	 * log.info("updateId>> " + loginMember.toString()); model.addAttribute("msg",
	 * "로그인 이메일이 변경되었습니다."); model.addAttribute("location","/MyProfile"); } else {
	 * model.addAttribute("msg", "이메일 변경에 실패했습니다.");
	 * model.addAttribute("location","/MyProfile"); }
	 * 
	 * return "common/msg"; }
	 * 
	 * @PostMapping(value = "/updatePwd") public String updatePwd(Model
	 * model, @RequestParam Map<String, String> param,
	 * 
	 * @SessionAttribute(name="loginMember", required = false) Member loginMember) {
	 * log.info("updatePwd>> " + param.toString());
	 * 
	 * String password = String.valueOf(param.get("curPwd")); boolean isMatchPwd =
	 * service.isMatchPwd(password, loginMember.getId()); password =
	 * param.get("password");
	 * 
	 * if(isMatchPwd) { int result = service.updatePwd(password,
	 * loginMember.getMNo()); loginMember = service.findByMno(loginMember.getMNo());
	 * model.addAttribute("loginMember", loginMember); // 세션을 업데이트 하는 코드
	 * log.info("updatePwd>> " + loginMember.toString()); model.addAttribute("msg",
	 * "비밀번호가 변경되었습니다."); model.addAttribute("location","/MyProfile"); } else {
	 * model.addAttribute("msg", "비밀번호 변경에 실패했습니다.");
	 * model.addAttribute("location","/MyProfile"); }
	 * 
	 * return "common/msg"; }
	 * 
	 * @RequestMapping(value = "/MySetting", method = RequestMethod.GET) public
	 * String setting(Locale locale, Model model) {
	 * 
	 * return "/account/AccountSetting"; }
	 * 
	 * @RequestMapping(value = "/MyWishList", method = RequestMethod.GET) public
	 * String wishList(Model model, HttpSession session) { Member loginMember =
	 * (Member) session.getAttribute("loginMember"); if (loginMember == null) {
	 * model.addAttribute("msg", "잘못된 접근입니다."); model.addAttribute("loation",
	 * "/login"); return "/common/msg"; } int mno = loginMember.getMNo();
	 * log.info("@@@@@@@ wishList - mno>> " + mno);
	 * 
	 * 
	 * List<PerformVO> performList = service.getPerformWishList(mno);
	 * 
	 * model.addAttribute("concitems", performList);
	 * 
	 * 
	 * return "/account/AccountWishlist"; }
	 * 
	 * 
	 * @RequestMapping(value = "/MyReview", method = RequestMethod.GET) public
	 * String myReview(Model model, HttpSession session) { Member loginMember =
	 * (Member) session.getAttribute("loginMember"); if (loginMember == null) {
	 * model.addAttribute("msg", "잘못된 접근입니다."); model.addAttribute("loation",
	 * "/login"); return "/common/msg"; } int mno = loginMember.getMNo();
	 * List<Board> reviews = BoardService.getReviewsByMNo(mno);
	 * 
	 * model.addAttribute("reviews", reviews);
	 * 
	 * return "/account/AccountReview"; }
	 * 
	 * @RequestMapping("/deleteAllWishlist") public String deleteAllWishlist(Model
	 * model, HttpSession session) { Member loginMember = (Member)
	 * session.getAttribute("loginMember"); if (loginMember == null) {
	 * model.addAttribute("msg", "잘못된 접근입니다."); model.addAttribute("loation",
	 * "/login"); return "/common/msg"; } int mno = loginMember.getMNo(); int result
	 * = service.deleteAllWishlist(mno);
	 * 
	 * if (result != 0) { model.addAttribute("msg", "모든 북마크가 삭제되었습니다.");
	 * model.addAttribute("location","/MyWishList"); } else {
	 * model.addAttribute("msg", "북마크 삭제에 실패했습니다.");
	 * model.addAttribute("location","/MyWishList"); }
	 * 
	 * return "common/msg"; }
	 * 
	 * 
	 * 
	 * @PostMapping("/member/update") public String update(Model model,
	 * 
	 * @ModelAttribute Member updateMember, // request에서 온 값
	 * 
	 * @SessionAttribute(name = "loginMember", required = false) Member loginMember
	 * // 세션 값 ) { log.info("update 요청, updateMember : " + updateMember);
	 * if(loginMember == null || loginMember.getId().equals(updateMember.getId()) ==
	 * false) { model.addAttribute("msg","잘못된 접근입니다.");
	 * model.addAttribute("location","/"); return "common/msg"; }
	 * 
	 * updateMember.setMNo(loginMember.getMNo()); int result =
	 * service.saveMember(updateMember);
	 * 
	 * if(result > 0) { model.addAttribute("loginMember",
	 * service.findById(loginMember.getId())); // DB에서 있는 값을 다시 세션에 넣어주는 코드
	 * model.addAttribute("msg", "회원정보를 수정하였습니다."); model.addAttribute("location",
	 * "/member/view"); }else { model.addAttribute("msg", "회원정보 수정에 실패하였습니다.");
	 * model.addAttribute("location", "/member/view"); } return "common/msg"; }
	 * 
	 * 
	 * @GetMapping("/member/view") public String memberView() {
	 * log.info("회원 정보 페이지 요청"); return "member/view"; }
	 * 
	 * @GetMapping("/member/updatePwd") public String updatePwdPage() { return
	 * "member/updatePwd"; }
	 */

}
