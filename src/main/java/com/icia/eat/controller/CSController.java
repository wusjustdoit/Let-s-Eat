package com.icia.eat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.eat.dto.QnADTO;
import com.icia.eat.service.CSService;

@Controller
public class CSController {

		// Controller 전역 설정
		@Autowired
		private CSService CSsvc;

		private ModelAndView mav = new ModelAndView();
		
		QnADTO qna = new QnADTO();
		

		// 고객센터
		// CS01 고객센터 클릭 시 고객센터 페이지 이동 및 관련 정보 요청 및 출력
		@RequestMapping(value = "cs_Index")
		public ModelAndView CS_Index(@ModelAttribute QnADTO qna) {
			
			mav = CSsvc.CS_Index(qna);
			return mav;
		}
		// CS03 카테고리 선택 후 검색 요청 및 처리
		@RequestMapping(value = "cs_selCat")
		public ModelAndView CS_SelCat(@RequestParam("FAQCat") String FAQCat) {
			
			mav = CSsvc.CS_SelCat(FAQCat);
			return mav;
		}

		// CS04 1:1문의 클릭 시 1:1 문의 작성폼 이동
		@RequestMapping(value = "cs_inquiry")
		public String CS_Inquiry() {
			
			return "CS_Inquiry";
		}

		// CS05 등록 버튼 클릭 시 등록 요청 및 처리 후 고객센터 메인페이지로 이동
		@RequestMapping(value = "cs_inquiryReg")
		public ModelAndView CS_InquiryReg(@RequestParam("mc") int mc, @RequestParam("mQnACat") String mQnACat, 
										  @RequestParam("mQnAmId") String mQnAmId,@RequestParam("mQnAcId") String mQnAcId,
										  @RequestParam("mQnATitle") String mQnATitle, @RequestParam("mQnAContents") String mQnAContents) 
										 {
			
			// mc값에 따른 판단 후 FAQ 등록
			// mc>=1 : 회원 / else : 점주
			if(mc>=1) {
				QnADTO qna = new QnADTO();
				qna.setmQnACat(mQnACat);
				qna.setmQnAmId(mQnAmId);
				qna.setmQnATitle(mQnATitle);
				qna.setmQnAContents(mQnAContents);
				mav = CSsvc.CS_InquiryReg1(qna);
				
			} else {
				QnADTO qna = new QnADTO();
				qna.setcQnACat(mQnACat);
				qna.setcQnAcId(mQnAcId);
				qna.setcQnATitle(mQnATitle);
				qna.setcQnAContents(mQnAContents);
				mav = CSsvc.CS_InquiryReg2(qna);
			}
			return mav;
			
		}
		
	
}

