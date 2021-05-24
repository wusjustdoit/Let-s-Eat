package com.icia.eat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.eat.dao.SADAO;
import com.icia.eat.dto.CompanyDTO;
import com.icia.eat.dto.MemberDTO;
import com.icia.eat.dto.PageDTO;
import com.icia.eat.dto.QnADTO;
import com.icia.eat.dto.Review_SaveDTO;
import com.icia.eat.dto.SA_ChartDTO;
import com.icia.eat.dto.StoreDTO;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpSession;

@Service
public class SAService {

	@Autowired
	private SADAO dao;
	private ModelAndView mav = new ModelAndView();

	
	// 한 페이지에 보여줄 게시글 갯수
	private static final int PAGE_LIMIT = 10;

	// 화면에 보여줄 페이지 번호 갯수
	private static final int BLOCK_LIMIT = 10;
	
	
	
	// SA03 관리자 홈 버튼 클릭시 관리자 메인 페이지 이동

	public ModelAndView SA_Index(SA_ChartDTO sa_chart) {
		
		// 회원 수 추이(회원, 최대 10일)
		SA_ChartDTO memberSumDateNum = dao.memberSumDateNum(sa_chart);
		mav.addObject("memberSumDateNum", memberSumDateNum);
		
		// 회원 수 추이(점주, 최대 10일)
		SA_ChartDTO cmemberSumDateNum = dao.cmemberSumDateNum(sa_chart);
		mav.addObject("cmemberSumDateNum", cmemberSumDateNum);
		
		// 업체 수 추이(최대 10일)
		SA_ChartDTO storeConfirmDateNum = dao.storeConfirmDateNum(sa_chart);
		mav.addObject("storeConfirmDateNum", storeConfirmDateNum);
		
		// 날짜 구하기
		String[] dateResult = new String[10];
		for(int i=0; i<dateResult.length; i++) {
			Date calDate = new Date();
			calDate = new Date(calDate.getTime()+(1000*60*60*24*-i));
			SimpleDateFormat day2 = new SimpleDateFormat("yyyy/MM/dd", Locale.KOREA);
			String calDate2 = day2.format(calDate);
			dateResult[i] = calDate2;
		}
		mav.addObject("dateResult", dateResult);
		
		// 금일 가입 수(회원, 점주)
		int todayJoinMember = dao.todayJoinMember();
		mav.addObject("todayJoinMember", todayJoinMember);
		int todayJoinCMember = dao.todayJoinCMember();
		mav.addObject("todayJoinCMember", todayJoinCMember);
				
		// 답변 대기 문의 수
		int inquiryWatingNum1 = dao.SA_InquiryWatingNum();
		int inquiryWatingNum2 = dao.SA_InquiryWatingNum2();
		int inquiryWatingNum = inquiryWatingNum1+inquiryWatingNum2;
		mav.addObject("inquiryWatingNum",inquiryWatingNum);

		// 승인 대기 중인 업체 수
		int watingStoreNum = dao.SA_WatingStoreNum();
		mav.addObject("watingStoreNum",watingStoreNum);

		mav.setViewName("index");
		return mav;
	}
	
	// 회원 관리(회원)
	// SA05 회원 관리 클릭 시 회원 관리 페이지로 이동 및 관련 정보 요청 및 출력
	// SA06 회원 목록 클릭 시 회원 목록 정보 요청 및 출력
	public ModelAndView SA_MMgt(int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.sumMember();

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		String keyword = null;
		String selectVal = null;
		mav.addObject("keyword", keyword);
		mav.addObject("selectVal", selectVal);
		
		SA_ChartDTO sa_chart = new SA_ChartDTO();
		
		// 총 회원 수
		int sumMember = dao.sumMember();
		int sumCMember = dao.sumCMember();
		mav.addObject("sumMember", sumMember);
		mav.addObject("sumCMember", sumCMember);
		
		// 금일 예약 수
		int sumBook = dao.sumBook();
		mav.addObject("sumBook", sumBook);
		
		// 회원 수 추이(회원, 최대 10일)
		SA_ChartDTO memberSumDateNum = dao.memberSumDateNum(sa_chart);
		mav.addObject("memberSumDateNum", memberSumDateNum);
					
		// 회원 수 추이(점주, 최대 10일)
		SA_ChartDTO cmemberSumDateNum = dao.cmemberSumDateNum(sa_chart);
		mav.addObject("cmemberSumDateNum", cmemberSumDateNum);
			
		// 회원 가입수 추이(회원, 최대 10일)
		SA_ChartDTO memberJoinDateNum = dao.memberJoinDateNum(sa_chart);
		mav.addObject("memberJoinDateNum", memberJoinDateNum);
					
		// 회원 가입수 추이(점주, 최대 10일)
		SA_ChartDTO cmemberJoinDateNum = dao.cmemberJoinDateNum(sa_chart);
		mav.addObject("cmemberJoinDateNum", cmemberJoinDateNum);
			
		// 날짜 구하기
		String[] dateResult = new String[10];
		for(int i=0; i<dateResult.length; i++) {
			Date calDate = new Date();
			calDate = new Date(calDate.getTime()+(1000*60*60*24*-i));
			SimpleDateFormat day2 = new SimpleDateFormat("yyyy/MM/dd", Locale.KOREA);
			String calDate2 = day2.format(calDate);
			dateResult[i] = calDate2;
		}
		mav.addObject("dateResult", dateResult);
			
		List<MemberDTO> SA_MMgt = dao.SA_MMgt(paging);
		mav.addObject("paging", paging);
		mav.addObject("memberList", SA_MMgt);
		mav.setViewName("SA_MMgt");
		return mav;
	}
	
	// SA07 탈퇴 버튼 클릭 시 해당 회원 정보 탈퇴 요청 및 처리
	// SA11 강제 탈퇴 버튼 클릭 시 해당 회원 정보 탈퇴 요청 및 처리
	public ModelAndView SA_MDel(String mCode) {
		int result = dao.SA_MDel(mCode);
		
		if(result>0) {
			mav.setViewName("redirect:sa_mMgt");
		} 
		return mav;
	}
	
	// SA08 회원 아이디 클릭 시 회원 상세 정보 요청 및 출력
	public ModelAndView SA_MView(String mCode) {
		MemberDTO member = dao.SA_MView(mCode);
		mav.addObject("member", member);
		mav.setViewName("SA_MView");
		return mav;
	}
	
	// SA10 수정 정보 입력 후 수정 요청 및 처리 후 회원 상세 정보 페이지 이동
	public ModelAndView SA_MModi(MemberDTO member) {
		int result = dao.SA_MModi(member);
		if(result>0) {
			mav.setViewName("redirect:sa_mView?mCode=" + member.getmCode());
		} else {
			mav.setViewName("SA_MView");
		}
		return mav;
	}
	
	// 회원 관리(점주)
	// SA12 점주 목록 클릭 시 점주 목록 정보 요청 및 출력
	public ModelAndView SA_MMgt2(int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.sumCMember();

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		String keyword = null;
		String selectVal = null;
		mav.addObject("keyword", keyword);
		mav.addObject("selectVal", selectVal);
		List<CompanyDTO> SA_MMgt2 = dao.SA_MMgt2(paging);
		mav.addObject("paging", paging);
		mav.addObject("cmemberList", SA_MMgt2);
		mav.setViewName("SA_MMgt2");
		return mav;
	}

	// SA13 탈퇴 버튼 클릭 시 점주 정보 탈퇴 요청 및 처리
	// SA17 강제 탈퇴 버튼 클릭 시 해당 점주 정보 탈퇴 요청 및 처리
	public ModelAndView SA_CDel(String cCode) {
		int result = dao.SA_CDel(cCode);
		
		if(result>0) {
			mav.setViewName("redirect:sa_mMgt2");
		} 
		return mav;
	}
	
	// SA14 점주 아이디 클릭 시 점주 상세 정보 요청 및 출력
	public ModelAndView SA_CView(String cCode) {
		CompanyDTO cmember = dao.SA_CView(cCode);
		mav.addObject("cmember", cmember);
		mav.setViewName("SA_CView");
		return mav;
	}
	
	// SA16 수정 정보 입력 후 수정 요청 및 처리 후 점주 상세 정보 페이지 이동
	public ModelAndView SA_CModi(CompanyDTO company) {
		int result = dao.SA_CModi(company);
		if(result>0) {
			mav.setViewName("redirect:sa_cView?cCode=" + company.getcCode());
		} else {
			mav.setViewName("SA_CView");
		}
		return mav;
	}
	
	// SA18 카테고리 선택 후 검색 요청 및 처리
	public ModelAndView SA_SelCat1(String keyword, String selectVal, int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.mListCount(keyword, selectVal);

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		List<MemberDTO> SA_SelCat1 = dao.SA_SelCat1(keyword, selectVal, paging);
		mav.addObject("paging", paging);
		mav.addObject("keyword", keyword);
		mav.addObject("selectVal", selectVal);
		mav.addObject("memberList", SA_SelCat1);
		mav.setViewName("SA_MMgt");
		return mav;
	}
	public ModelAndView SA_SelCat2(String keyword, String selectVal, int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.cListCount(keyword, selectVal);

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		List<CompanyDTO> SA_SelCat2 = dao.SA_SelCat2(keyword, selectVal, paging);
		mav.addObject("paging", paging);
		mav.addObject("keyword", keyword);
		mav.addObject("selectVal", selectVal);
		mav.addObject("cmemberList", SA_SelCat2);
		mav.setViewName("SA_MMgt2");
		return mav;
	}
	
	// 업체 관리
	// SA19 업체 관리 버튼 클릭 시 업체 관리 페이지 이동 및 정보 처리 요청 및 출력
	public ModelAndView SA_SMgt(int page) {
		
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.SA_SumStoreNum();

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		String keyword = null;
		String selectVal = null;
		mav.addObject("keyword", keyword);
		mav.addObject("selectVal", selectVal);
		
				
		// 승인 대기 중인 업체 수
		int watingStoreNum = dao.SA_WatingStoreNum();
		mav.addObject("watingStoreNum",watingStoreNum);
		
		// 총 업체 수
		int sumStoreNum = dao.SA_SumStoreNum();
		mav.addObject("sumStoreNum",sumStoreNum);
		
		// 업체 수 추이(최대 10일)
		SA_ChartDTO sa_chart = new SA_ChartDTO();
		SA_ChartDTO storeConfirmDateNum = dao.storeConfirmDateNum(sa_chart);
		mav.addObject("storeConfirmDateNum", storeConfirmDateNum);
		
		// 날짜 구하기
		String[] dateResult = new String[10];
		for(int i=0; i<dateResult.length; i++) {
			Date calDate = new Date();
			calDate = new Date(calDate.getTime()+(1000*60*60*24*-i));
			SimpleDateFormat day2 = new SimpleDateFormat("yyyy/MM/dd", Locale.KOREA);
			String calDate2 = day2.format(calDate);
			dateResult[i] = calDate2;
		}
		mav.addObject("dateResult", dateResult);
		
		// 업체 불러오기
		List<StoreDTO> SA_SMgt = dao.SA_SMgt(paging);
		mav.addObject("paging", paging);
		mav.addObject("storeList", SA_SMgt);
		mav.setViewName("SA_SMgt");
		return mav;
	}
	
	
	// SA20 이용 중지 버튼 클릭 시 이용 중지 요청 및 처리
	// SA24 이용 중지 버튼 클릭 시 해당 업체 정보 이용 중지 및 처리
	public ModelAndView SA_SDel(String storeCode) {
		int result = dao.SA_SDel(storeCode);
		
		if(result>0) {
			mav.setViewName("redirect:sa_sMgt");
		} else {
			mav.setViewName("redirect:sa_sMgt");
		}
		
		return mav;
	}
	
	// SA21 업체명 클릭 시 업체 상세 정보 페이지 이동 및 출력
	// SA27 업체명 클릭 시 업체 상세 정보 페이지 이동 및 출력
	public ModelAndView SA_SView(String storeCode) {
		StoreDTO SA_SView = dao.SA_SView(storeCode);
		mav.addObject("sView", SA_SView);
		mav.setViewName("SA_SView");
		return mav;
	}
	
	// SA23 수정 정보 입력 후 수정 요청 및 처리 후 업체 상세 정보 페이지 이동
	public ModelAndView SA_SModi(StoreDTO store, String sKeyword1,String sKeyword2,String sKeyword3,String sKeyword4,String sKeyword5) throws IllegalStateException, IOException {
		
		// 중복된 파일 이름 방지 UUID
		UUID uuid = UUID.randomUUID();

		// 파일 이름 가져오기(sFile은 파일 자체, sFileName 파일이름)
		MultipartFile mFile1 = store.getsFile1();
		String fileName1 = uuid.toString().substring(0, 8) + "_" + mFile1.getOriginalFilename();

		// 파일 저장경로 :: 마지막에 "/" 꼭 붙이기
		String savePath = "D:/WorkSpace/SpringWorkSpace/Let's Eat/src/main/webapp/resources/fileUpload/" + fileName1;

		// 파일이 선택되었을 경우에만 sFileName 저장 + 파일 업로드
		if (!mFile1.isEmpty()) {
			store.setsFileName1(fileName1);
			mFile1.transferTo(new File(savePath));
		}
		// 파일2
		MultipartFile mFile2 = store.getsFile2();
		String fileName2 = uuid.toString().substring(0, 8) + "_" + mFile2.getOriginalFilename();
		String savePath2 = "D:/WorkSpace/SpringWorkSpace/Let's Eat/src/main/webapp/resources/fileUpload/" + fileName2;
		if (!mFile2.isEmpty()) {
			store.setsFileName1(fileName2);
			mFile2.transferTo(new File(savePath2));
		}
		// 파일3
		MultipartFile mFile3 = store.getsFile3();
		String fileName3 = uuid.toString().substring(0, 8) + "_" + mFile3.getOriginalFilename();
		String savePath3 = "D:/WorkSpace/SpringWorkSpace/Let's Eat/src/main/webapp/resources/fileUpload/" + fileName3;
		if (!mFile3.isEmpty()) {
			store.setsFileName1(fileName3);
			mFile3.transferTo(new File(savePath3));
		}
		
		// sKeyword 1~5 통합, set
		String sKeywordSum = "#"+sKeyword1+", #"+sKeyword2+", #"+sKeyword3+", #"+sKeyword4+", #"+sKeyword5; 
		store.setsKeyword(sKeywordSum);
		System.out.println(store);
		
		int result = dao.SA_SModi(store);
		
		if(result>0) {
			mav.setViewName("redirect:sa_sView?storeCode=" + store.getStoreCode());
		} else {
			mav.setViewName("SA_SView");
		}
		
		return mav;
	}
	
	// SA25 카테고리 선택 후 검색 요청 및 처리
	public ModelAndView SA_SelCat3(String keyword, String selectVal, int page) {
		
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.sListCount(keyword, selectVal, page);

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		// Math.ceil : 올림
		// Math.floor : 버림
		// Math.round : 반올림

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		List<StoreDTO> SA_SelCat3 = dao.SA_SelCat3(keyword, selectVal, paging);
		mav.addObject("paging", paging);
		mav.addObject("storeList", SA_SelCat3);
		mav.addObject("keyword", keyword);
		mav.addObject("selectVal", selectVal);
		mav.setViewName("SA_SMgt");
		return mav;
	}
	
	// 업체 가입 승인
	// SA26 업체 가입 승인 클릭 시 업체 가입 승인 페이지 이동 및 정보 처리 요청 및 출력
	public ModelAndView SA_SCfmList(int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.SCfmListCount();

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		// Math.ceil : 올림
		// Math.floor : 버림
		// Math.round : 반올림

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		String keyword = null;
		String selectVal = null;
		mav.addObject("keyword", keyword);
		mav.addObject("selectVal", selectVal);

		List<StoreDTO> SA_SCfmList = dao.SA_SCfmList(paging);
		mav.addObject("paging", paging);
		mav.addObject("WatingSList", SA_SCfmList);
		mav.setViewName("SA_SCfmList");
		return mav;
	}
	
	// SA28 승인 버튼 클릭 시 승인 요청 및 처리
	public ModelAndView SA_PassS(String storeCode) {
		int result = dao.SA_PassS(storeCode);
		
		if(result > 0) {
			mav.setViewName("redirect:sa_sCfmList");
		} else {
			mav.setViewName("redirect:sa_sCfmList");
		}
		return mav;
	}
	
	// SA29 거절 버튼 클릭 시 거절 요청 및 처리
	public ModelAndView SA_CancelS(String storeCode) {
		int result = dao.SA_CancelS(storeCode);
		
		if(result > 0) {
			mav.setViewName("redirect:sa_sCfmList");
		} else {
			mav.setViewName("redirect:sa_sCfmList");
		}
		return mav;
	}
	
	// 리뷰 관리
	// SA30 리뷰 관리 클릭 시 리뷰 관리 페이지 이동 및 정보 요청 및 출력
	public ModelAndView SA_ReviewMgt(int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.ReviewListCount();

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		// Math.ceil : 올림
		// Math.floor : 버림
		// Math.round : 반올림

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		String keyword = null;
		String selectVal = null;
		mav.addObject("keyword", keyword);
		mav.addObject("selectVal", selectVal);
		
		
		List<Review_SaveDTO> SA_ReviewMgt = dao.SA_ReviewMgt(paging); 
		mav.addObject("paging", paging);
		mav.addObject("reviewList", SA_ReviewMgt);
		mav.setViewName("SA_ReviewMgt");

		return mav;
	}
	
	// SA31 삭제 버튼 클릭시 해당 리뷰 삭제 요청 및 처리
	public ModelAndView SA_ReviewDel(String rCode) {
		int result = dao.SA_ReviewDel(rCode);
		if (result > 0) {
			mav.setViewName("redirect:sa_reviewMgt");
		} else {
			mav.setViewName("redirect:sa_reviewMgt");
		}
		return mav;
	}
	public ModelAndView SA_ReviewDel2(String rCode) {
		int result = dao.SA_ReviewDel2(rCode);
		if (result > 0) {
			mav.setViewName("redirect:sa_reviewMgt");
		} else {
			mav.setViewName("redirect:sa_reviewMgt");
		}
		
		return mav;
	}
	
	// SA32 리뷰코드 클릭 시 해당 리뷰 상세 보기 요청 및 팝업창 출력
	public ModelAndView SA_ViewReview(String rCode) {
		Review_SaveDTO SA_ViewReview = dao.SA_ViewReview(rCode);
		mav.addObject("viewReview", SA_ViewReview);
		mav.setViewName("SA_ViewReview");
		return mav;
	}
	
	// SA33 카테고리 선택 후 검색 요청 및 처리
	public ModelAndView SA_SelCat4(String keyword, String selectVal, int page) {
		
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.ReviewListCount2(keyword, selectVal);

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		
		List<Review_SaveDTO> SA_SelCat4 = dao.SA_SelCat4(keyword, selectVal, paging);
		mav.addObject("paging", paging);
		mav.addObject("reviewList", SA_SelCat4);
		mav.addObject("keyword", keyword);
		mav.addObject("selectVal", selectVal);
		mav.setViewName("SA_ReviewMgt");
		return mav;
	}
	
	// 1:1문의 관리
	// SA34 1:1 문의 관리 클릭 시 1:1문의 페이지 이동 및 정보 요청 및 출력(회원)
	public ModelAndView SA_InquiryList(int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.mInquiryListCount();

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		String selectVal = null;
		mav.addObject("selectVal", selectVal);
		
		List<QnADTO> SA_InquiryList = dao.SA_InquiryList(paging);
		mav.addObject("paging", paging);
		mav.addObject("inquiryList", SA_InquiryList);
		mav.setViewName("SA_InquiryList");
		return mav;
	}
	
	// SA35 보기 버튼 클릭 시 문의 내용 상세 보기 요청 및 출력(회원)
	public ModelAndView SA_InquiryView(int mQnACode) {
		QnADTO SA_InquiryView = dao.SA_InquiryView(mQnACode);
		mav.addObject("inquiryView", SA_InquiryView);
		mav.setViewName("SA_InquiryView");
		return mav;
	}
	
	// SA36 답변 작성 버튼 클릭 시 작성 요청 및 처리 후 1:1 문의 관리 페이지로 이동(회원)
	public ModelAndView SA_ResInquiry(QnADTO qna) {
		int result = dao.SA_ResInquiry(qna);

		if (result > 0) {
			mav.setViewName("redirect:sa_inquiryView?mQnACode="+qna.getmQnACode());
		} else {
			mav.setViewName("SA_InquiryList");
		}
		return mav;
	}
	
	// SA37 수정 버튼 클릭 시 수정 요청 및 처리 후 1:1 문의 관리 페이지로 이동(회원)
	public ModelAndView SA_ResInquiryModi(QnADTO qna) {
		int result = dao.SA_ResInquiryModi(qna);

		if (result > 0) {
			mav.setViewName("redirect:sa_inquiryView?mQnACode="+qna.getmQnACode());
		} else {
			mav.setViewName("SA_InquiryList");
		}
		return mav;
	}
	
	// SA38 카테고리 선택 후 검색 요청 및 처리(회원)
	public ModelAndView SA_SelCat5(String selectVal, int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.mInquiryListCount2(selectVal);

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		List<QnADTO> SA_SelCat5 = dao.SA_SelCat5(selectVal, paging);
		mav.addObject("paging", paging);
		mav.addObject("inquiryList", SA_SelCat5);
		mav.addObject("selectVal", selectVal);
		mav.setViewName("SA_InquiryList");
		return mav;
	}
	
	// 1:1 문의 관리
	// SA34 1:1문의 페이지 이동 및 정보 요청 및 출력(점주)
	public ModelAndView SA_InquiryList2(int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.cInquiryListCount();

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		String selectVal = null;
		mav.addObject("selectVal", selectVal);

		List<QnADTO> SA_InquiryList2 = dao.SA_InquiryList2(paging);
		mav.addObject("paging", paging);
		mav.addObject("inquiryList", SA_InquiryList2);
		mav.setViewName("SA_InquiryList2");
		return mav;
	}
	
	// SA35 보기 버튼 클릭 시 문의 내용 상세 보기 요청 및 출력(점주)
	public ModelAndView SA_InquiryView2(int cQnACode) {
		QnADTO SA_InquiryView2 = dao.SA_InquiryView2(cQnACode);
		mav.addObject("inquiryView", SA_InquiryView2);
		mav.setViewName("SA_InquiryView2");
		return mav;
	}
	
	// SA36 답변 작성 버튼 클릭 시 작성 요청 및 처리 후 1:1 문의 관리 페이지로 이동(점주)
	public ModelAndView SA_ResInquiry2(QnADTO qna) {
		int result = dao.SA_ResInquiry2(qna);

		if (result > 0) {
			mav.setViewName("redirect:sa_inquiryView2?cQnACode="+qna.getcQnACode());
		} else {
			mav.setViewName("SA_InquiryList2");
		}
		return mav;
	}
	
	// SA37 수정 버튼 클릭 시 수정 요청 및 처리 후 1:1 문의 관리 페이지로 이동(점주)
	public ModelAndView SA_ResInquiryModi2(QnADTO qna) {
		int result = dao.SA_ResInquiryModi2(qna);

		if (result > 0) {
			mav.setViewName("redirect:sa_inquiryView2?cQnACode="+qna.getcQnACode());
		} else {
			mav.setViewName("SA_InquiryList2");
		}
		return mav;
	}
	
	// SA38 카테고리 선택 후 검색 요청 및 처리(점주)
	public ModelAndView SA_SelCat6(String selectVal, int page) {
		PageDTO paging = new PageDTO();

		// 갯수 조회
		int listCount = dao.cInquiryListCount2(selectVal);

		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
		int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);

		List<QnADTO> SA_SelCat6 = dao.SA_SelCat6(selectVal, paging);
		mav.addObject("paging", paging);
		mav.addObject("inquiryList", SA_SelCat6);
		mav.addObject("selectVal", selectVal);
		mav.setViewName("SA_InquiryList2");
		return mav;
	}
	
	// 자주 묻는 질문 작성
	// SA40 등록 버튼 클릭 시 등록 요청 및 처리
	public ModelAndView SA_WriteFAQ(QnADTO qna) {
		int result = dao.SA_WriteFAQ(qna);

		if (result > 0) {
			mav.setViewName("redirect:sa_FAQList");
		} else {
			mav.setViewName("SA_WriteFAQForm");
		}

		return mav;
	}
	
	// 자주 묻는 질문 관리
	// SA41 자주 묻는 질문 관리 클릭 시 자주 묻는 질문 관리 페이지 이동 및 정보 요청 및 출력
	public ModelAndView SA_FAQList(QnADTO qna) {
		List<QnADTO> SA_FAQList = dao.SA_FAQList(qna);
		mav.addObject("faqList", SA_FAQList);
		mav.setViewName("SA_FAQList");
		return mav;
	}
	
	// SA42 삭제 버튼 클릭 시 해당 자주 묻는 질문 삭제 요청 및 처리
	// SA45 삭제 버튼 클릭 시 해당 자주 묻는 질문 삭제 요청 및 처리
	public ModelAndView SA_FAQDel(int FAQCode) {
		int result = dao.SA_FAQDel(FAQCode);
		if (result > 0) {
			mav.setViewName("redirect:sa_FAQList");
		} else {
			mav.setViewName("redirect:sa_FAQView");
		}
		return mav;
	}
	
	// SA43 제목 클릭 시 해당 자주 묻는 질문 상세 보기 요청 및 출력
	public ModelAndView SA_FAQView(int FAQCode) {
		QnADTO qna = dao.SA_FAQView(FAQCode);

		mav.addObject("faqView", qna);
		mav.setViewName("SA_FAQView");
		return mav;
	}
	
	// SA44 수정 버튼 클릭 시 수정 요청 및 처리 후 상세 보기 페이지로 이동
	public ModelAndView SA_FAQModify(QnADTO qna) {
		int result = dao.SA_FAQModify(qna);
		if (result > 0) {
			mav.setViewName("redirect:sa_FAQView?FAQCode=" + qna.getFAQCode());
		} else {
			mav.setViewName("redirect:sa_index");
		}
		return mav;
	}
	
	// SA46 카테고리 선택 후 검색 요청 및 처리
	public ModelAndView SA_SelCat7(String FAQCat) {
		List<QnADTO> SA_SelCat7 = dao.SA_SelCat7(FAQCat);
		mav.addObject("faqList", SA_SelCat7);
		mav.setViewName("SA_FAQList");
		return mav;
	}
}
