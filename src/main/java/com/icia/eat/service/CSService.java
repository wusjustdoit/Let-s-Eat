package com.icia.eat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.eat.dao.CSDAO;
import com.icia.eat.dto.QnADTO;

@Service
public class CSService {

	@Autowired
	private CSDAO dao;
	
	private ModelAndView mav = new ModelAndView();

	
	
	// 고객센터
	// CS01 고객센터 클릭 시 고객센터 페이지 이동 및 관련 정보 요청 및 출력
	public ModelAndView CS_Index(QnADTO qna) {
		
		List<QnADTO> CS_Index = dao.CS_Index(qna);
		
		mav.addObject("CSList", CS_Index);
		mav.setViewName("CS_index");
		
		return mav;
	}

	// CS03 카테고리 선택 후 검색 요청 및 처리
	public ModelAndView CS_SelCat(String FAQCat) {
		
		List<QnADTO> CS_SelCat = dao.CS_SelCat(FAQCat);
		
		mav.addObject("FAQCat", FAQCat);
		mav.addObject("CSList", CS_SelCat);
		mav.setViewName("CS_index");
		
		return mav;
	}

	// CS05_1 등록 버튼 클릭 시 등록 요청 및 처리 후 고객센터 메인페이지로 이동(회원)
	public ModelAndView CS_InquiryReg1(QnADTO qna) {
		
		int result = dao.CS_InquiryReg1(qna);
		
		if (result > 0) {
			mav.setViewName("CS_index");
		} else {
			mav.setViewName("CS_index");
		}
		
		return mav;
	}

	// CS05_2 등록 버튼 클릭 시 등록 요청 및 처리 후 고객센터 메인페이지로 이동(점주)
	public ModelAndView CS_InquiryReg2(QnADTO qna) {
		
		int result = dao.CS_InquiryReg2(qna);
		
		if (result > 0) {
			mav.setViewName("CS_index");
		} else {
			mav.setViewName("CS_index");
		}
		
		return mav;
	}
	
	
}



