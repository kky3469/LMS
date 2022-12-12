package com.yongmoon.lms;


import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cash.CashServiceImpl;
import cash.Cash_FilterVO;
import cash.Cash_finalVO;
import cash.Cash_infoVO;
import cash.Cash_ingVO;
import department.DepartmentVO;
import member.MemberDAO;
import member.MemberServiceImpl;
import member.MemberVO;

@Controller
public class CashController {
	@Autowired
	private MemberServiceImpl mService;
	@Autowired private CashServiceImpl service;
	@Autowired private MemberDAO md;
	
	
	@RequestMapping("/cash.ing")
	public String list(Model model
			, @RequestParam(defaultValue = "all") String category 
			, @RequestParam(defaultValue = "") String cash_year 
			, @RequestParam(defaultValue = "") String cash_month 
			, @RequestParam(defaultValue = "") String id 
			, @RequestParam(defaultValue = "") String name 
			, @RequestParam(defaultValue = "") String info_cd 
			, @RequestParam(defaultValue = "") String department 
			, @RequestParam(defaultValue = "") String cash_code 
			
			
			) {
		List<Cash_finalVO> list = null;
		HashMap<String, String> temp_map = new HashMap<String, String>();
		temp_map.put("cash_year", cash_year);
		temp_map.put("cash_month", cash_month);
		temp_map.put("id", id);
		temp_map.put("name", name);
		temp_map.put("info_cd", info_cd);
		temp_map.put("department", department);
		temp_map.put("cash_code", cash_code);
		temp_map.put("category", category);
		List<MemberVO> info_list = mService.info_list();
		
		
		
		if(category.equals("all")) {
			list = service.cash_final_list(temp_map);
		}else if(category.equals("salary")) {
			list=service.cash_salary_final_list(temp_map);
		}else if(category.equals("tuition")) {
			list = service.cash_tuition_final_list(temp_map);
		}else if(category.equals("scholarship")) {
			list =service.cash_scholarship_final_list(temp_map);
		}
		
			
			
			
			List<DepartmentVO> department_list = md.department_list();
			model.addAttribute("list",list);
			model.addAttribute("department_list",department_list);
			model.addAttribute("category",category);
			model.addAttribute("temp_map",temp_map);
			model.addAttribute("info_list",info_list);
		//}else if (category.equals("salary")) {
		//}
			
			List<Cash_infoVO> sc_list = service.sc_list();			//장학 정보
			List<Cash_infoVO> sc_list2 = service.sc_list_des();	//장학세부내용 정보
			model.addAttribute("sc_list",sc_list);
			model.addAttribute("sc_list2",sc_list2);
			
			
		return "cash/cashing";
	}
	
	@RequestMapping("/sc.add")
	public String acadd(String department_name, String name,
			String cash_name ,
			 String description
			) {
		//departmnet_name(학과) , name(이름), cash_name(교내장학금~교외~), description(장학금세부정보) 가져왔음.
		Cash_ingVO vo = new Cash_ingVO();
		String cash_code = service.search_cash_code(description);	//장학정보로 cash code 얻기
		String id = service.get_id(name);		//캐쉬네임으로 id얻기
		
		
		vo.setCash_code(Integer.parseInt(cash_code));
		vo.setCash_name(cash_name);
		vo.setId(id);
		vo.setPrice(300000);
		vo.setDescription(description);
		vo.setTax("0.033");
		
		service.sc_insert(vo);
		
		//return "redirect:cash.ing";
		return "redirect:cash.ing?category=scholarship";
	}
	
	
	
	
	

}
