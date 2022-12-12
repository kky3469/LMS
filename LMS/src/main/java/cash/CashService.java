package cash;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import member.MemberVO;

public interface CashService {
	
	// Cash ing list
	List<Cash_ingVO> cash_ing_list();
	
	
	//+++++++++++++ADMIN 입장에서의 CASH++++++++++++++++//
	
	//final 전체 list --  //ID 6 자리 학생 | Id 2로 시작 5자리 직원 | ID 1로 시작 5자리 교수 | //
	List<Cash_finalVO> cash_final_list(HashMap<String, String> temp_map);
	//월급 지급
	int cash_ing_insert (String id);
	
	//final salary list admi
	List<Cash_finalVO> cash_salary_final_list(HashMap<String, String> temp_map);
	
	//final 등록금 리스트
	List<Cash_finalVO> cash_tuition_final_list(HashMap<String, String> temp_map);
	
	//final 장학금 리스트
	List<Cash_finalVO> cash_scholarship_final_list(HashMap<String, String> temp_map);
	//교수 화면에 목록 출력 
	//직원 화면에 목록 출력 
	
	//info 장학정보 리스트
	List<Cash_infoVO> sc_list ();
	
	//info 장학세부 내용 리스트
	List<Cash_infoVO> sc_list_des();
	
	//장학정보로 cash_code얻기
	String search_cash_code(String description);
	
	//이름으로 id가져오기
	String get_id(String name);
	
	//장학금 insert
	int sc_insert(Cash_ingVO vo);
}
