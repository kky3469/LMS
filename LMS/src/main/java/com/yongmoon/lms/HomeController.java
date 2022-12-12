package com.yongmoon.lms;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import board.BoardPageVO;
import board.BoardServiceImpl;
import common.CommonUtility;
import member.MemberVO;
import notice.NoticeDAO;
import notice.NoticePageVO;
import notice.NoticeServiceImpl;


@Controller
public class HomeController {
	@Autowired private NoticeServiceImpl NoticeService;
	@Autowired NoticePageVO NoPage;
	@Autowired private BoardServiceImpl BoardService;
	@Autowired BoardPageVO BoPage;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session, Model model) {
		MemberVO vo =(MemberVO) session.getAttribute("loginInfo");
		NoPage.setCurPage(1);
		BoPage.setCurPage(1);
		
		if(vo == null)
			return "mainlogin";
		else
			model.addAttribute("notice", NoticeService.notice_list(NoPage) );
			model.addAttribute("board", BoardService.board_list(BoPage) );
			return "index";
	}
	
	@RequestMapping(value = "/index")
	public String Login(HttpSession session) throws Exception {
		MemberVO vo =(MemberVO) session.getAttribute("loginInfo");
		if(vo == null)
			return "mainlogin";
		else
			return "index";
	}
	
	@RequestMapping("/welcom")
	public String welcome() {
		
		return "introduction/introduction";
	}

	@RequestMapping("/team")
	public String team() {
		
		return "teampage";
	}
	
	
}
