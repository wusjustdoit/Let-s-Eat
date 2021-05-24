package com.icia.eat.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.eat.dto.CompanyDTO;
import com.icia.eat.dto.MemberDTO;
import com.icia.eat.dto.QnADTO;
import com.icia.eat.dto.SA_ChartDTO;
import com.icia.eat.dto.StoreDTO;
import com.icia.eat.service.SAService;

@Controller
public class SAController {

	// Controller 전역 설정
	@Autowired
	private SAService SAsvc;

	private ModelAndView mav = new ModelAndView();

	
	// SA03 관리자 홈 버튼 클릭시 관리자 메인 페이지 이동
	@RequestMapping(value = "/sa_index")
	public ModelAndView SA_Index(@ModelAttribute SA_ChartDTO sa_chart) {
		mav = SAsvc.SA_Index(sa_chart);
		return mav;
	}
	
	
	// 회원 관리(회원)
	// SA05 회원 관리 클릭 시 회원 관리 페이지로 이동 및 관련 정보 요청 및 출력
	// SA06 회원 목록 클릭 시 회원 목록 정보 요청 및 출력
	@RequestMapping(value = "/sa_mMgt")
	public ModelAndView SA_MMgt(@RequestParam(value="page", required=false, defaultValue="1") int page) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_MMgt(page);
		return mav;
	}
	
	// SA07 탈퇴 버튼 클릭 시 해당 회원 정보 탈퇴 요청 및 처리
	// SA11 강제 탈퇴 버튼 클릭 시 해당 회원 정보 탈퇴 요청 및 처리
	@RequestMapping(value = "/sa_mDel")
	public ModelAndView SA_MDel(@RequestParam("mCode") String mCode) {
		mav = SAsvc.SA_MDel(mCode);
		return mav;
	}
	
	// SA08 회원 아이디 클릭 시 회원 상세 정보 요청 및 출력
	@RequestMapping(value = "/sa_mView")
	public ModelAndView SA_MView(@RequestParam("mCode") String mCode) {
		mav = SAsvc.SA_MView(mCode);
		return mav;
	}
	
	// SA10 수정 정보 입력 후 수정 요청 및 처리 후 회원 상세 정보 페이지 이동
	@RequestMapping(value = "/sa_mModi")
	public ModelAndView SA_MModi(@ModelAttribute MemberDTO member) {
		mav = SAsvc.SA_MModi(member);
		return mav;
	}

	// 회원 관리(점주)
	// SA12 점주 목록 클릭 시 점주 목록 정보 요청 및 출력
	@RequestMapping(value = "/sa_mMgt2")
	public ModelAndView SA_MMgt2(@RequestParam(value="page", required=false, defaultValue="1") int page) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_MMgt2(page);
		return mav;
	}
	
	// SA13 탈퇴 버튼 클릭 시 점주 정보 탈퇴 요청 및 처리
	// SA17 강제 탈퇴 버튼 클릭 시 해당 점주 정보 탈퇴 요청 및 처리
	@RequestMapping(value = "/sa_cDel")
	public ModelAndView SA_CDel(@RequestParam("cCode") String cCode) {
		mav = SAsvc.SA_CDel(cCode);
		return mav;
	}
	
	// SA14 점주 아이디 클릭 시 점주 상세 정보 요청 및 출력
	@RequestMapping(value = "/sa_cView")
	public ModelAndView SA_CView(@RequestParam("cCode") String cCode) {
		mav = SAsvc.SA_CView(cCode);
		return mav;
	}
	
	// SA16 수정 정보 입력 후 수정 요청 및 처리 후 점주 상세 정보 페이지 이동
	@RequestMapping(value = "/sa_cModi")
	public ModelAndView SA_CModi(@ModelAttribute CompanyDTO company) {
		mav = SAsvc.SA_CModi(company);
		return mav;
	}
	
	// SA18 카테고리 선택 후 검색 요청 및 처리
	@RequestMapping(value = "/sa_selCat1")
	public ModelAndView SA_SelCat1(@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam("keyword") String keyword,
			@RequestParam("selectVal") String selectVal) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_SelCat1(keyword, selectVal, page);
		return mav;
	}
	@RequestMapping(value = "/sa_selCat2")
	public ModelAndView SA_SelCat2(@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam("keyword") String keyword,
			@RequestParam("selectVal") String selectVal) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_SelCat2(keyword, selectVal, page);
		return mav;
	}
	
	// 업체 관리
	// SA19 업체 관리 버튼 클릭 시 업체 관리 페이지 이동 및 정보 처리 요청 및 출력
	@RequestMapping(value = "/sa_sMgt")
	public ModelAndView SA_SMgt(@RequestParam(value="page", required=false, defaultValue="1") int page) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_SMgt(page);
		return mav;
	}

	// SA20 이용 중지 버튼 클릭 시 이용 중지 요청 및 처리
	// SA24 이용 중지 버튼 클릭 시 해당 업체 정보 이용 중지 및 처리
	@RequestMapping(value = "/sa_sDel")
	public ModelAndView SA_SDel(@RequestParam("storeCode") String storeCode) {
		mav = SAsvc.SA_SDel(storeCode);
		return mav;
	}

	// SA21 업체명 클릭 시 업체 상세 정보 페이지 이동 및 출력
	// SA27 업체명 클릭 시 업체 상세 정보 페이지 이동 및 출력
	@RequestMapping(value = "/sa_sView")
	public ModelAndView SA_SView(@RequestParam("storeCode") String storeCode) {
		mav = SAsvc.SA_SView(storeCode);
		return mav;
	}
	
	// SA22 수정 정보 입력 후 수정 요청 및 처리 후 업체 상세 정보 페이지 이동
	@RequestMapping(value = "/sa_sModi", method = RequestMethod.POST)
	public ModelAndView SA_SModi(@ModelAttribute StoreDTO store, @RequestParam("sKeyword1") String sKeyword1,
			@RequestParam("sKeyword2") String sKeyword2, @RequestParam("sKeyword3") String sKeyword3,
			@RequestParam("sKeyword4") String sKeyword4, @RequestParam("sKeyword5") String sKeyword5)
			throws IllegalStateException, IOException {
		mav = SAsvc.SA_SModi(store, sKeyword1, sKeyword2, sKeyword3, sKeyword4, sKeyword5);
		return mav;
	}

	// SA25 카테고리 선택 후 검색 요청 및 처리
	@RequestMapping(value = "/sa_selCat3")
	public ModelAndView SA_SelCat3(@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam("keyword") String keyword,
			@RequestParam("selectVal") String selectVal) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_SelCat3(keyword, selectVal, page);
		return mav;
	}
	
	// 업체 가입 승인
	// SA26 업체 가입 승인 클릭 시 업체 가입 승인 페이지 이동 및 정보 처리 요청 및 출력
	@RequestMapping(value = "/sa_sCfmList")
	public ModelAndView SA_SCfmList(@RequestParam(value="page", required=false, defaultValue="1") int page) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_SCfmList(page);
		return mav;
	}

	// SA28 승인 버튼 클릭 시 승인 요청 및 처리
	@RequestMapping(value = "/sa_passS")
	public ModelAndView SA_PassS(@RequestParam("storeCode") String storeCode) {
		mav = SAsvc.SA_PassS(storeCode);
		return mav;
	}

	// SA29 거절 버튼 클릭 시 거절 요청 및 처리
	@RequestMapping(value = "/sa_cancelS")
	public ModelAndView SA_CancelS(@RequestParam("storeCode") String storeCode) {
		mav = SAsvc.SA_CancelS(storeCode);
		return mav;
	}
	
	
	// 리뷰 관리
	// SA30 리뷰 관리 클릭 시 리뷰 관리 페이지 이동 및 정보 요청 및 출력
	@RequestMapping(value = "/sa_reviewMgt")
	public ModelAndView SA_ReviewMgt(@RequestParam(value="page", required=false, defaultValue="1") int page) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_ReviewMgt(page);
		return mav;
	}
	
	// SA31 삭제 버튼 클릭시 해당 리뷰 삭제 요청 및 처리
	@RequestMapping(value = "/sa_reviewDel")
	public ModelAndView SA_ReviewDel(@RequestParam("rCode") String rCode) {
		mav = SAsvc.SA_ReviewDel(rCode);
		return mav;
	}
	@RequestMapping(value = "/sa_reviewDel2")
	public ModelAndView SA_ReviewDel2(@RequestParam("rCode") String rCode) {
		mav = SAsvc.SA_ReviewDel2(rCode);
		return mav;
	}

	// SA32 리뷰코드 클릭 시 해당 리뷰 상세 보기 요청 및 팝업창 출력
	@RequestMapping(value = "/sa_viewReview")
	public ModelAndView SA_ViewReview(@RequestParam("rCode") String rCode) {
		mav = SAsvc.SA_ViewReview(rCode);
		return mav;
	}

	// SA33 카테고리 선택 후 검색 요청 및 처리
	@RequestMapping(value = "/sa_selCat4")
	public ModelAndView SA_SelCat4(@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam("keyword") String keyword,
			@RequestParam("selectVal") String selectVal) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_SelCat4(keyword, selectVal,page);
		return mav;
	}
	
	// 1:1 문의 관리
	// SA34 1:1 문의 관리 클릭 시 1:1문의 페이지 이동 및 정보 요청 및 출력(회원)
	@RequestMapping(value = "/sa_inquiryList")
	public ModelAndView SA_InquiryList(@RequestParam(value="page", required=false, defaultValue="1") int page) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_InquiryList(page);
		return mav;
	}

	// SA35 보기 버튼 클릭 시 문의 내용 상세 보기 요청 및 출력(회원)
	@RequestMapping(value = "/sa_inquiryView")
	public ModelAndView SA_InquiryView(@RequestParam("mQnACode") int mQnACode) {
		mav = SAsvc.SA_InquiryView(mQnACode);
		return mav;
	}

	// SA36 답변 작성 버튼 클릭 시 작성 요청 및 처리 후 1:1 문의 관리 페이지로 이동(회원)
	@RequestMapping(value = "/sa_resInquiry")
	public ModelAndView SA_ResInquiry(@ModelAttribute QnADTO qna) {
		mav = SAsvc.SA_ResInquiry(qna);
		return mav;
	}

	// SA37 수정 버튼 클릭 시 수정 요청 및 처리 후 1:1 문의 관리 페이지로 이동(회원)
	@RequestMapping(value = "/sa_resInquiryModi")
	public ModelAndView SA_ResInquiryModi(@ModelAttribute QnADTO qna) {
		mav = SAsvc.SA_ResInquiryModi(qna);
		return mav;
	}

	// SA38 카테고리 선택 후 검색 요청 및 처리(회원)
	@RequestMapping(value = "/sa_selCat5")
	public ModelAndView SA_SelCat5(@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam("selectVal") String selectVal) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_SelCat5(selectVal, page);
		return mav;
	}
	
	// SA34 1:1문의 페이지 이동 및 정보 요청 및 출력(점주)
	@RequestMapping(value = "/sa_inquiryList2")
	public ModelAndView SA_InquiryList2(@RequestParam(value="page", required=false, defaultValue="1") int page) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_InquiryList2(page);
		return mav;
	}

	// SA35 보기 버튼 클릭 시 문의 내용 상세 보기 요청 및 출력(점주)
	@RequestMapping(value = "/sa_inquiryView2")
	public ModelAndView SA_InquiryView2(@RequestParam("cQnACode") int cQnACode) {
		mav = SAsvc.SA_InquiryView2(cQnACode);
		return mav;
	}

	// SA36 답변 작성 버튼 클릭 시 작성 요청 및 처리 후 1:1 문의 관리 페이지로 이동(점주)
	@RequestMapping(value = "/sa_resInquiry2")
	public ModelAndView SA_ResInquiry2(@ModelAttribute QnADTO qna) {
		mav = SAsvc.SA_ResInquiry2(qna);
		return mav;
	}

	// SA37 수정 버튼 클릭 시 수정 요청 및 처리 후 1:1 문의 관리 페이지로 이동(점주)
	@RequestMapping(value = "/sa_resInquiryModi2")
	public ModelAndView SA_ResInquiryModi2(@ModelAttribute QnADTO qna) {
		mav = SAsvc.SA_ResInquiryModi2(qna);
		return mav;
	}

	// SA38 카테고리 선택 후 검색 요청 및 처리(점주)
	@RequestMapping(value = "/sa_selCat6")
	public ModelAndView SA_SelCat6(@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam("selectVal") String selectVal) {
		if(page<=0) {
			page = 1;
		}
		mav = SAsvc.SA_SelCat6(selectVal, page);
		return mav;
	}
	
	// 자주 묻는 질문 작성
	// SA39 자주 묻는 질문 작성 클릭 시 작성 폼 이동
	@RequestMapping(value = "/sa_writeFAQForm")
	public String SA_WriteFAQForm() {
		return "SA_WriteFAQForm";
	}

	// SA40 등록 버튼 클릭 시 등록 요청 및 처리
	@RequestMapping(value = "/sa_writeFAQ")
	public ModelAndView SA_WriteFAQ(@ModelAttribute QnADTO qna) {
		mav = SAsvc.SA_WriteFAQ(qna);
		return mav;
	}

	// 자주 묻는 질문 관리
	// SA41 자주 묻는 질문 관리 클릭 시 자주 묻는 질문 관리 페이지 이동 및 정보 요청 및 출력
	@RequestMapping(value = "/sa_FAQList")
	public ModelAndView SA_FAQList(@ModelAttribute QnADTO qna) {
		mav = SAsvc.SA_FAQList(qna);
		return mav;
	}
	
	// SA42 삭제 버튼 클릭 시 해당 자주 묻는 질문 삭제 요청 및 처리
	// SA45 삭제 버튼 클릭 시 해당 자주 묻는 질문 삭제 요청 및 처리
	@RequestMapping(value = "/sa_FAQDel")
	public ModelAndView SA_FAQDel(@RequestParam("FAQCode") int FAQCode) {
		mav = SAsvc.SA_FAQDel(FAQCode);
		return mav;
	}
	
	// SA43 제목 클릭 시 해당 자주 묻는 질문 상세 보기 요청 및 출력
	@RequestMapping(value = "/sa_FAQView")
	public ModelAndView SA_FAQView(@RequestParam("FAQCode") int FAQCode) {
		mav = SAsvc.SA_FAQView(FAQCode);
		return mav;
	}

	// SA44 수정 버튼 클릭 시 수정 요청 및 처리 후 상세 보기 페이지로 이동
	@RequestMapping(value = "/sa_FAQModify")
	public ModelAndView SA_FAQModify(@ModelAttribute QnADTO qna) {
		mav = SAsvc.SA_FAQModify(qna);
		return mav;
	}

	// SA46 카테고리 선택 후 검색 요청 및 처리
	@RequestMapping(value = "/sa_selCat7")
	public ModelAndView SA_SelCat7(@RequestParam("FAQCat") String FAQCat) {
		mav = SAsvc.SA_SelCat7(FAQCat);
		return mav;
	}
}
