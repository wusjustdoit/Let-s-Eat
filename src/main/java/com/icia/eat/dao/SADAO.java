package com.icia.eat.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.eat.dto.CompanyDTO;
import com.icia.eat.dto.MemberDTO;
import com.icia.eat.dto.PageDTO;
import com.icia.eat.dto.QnADTO;
import com.icia.eat.dto.Review_SaveDTO;
import com.icia.eat.dto.SA_ChartDTO;
import com.icia.eat.dto.StoreDTO;

@Repository
public class SADAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	// 로그인
	// (임시)SA02 정보 입력 후 로그인 요청 및 처리 후 관리자 메인 페이지 이동
	public String C_Login(CompanyDTO company) {
		return sql.selectOne("Company.C_Login", company);
	}
	
	// SA03 관리자 홈 버튼 클릭시 관리자 메인 페이지 이동
	// 정보 요청 목록 나열
		// 회원 수 추이(회원, 최대 10일)
		public SA_ChartDTO memberSumDateNum(SA_ChartDTO sa_chart) {
			return sql.selectOne("SA.memberSumDateNum");
		}

		// 회원 수 추이(점주, 최대 10일)
		public SA_ChartDTO cmemberSumDateNum(SA_ChartDTO sa_chart) {
			return sql.selectOne("SA.cmemberSumDateNum");
		}
	
		// 업체 수 추이(최대 10일)
		public SA_ChartDTO storeConfirmDateNum(SA_ChartDTO sa_chart) {
			return sql.selectOne("SA.storeConfirmDateNum");
		}
	
		// 금일 가입 수(회원)
		public int todayJoinMember() {
			return sql.selectOne("SA.todayJoinMember");
		}
		// 금일 가입 수(점주)
		public int todayJoinCMember() {
			return sql.selectOne("SA.todayJoinCMember");
		}
	
		// 답변 대기 문의 수
		public int SA_InquiryWatingNum() {
			return sql.selectOne("SA.SA_InquiryWatingNum");
		}
		public int SA_InquiryWatingNum2() {
			return sql.selectOne("SA.SA_InquiryWatingNum2");
		}
		
		// 승인 대기 중인 업체 수
		public int SA_WatingStoreNum() {
			return sql.selectOne("SA.SA_WatingStoreNum");
		}
	   
	// 회원 관리(회원)
	// SA05 회원 관리 클릭 시 회원 관리 페이지로 이동 및 관련 정보 요청 및 출력
	// SA06 회원 목록 클릭 시 회원 목록 정보 요청 및 출력
	public List<MemberDTO> SA_MMgt(PageDTO paging) {
		return sql.selectList("SA.SA_MMgt", paging);
	}
	// 정보 요청 목록 나열
		// 총 회원 수
		public int sumMember() {
			return sql.selectOne("SA.sumMember");
		}
		public int sumCMember() {
			return sql.selectOne("SA.sumCMember");
		}
		
		// 금일 예약 수
		public int sumBook() {
			return sql.selectOne("SA.sumBook");
		}
		
		// 회원 가입수 추이(회원, 최대 10일)
		public SA_ChartDTO memberJoinDateNum(SA_ChartDTO sa_chart) {
			return sql.selectOne("SA.memberJoinDateNum");
		}
		
		// 회원 가입수 추이(점주, 최대 10일)
		public SA_ChartDTO cmemberJoinDateNum(SA_ChartDTO sa_chart) {
			return sql.selectOne("SA.cmemberJoinDateNum");
		}

	// SA07 탈퇴 버튼 클릭 시 해당 회원 정보 탈퇴 요청 및 처리
	// SA11 강제 탈퇴 버튼 클릭 시 해당 회원 정보 탈퇴 요청 및 처리
	public int SA_MDel(String mCode) {
		return sql.update("SA.SA_MDel", mCode);
	}
	
	// SA08 회원 아이디 클릭 시 회원 상세 정보 요청 및 출력
	public MemberDTO SA_MView(String mCode) {
		return sql.selectOne("SA.SA_MView", mCode);
	}
		
	// SA10 수정 정보 입력 후 수정 요청 및 처리 후 회원 상세 정보 페이지 이동
	public int SA_MModi(MemberDTO member) {
		return sql.update("SA.SA_MModi", member);
	}
		
	// 회원 관리(점주)
	// SA12 점주 목록 클릭 시 점주 목록 정보 요청 및 출력
	public List<CompanyDTO> SA_MMgt2(PageDTO paging) {
		return sql.selectList("SA.SA_MMgt2", paging);
	}
		
	// SA13 탈퇴 버튼 클릭 시 점주 정보 탈퇴 요청 및 처리
	// SA17 강제 탈퇴 버튼 클릭 시 해당 점주 정보 탈퇴 요청 및 처리
	public int SA_CDel(String cCode) {
		return sql.update("SA.SA_CDel", cCode);
	}
		
	// SA14 점주 아이디 클릭 시 점주 상세 정보 요청 및 출력
	public CompanyDTO SA_CView(String cCode) {
		return sql.selectOne("SA.SA_CView", cCode);
	}
		
	// SA16 수정 정보 입력 후 수정 요청 및 처리 후 점주 상세 정보 페이지 이동
	public int SA_CModi(CompanyDTO company) {
		return sql.update("SA.SA_CModi", company);
	}
		
	// SA18 카테고리 선택 후 검색 요청 및 처리(회원)
	public List<MemberDTO> SA_SelCat1(String keyword, String selectVal, PageDTO paging) {
		Map<String, Object> Map = new HashMap<String, Object>();
		Map.put("keyword", keyword);
		Map.put("paging", paging);
		System.out.println(Map);
		if (selectVal.equals("mCode")) {
			return sql.selectList("SA.SA_SelCat1_1", Map);
		} else if (selectVal.equals("mId")) {
			return sql.selectList("SA.SA_SelCat1_2", Map);
		} else if (selectVal.equals("mName")) {
			return sql.selectList("SA.SA_SelCat1_3", Map);
		} else if (selectVal.equals("mEmail")) {
			return sql.selectList("SA.SA_SelCat1_4", Map);
		} else {
			return sql.selectList("SA.SA_SelCat1", Map);
		}
	}
		
	// SA18 카테고리 선택 후 검색 요청 및 처리(점주)
	public List<CompanyDTO> SA_SelCat2(String keyword, String selectVal, PageDTO paging) {
		Map<String, Object> Map = new HashMap<String, Object>();
		Map.put("keyword", keyword);
		Map.put("paging", paging);
		System.out.println(Map);
		if (selectVal.equals("cCode")) {
			return sql.selectList("SA.SA_SelCat2_1", Map);
		} else if (selectVal.equals("cId")) {
			return sql.selectList("SA.SA_SelCat2_2", Map);
		} else if (selectVal.equals("cName")) {
			return sql.selectList("SA.SA_SelCat2_3", Map);
		} else if (selectVal.equals("cEmail")) {
			return sql.selectList("SA.SA_SelCat2_4", Map);
		} else {
			return sql.selectList("SA.SA_SelCat2", Map);
		}
	}
		
	// 업체 관리
	// SA19 업체 관리 버튼 클릭 시 업체 관리 페이지 이동 및 정보 처리 요청 및 출력
	public List<StoreDTO> SA_SMgt(PageDTO paging) {
		return sql.selectList("SA.SA_SMgt", paging);
	}
	// 정보 요청 목록 나열
		// 총 업체 수
		public int SA_SumStoreNum() {
			return sql.selectOne("SA.SA_SumStoreNum");
		}

	// SA20 이용 중지 버튼 클릭 시 이용 중지 요청 및 처리
	// SA24 이용 중지 버튼 클릭 시 해당 업체 정보 이용 중지 및 처리﻿
	public int SA_SDel(String storeCode) {
		return sql.update("SA.SA_SDel", storeCode);
	}
	
	// SA21 업체명 클릭 시 업체 상세 정보 페이지 이동 및 출력
	// SA27 업체명 클릭 시 업체 상세 정보 페이지 이동 및 출력
	public StoreDTO SA_SView(String storeCode) {
		return sql.selectOne("SA.SA_SView", storeCode);
	}

	// SA23 수정 정보 입력 후 수정 요청 및 처리 후 업체 상세 정보 페이지 이동
	public int SA_SModi(StoreDTO store) {
		return sql.update("SA.SA_SModi", store);
	}

	// SA25 카테고리 선택 후 검색 요청 및 처리
	public List<StoreDTO> SA_SelCat3(String keyword, String selectVal, PageDTO paging) {
		
		Map<String, Object> Map = new HashMap<String, Object>();
		Map.put("keyword", keyword);
		Map.put("paging", paging);
		System.out.println(Map);
		if (selectVal.equals("sName")) {
			return sql.selectList("SA.SA_SelCat3_1", Map);
		} else if (selectVal.equals("cId")) {
			return sql.selectList("SA.SA_SelCat3_2", Map);
		} else if (selectVal.equals("storeCode")) {
			return sql.selectList("SA.SA_SelCat3_3", Map);
		} else {
			return sql.selectList("SA.SA_SelCat3", Map);
		}
	}

	// 업체 가입 승인
	// SA26 업체 가입 승인 클릭 시 업체 가입 승인 페이지 이동 및 정보 처리 요청 및 출력
	public List<StoreDTO> SA_SCfmList(PageDTO paging) {
		return sql.selectList("SA.SA_SCfmList", paging);
	}
	
	// SA28 승인 버튼 클릭 시 승인 요청 및 처리
	public int SA_PassS(String storeCode) {
		return sql.update("SA.SA_PassS", storeCode);
	}
	
	// SA29 거절 버튼 클릭 시 거절 요청 및 처리
	public int SA_CancelS(String storeCode) {
		return sql.update("SA.SA_CancelS", storeCode);
	}

	// 리뷰 관리
	/*
	 * // SA30 리뷰 관리 클릭 시 리뷰 관리 페이지 이동 및 정보 요청 및 출력 public List<Review_SaveDTO>
	 * SA_ReviewMgt(Review_SaveDTO reviewsave) { return
	 * sql.selectList("SA.SA_ReviewMgt", reviewsave); }
	 */
	// SA30 리뷰 관리 클릭 시 리뷰 관리 페이지 이동 및 정보 요청 및 출력
	public List<Review_SaveDTO> SA_ReviewMgt(PageDTO paging) {
		return sql.selectList("SA.SA_ReviewMgt", paging);
	}

	// SA31 삭제 버튼 클릭시 해당 리뷰 삭제 요청 및 처리
	public int SA_ReviewDel(String rCode) {
		return sql.delete("SA.SA_ReviewDel", rCode);
	}
	public int SA_ReviewDel2(String rCode) {
		return sql.delete("SA.SA_ReviewDel2", rCode);
	}

	// SA32 리뷰코드 클릭 시 해당 리뷰 상세 보기 요청 및 팝업창 출력
	public Review_SaveDTO SA_ViewReview(String rCode) {
		return sql.selectOne("SA.SA_ViewReview", rCode);
	}
	
	// SA33 카테고리 선택 후 검색 요청 및 처리
	public List<Review_SaveDTO> SA_SelCat4(String keyword, String selectVal, PageDTO paging) {
		
		Map<String, Object> Map = new HashMap<String, Object>();
		Map.put("keyword", keyword);
		Map.put("paging", paging);
		System.out.println(Map);
		if (selectVal.equals("rCode")) {
			return sql.selectList("SA.SA_ReviewSel1", Map);
		} else if (selectVal.equals("rContents")) {
			return sql.selectList("SA.SA_ReviewSel2", Map);
		} else if (selectVal.equals("rmId")) {
			return sql.selectList("SA.SA_ReviewSel3", Map);
		} else {
			return sql.selectList("SA.SA_ReviewSel", Map);
		}
	}
	
	// 1:1 문의 관리
	// SA34 1:1 문의 관리 클릭 시 1:1문의 페이지 이동 및 정보 요청 및 출력(회원)
	public List<QnADTO> SA_InquiryList(PageDTO paging) {
		return sql.selectList("SA.SA_InquiryList", paging);
	}
	
	// SA35 보기 버튼 클릭 시 문의 내용 상세 보기 요청 및 출력(회원)
	public QnADTO SA_InquiryView(int mQnACode) {
		return sql.selectOne("SA.SA_InquiryView", mQnACode);
	}
	
	// SA36 답변 작성 버튼 클릭 시 작성 요청 및 처리 후 1:1 문의 관리 페이지로 이동(회원)
	public int SA_ResInquiry(QnADTO qna) {
		return sql.update("SA.SA_ResInquiry", qna);
	}
	
	// SA37 수정 버튼 클릭 시 수정 요청 및 처리 후 1:1 문의 관리 페이지로 이동(회원)
	public int SA_ResInquiryModi(QnADTO qna) {
		return sql.update("SA.SA_ResInquiryModi", qna);
	}
	
	// SA38 카테고리 선택 후 검색 요청 및 처리(회원)
	public List<QnADTO> SA_SelCat5(String selectVal, PageDTO paging) {
		Map<String, Object> Map = new HashMap<String, Object>();
		Map.put("selectVal", selectVal);
		Map.put("paging", paging);
		System.out.println(Map);
		return sql.selectList("SA.SA_SelCat5", Map);
	}

	// SA34 1:1문의 페이지 이동 및 정보 요청 및 출력(점주)
	public List<QnADTO> SA_InquiryList2(PageDTO paging) {
		return sql.selectList("SA.SA_InquiryList2", paging);
	}
	
	// SA35 보기 버튼 클릭 시 문의 내용 상세 보기 요청 및 출력(점주)
	public QnADTO SA_InquiryView2(int cQnACode) {
		return sql.selectOne("SA.SA_InquiryView2", cQnACode);
	}
	
	// SA36 답변 작성 버튼 클릭 시 작성 요청 및 처리 후 1:1 문의 관리 페이지로 이동(점주)
	public int SA_ResInquiry2(QnADTO qna) {
		return sql.update("SA.SA_ResInquiry2", qna);
	}
	
	// SA37 수정 버튼 클릭 시 수정 요청 및 처리 후 1:1 문의 관리 페이지로 이동(점주)
	public int SA_ResInquiryModi2(QnADTO qna) {
		return sql.update("SA.SA_ResInquiryModi2", qna);
	}
	
	// SA38 카테고리 선택 후 검색 요청 및 처리(점주)
	public List<QnADTO> SA_SelCat6(String selectVal, PageDTO paging) {
		Map<String, Object> Map = new HashMap<String, Object>();
		Map.put("selectVal", selectVal);
		Map.put("paging", paging);
		System.out.println(Map);
		return sql.selectList("SA.SA_SelCat6", Map);
	}
	
	// 자주 묻는 질문 작성
	// SA40 등록 버튼 클릭 시 등록 요청 및 처리
	public int SA_WriteFAQ(QnADTO qna) {
		return sql.insert("SA.SA_WriteFAQ", qna);
	}
	
	// 자주 묻는 질문 관리
	// SA41 자주 묻는 질문 관리 클릭 시 자주 묻는 질문 관리 페이지 이동 및 정보 요청 및 출력
	public List<QnADTO> SA_FAQList(QnADTO qna) {
		return sql.selectList("SA.SA_FAQList", qna);
	}
	
	// SA42 삭제 버튼 클릭 시 해당 자주 묻는 질문 삭제 요청 및 처리
	// SA45 삭제 버튼 클릭 시 해당 자주 묻는 질문 삭제 요청 및 처리
	public int SA_FAQDel(int fAQCode) {
		return sql.delete("SA.SA_FAQDel", fAQCode);
	}

	// SA43 제목 클릭 시 해당 자주 묻는 질문 상세 보기 요청 및 출력
	public QnADTO SA_FAQView(int fAQCode) {
		return sql.selectOne("SA.SA_FAQView", fAQCode);
	}
	
	// SA44 수정 버튼 클릭 시 수정 요청 및 처리 후 상세 보기 페이지로 이동
	public int SA_FAQModify(QnADTO qna) {
		return sql.update("SA.SA_FAQModify", qna);
	}

	// SA46 카테고리 선택 후 검색 요청 및 처리
	public List<QnADTO> SA_SelCat7(String FAQCat) {
		return sql.selectList("SA.SA_SelCat7", FAQCat);
	}

	// 페이징 처리
	// 리뷰 갯수 구하기
	public int ReviewListCount() {
		return sql.selectOne("SA.ReviewListCount");
	}
	// 리뷰 갯수 구하기(카테고리)
	public int ReviewListCount2(String keyword, String selectVal) {
		if (selectVal.equals("rCode")) {
			return sql.selectOne("SA.ReviewListCount2_1", keyword);
		} else if (selectVal.equals("rContents")) {
			return sql.selectOne("SA.ReviewListCount2_2", keyword);
		} else if (selectVal.equals("rmId")) {
			return sql.selectOne("SA.ReviewListCount2_3", keyword);
		} else {
			return sql.selectOne("SA.ReviewListCount2_4", keyword);
		}
	}
	// 업체 가입 승인 대기 수 구하기
	public int SCfmListCount() {
		return sql.selectOne("SA.SCfmListCount");
	}
	// 업체 갯수 구하기(카테고리)
	public int sListCount(String keyword, String selectVal, int page) {
		if (selectVal.equals("sName")) {
			return sql.selectOne("SA.sListCount2_1", keyword);
		} else if (selectVal.equals("cId")) {
			return sql.selectOne("SA.sListCount2_2", keyword);
		} else if (selectVal.equals("storeCode")) {
			return sql.selectOne("SA.sListCount2_3", keyword);
		} else {
			return sql.selectOne("SA.sListCount2_4", keyword);
		}
	}
	// 회원 수 구하기(카테고리)
	public int mListCount(String keyword, String selectVal) {
		if (selectVal.equals("mCode")) {
			return sql.selectOne("SA.mListCount2_1", keyword);
		} else if (selectVal.equals("mId")) {
			return sql.selectOne("SA.mListCount2_2", keyword);
		} else if (selectVal.equals("mName")) {
			return sql.selectOne("SA.mListCount2_3", keyword);
		} else if (selectVal.equals("mEmail")) {
			return sql.selectOne("SA.mListCount2_4", keyword);
		} else {
			return sql.selectOne("SA.mListCount2_5", keyword);
		}
	}
	// 점주 수 구하기(카테고리)
	public int cListCount(String keyword, String selectVal) {
		if (selectVal.equals("cCode")) {
			return sql.selectOne("SA.cListCount2_1", keyword);
		} else if (selectVal.equals("cId")) {
			return sql.selectOne("SA.cListCount2_2", keyword);
		} else if (selectVal.equals("cName")) {
			return sql.selectOne("SA.cListCount2_3", keyword);
		} else if (selectVal.equals("cEmail")) {
			return sql.selectOne("SA.cListCount2_4", keyword);
		} else {
			return sql.selectOne("SA.cListCount2_5", keyword);
		}
	}
	// 1:1문의 수 구하기(회원)
	public int mInquiryListCount() {
		return sql.selectOne("SA.mInquiryListCount");
	}
	// 1:1문의 수 구하기(회원, 카테고리)
	public int mInquiryListCount2(String selectVal) {
		if (selectVal.equals("예약관련")) {
			return sql.selectOne("SA.mInquiryListCount2_1", selectVal);
		} else if (selectVal.equals("사이트 이용")) {
			return sql.selectOne("SA.mInquiryListCount2_2", selectVal);
		} else if (selectVal.equals("결제관련")) {
			return sql.selectOne("SA.mInquiryListCount2_3", selectVal);
		} else {
			return sql.selectOne("SA.mInquiryListCount2_4", selectVal);
		}
	}
	// 1:1문의 수 구하기(점주)
	public int cInquiryListCount() {
		return sql.selectOne("SA.cInquiryListCount");
	}

	public int cInquiryListCount2(String selectVal) {
		if (selectVal.equals("예약관련")) {
			return sql.selectOne("SA.cInquiryListCount2_1", selectVal);
		} else if (selectVal.equals("사이트 이용")) {
			return sql.selectOne("SA.cInquiryListCount2_2", selectVal);
		} else if (selectVal.equals("결제관련")) {
			return sql.selectOne("SA.cInquiryListCount2_3", selectVal);
		} else {
			return sql.selectOne("SA.cInquiryListCount2_4", selectVal);
		}
	}
}
