package cash;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import member.MemberVO;

@Repository
public class CashDAO implements CashService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public List<Cash_ingVO> cash_ing_list() {
		return sql.selectList("cash.cash_ing_list");
	}

	@Override
	public List<Cash_finalVO> cash_final_list(HashMap<String, String> temp_map) {
		return sql.selectList("cash.cash_final_list",temp_map);
	}

	@Override
	public int cash_ing_insert(String id) {
		return 0;
	}



	@Override
	public List<Cash_finalVO> cash_salary_final_list(HashMap<String, String> temp_map) {
		return sql.selectList("cash.admin_salary_list",temp_map);
	}

	@Override
	public List<Cash_finalVO> cash_tuition_final_list(HashMap<String, String> temp_map) {
		return sql.selectList("cash.admin_tuition_list",temp_map);
	}

	@Override
	public List<Cash_finalVO> cash_scholarship_final_list(HashMap<String, String> temp_map) {
		return sql.selectList("cash.admin_scholarship_list",temp_map);
	}

	@Override
	public List<Cash_infoVO> sc_list() {
		return sql.selectList("cash.cashinfo_sc_list");
	}

	@Override
	public List<Cash_infoVO> sc_list_des() {
		return sql.selectList("cash.cashinfo_sc_list_des");
	}

	@Override
	public String search_cash_code(String description) {
		return sql.selectOne("cash.get_cash_code",description);
	}

	@Override
	public String get_id(String name) {
		return sql.selectOne("cash.get_id",name);
	}

	@Override
	public int sc_insert(Cash_ingVO vo) {
		return sql.update("cash.insert_sc",vo);
	}




	
	

	
}
