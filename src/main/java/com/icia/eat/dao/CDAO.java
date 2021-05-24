package com.icia.eat.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.eat.dto.CompanyDTO;
import com.icia.eat.dto.QnADTO;
import com.icia.eat.dto.Review_SaveDTO;
import com.icia.eat.dto.StoreDTO;


@Repository
public class CDAO {

	
	@Autowired
	private SqlSessionTemplate sql;
	
	
	// 점주 로그인
	   public CompanyDTO clogin(String cId) {
	      return sql.selectOne("Company.clogin", cId);
	   }
	//업체 등록
	public int cupdate(StoreDTO store) {
		System.out.println("store : " + store);
		return sql.update("Company.cupdate", store);
	}

	//업체 리스트
	public List<StoreDTO> mgstore(String scCode) {
		return sql.selectList("Company.mgstore", scCode);
	}

	// 업체 상세보기1(회원,점주)
	public StoreDTO sView(String storeCode) {
		return sql.selectOne("Company.sView",storeCode);
	}

	// 업체 상세보기2(회원) 별점 평균을 위한 sql
	public Review_SaveDTO resaView(String storeCode) {
		return sql.selectOne("Company.resaView", storeCode);
	}

	// 업체 상세보기3(회원) 해당업체의 찜여부를 판별하기위한 sql
	public Review_SaveDTO resaView1(String storeCode, String mCode) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mCode", mCode);
		map.put("storeCode", storeCode);
		
		return sql.selectOne("Company.resaView1", map);
	}
	
	//점주 가입
		public int join(CompanyDTO Company) {
			return sql.insert("Company.cInsert",Company);
		}
		// 점주 정보 보기
		public CompanyDTO cview(String cId) {
			return sql.selectOne("Company.cview",cId);
		}
		// id Over lap
		public String cidOverlap(String cId) {
			return sql.selectOne("Company.cidOverlap", cId);
		}
		// 점주 정보 수정
		public int cModify(CompanyDTO Company) {
			return sql.update("Company.cModify", Company);
		}
		// 점주 탈퇴
		public int cDel(String cId) {
			return sql.update("Company.cDel", cId);
		}
		//이메일 인증 후 ckeyalter
		public int ckeyAlter(CompanyDTO company) {
			return sql.update("Company.ckAlter", company);
		}
		
		// 아이디 찾기
		public String CheckcId(String cName, String cPhone) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("cName", cName);
			map.put("cPhone", cPhone);
			System.out.println("cName , cPhone : " + cName + cPhone);
			return sql.selectOne("Company.cidcheck", map);
		}
		//점주 비밀번호 변경
		public int cChange(CompanyDTO company) {
			return sql.update("Company.cPwChange", company);
		}
		
		// 나의 문의 현황 (점주)
		public List<QnADTO> C_myQnAList(String cQnAcId) {
			
			return sql.selectList("Company.C_myQnAList", cQnAcId);
		}
		//업체 정보 수정
		public int sModify(StoreDTO store) {
			return sql.update("Company.sModify", store);
		}
		//업체 삭제
		public int sDel(String storeCode) {
			return sql.update("Company.sDel", storeCode);
		}
		// 암호화된 로그인 하기 (암호화된 비밀번호를 가져오기 위함)
		public String EncPw(String cId) {
			
			return sql.selectOne("Company.EncPw", cId);
		}

}
