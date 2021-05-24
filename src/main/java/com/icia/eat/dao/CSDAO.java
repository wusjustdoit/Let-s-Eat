package com.icia.eat.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.eat.dto.QnADTO;

@Repository
public class CSDAO {

	
	@Autowired
	private SqlSessionTemplate sql;

	// 고객센터
	// CS01 고객센터 클릭 시 고객센터 페이지 이동 및 관련 정보 요청 및 출력
	public List<QnADTO> CS_Index(QnADTO qna) {
		return sql.selectList("CS.CS_Index", qna);
	}

	// CS03 카테고리 선택 후 검색 요청 및 처리
	public List<QnADTO> CS_SelCat(String FAQCat) {
		return sql.selectList("CS.CS_SelCat", FAQCat);
	}

	// CS05_1 등록 버튼 클릭 시 등록 요청 및 처리 후 고객센터 메인페이지로 이동(회원)
	public int CS_InquiryReg1(QnADTO qna) {
		return sql.insert("CS.CS_InquiryReg1", qna);
	}

	// CS05_2 등록 버튼 클릭 시 등록 요청 및 처리 후 고객센터 메인페이지로 이동(점주)
	public int CS_InquiryReg2(QnADTO qna) {
		return sql.insert("CS.CS_InquiryReg2", qna);
	}
	
	
	
}

