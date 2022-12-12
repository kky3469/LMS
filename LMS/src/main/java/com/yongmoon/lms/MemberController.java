package com.yongmoon.lms;

import java.lang.System.Logger;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import department.DepartmentVO;
import equipment.EquipmentDAO;
import equipment.EquipmentVO;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import common.CommonUtility;
import member.MemberDAO;
import member.MemberServiceImpl;
import member.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceImpl service;
	@Autowired
	private EquipmentDAO vo;
	@Autowired
	private MemberDAO dao;
	@Autowired
	SqlSession sql;
	@Autowired
	private CommonUtility common;

	// 학생, 교사, 교직원, 어드민 리스트 출력
	@RequestMapping("/member.list")
	public String memberlist(Model model, @RequestParam(defaultValue = "-1") int info_cd,
			@RequestParam(defaultValue = "") String  department,
			@RequestParam(defaultValue = "") String  student_name,
			@RequestParam(defaultValue = "") String  id
			
			) {
		
		HashMap<String, String> temp_map = new HashMap<String, String>();
		temp_map.put("info_cd", info_cd+"");
		temp_map.put("department", department);
		temp_map.put("student_name", student_name);
		temp_map.put("id", id);
		List<MemberVO> list = service.member_list(temp_map); // 총 멤버 리스트
		List<DepartmentVO> department_list = service.department_list();

		List<MemberVO> info_list = service.info_list();

		model.addAttribute("list", list);
		model.addAttribute("department_list", department_list);
		model.addAttribute("info_list", info_list);
		model.addAttribute("temp_map", temp_map);
		return "member/member_list";
	}

	@RequestMapping("search_name")
	public String search_name_list(String name, Model model) {
		List<MemberVO> list = service.search_name_list(name);
		model.addAttribute("list", list);

		return "member/search/search_list";
	}

	@RequestMapping("search_id")
	public String search_id_list(String id, Model model) {
		List<MemberVO> list = service.search_id_list(id);
		model.addAttribute("list", list);
		return "member/search/search_list";
	}

	// 로그인 처리
	@RequestMapping(value = "/login")
	public String Login(String id, String pw, HttpSession session) throws Exception {

		MemberVO vo = service.login_login(id, pw);

		session.setAttribute("loginInfo", vo);
		if (vo == null)
			return "mainlogin";
		else
			return "redirect:/";
	}

	// 로그아웃 처리
	@RequestMapping("/logout")
	public String logout(HttpSession session) {

		MemberVO login = (MemberVO) session.getAttribute("loginInfo");
		if (login == null)
			return "mainlogin";
		session.removeAttribute("loginInfo");

		return "mainlogin";
	}

	// 회원가입처리 요청
	@ResponseBody
	@RequestMapping(value = "/join", produces = "text/html; charset=utf-8")
	public String join(MemberVO vo, MultipartFile file, HttpServletRequest request) {
		if (!file.isEmpty()) {
			// 서버에 첨부파일을 저장한다: 파일업로드
			vo.setProfile(common.fileUpload("profile", file, request));
		}

		StringBuffer msg = new StringBuffer("<script>");
		if (service.member_join(vo) == 1) {
			msg.append("alert('등록되었습니다.^^'); location='").append(request.getContextPath()).append("'");
		} else {
			msg.append("alert('가입에 실패했습니다ㅠㅠ'); history.go(-1);");
		}
		msg.append("</script>");

		// 응답화면연결
		return msg.toString();
	}

	// 회원가입화면 요청
	@RequestMapping("/member")
	public String member(HttpSession session) {
		session.setAttribute("category", "join");
		// 응답화면연결
		return "member/join";
	}

	// 아이디 중복확인처리 요청
	@ResponseBody
	@RequestMapping("/id_check")
	public boolean id_check(String id) {
		// 아이디가 DB에 존재하는지 확인한 후: 1:사용불가(false), 0:사용가능(true)
		// true/false 로 반환
		return service.member_id_check(id) == 1 ? false : true;
	}

	// 비품 리스트
	@RequestMapping("/eqlist")
	public String equipment_list(Model model) {
		List<EquipmentVO> list = vo.list();
		model.addAttribute("list", list);
		return "equipment/equipment_list";
	}

	// 비품 이름으로 검색 리스트
	@RequestMapping("/eqnamelist")
	public String equipment_search_name_list(Model model, String name) {
		List<EquipmentVO> list = vo.search_name_list(name);
		model.addAttribute("list", list);
		return "equipment/search/search_list";
	}

	// 비품 추가 화면 요청
	@RequestMapping("/eqadd")
	public String equipment_add() {
		return "equipment/equiment_add";
	}

	// 비품 추가
	@RequestMapping("/eqinsert")
	public String eqinsert(EquipmentVO eqvo, HttpServletRequest req) {
		vo.eqinsert(eqvo);
		return "redirect:eqlist";
	}

	// 비품 수정 요청
	@RequestMapping("/eqmodify")
	public String eqmodify(@RequestParam(name = "mequipment") String equipment,
			@RequestParam(name = "mequipment_num") String equipment_num,
			@RequestParam(name = "msituation") String situation, String origineq,
			@RequestParam(name = "mprice") String price, Model model, @RequestParam(name = "mbuy_day") String buy_day) {
		EquipmentVO eqvo = new EquipmentVO();
		eqvo.setEquipment(equipment);
		eqvo.setEquipment_num(Integer.parseInt(equipment_num));
		eqvo.setSituation(situation);
		eqvo.setBuy_day(Date.valueOf(buy_day));
		eqvo.setPrice(Integer.parseInt(price));
		vo.eqmodify(eqvo);

		return "redirect:eqlist";
	}

	// 비품 삭제
	@RequestMapping("/eqdelete")
	public String eqdelete(@RequestParam(name = "mequipment") String equipment) {
		vo.eqdelete(equipment);
		return "redirect:eqlist";
	}

	//////////////////////////// 안드로이드///////////////////////////////////////

	@ResponseBody
	@RequestMapping("/andLogin")
	public String login(String id, String pw) {

		MemberVO vo = service.and_login(id);

		// if( vo!= null ) {
		// if (vo.getPw().equals(pw)) {
		// return new Gson().toJson(vo);
		// } else {
		// return "다시 입력";
		// }
		// }else {

		if (vo.getPw().equals(pw)) {
			return new Gson().toJson(vo);

		} else {
			return "다시 입력";
		}
	}

	@RequestMapping("/eqmodifyScreen")
	public String eqmodifyScreen(Model model, String equipment) {

		return "equipment/equiment_modify";
	}

	@RequestMapping(value = "/myinfo")
	public String myinfo(HttpSession session, Model model) {

		MemberVO temp_vo = (MemberVO) session.getAttribute("loginInfo");
		MemberVO vo = dao.viewMember(temp_vo.getId());
		model.addAttribute("vo", vo);

		if (temp_vo.getInfo_cd() == 1) {

			return "member/myinfo";
		} else {
			return "member/myinfo";
		}
	}
	
	
	@RequestMapping(value="/chainfo", produces = "text/html;charset=utf-8") 
	public String update(HttpSession session, Model model) {
		MemberVO temp_vo = (MemberVO) session.getAttribute("loginInfo");
		MemberVO vo = dao.viewMember(temp_vo.getId());
		model.addAttribute("vo", vo);
		
		if (temp_vo.getInfo_cd() == 1) {
		return "member/chamyinfo";
	} else {
		return "member/chamyinfo";
	}
	}
	
	@RequestMapping("/updateinfo")
	public String update(MemberVO vo1, HttpSession session) {
		service.member_update(vo1);

		
		return "redirect:myinfo";
	}
	
	
	
	
	
	@RequestMapping(value = "/about")
	public String about(HttpSession session, Model model) {
		
		
			return "about";
		
	}

	
	@RequestMapping(value = "/welcome")
	public String welcome(HttpSession session, Model model) {

		
			return "welcome";
		
	}

}
