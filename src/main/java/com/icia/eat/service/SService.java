package com.icia.eat.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.eat.dao.SDAO;
import com.icia.eat.dto.ReservationDTO;
import com.icia.eat.dto.Review_SaveDTO;
import com.icia.eat.dto.StoreDTO;

@Service
public class SService {

	@Autowired
	private SDAO dao;
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mav = new ModelAndView();

	
	// 업체 상세보기 (회원)
	public ModelAndView storeView(String storeCode, String mCode) {
		System.out.println("storeCode : " + storeCode);

		// 업체 상세보기
		StoreDTO storeView = dao.sView(storeCode);

		// 업체 상세보기2 (별점평균)
		Review_SaveDTO resaView = dao.resaView(storeCode);

		// 업체 상세보기3 (해당업체의 찜여부를 판별)
		Review_SaveDTO resaView1 = dao.resaView1(storeCode, mCode);

		System.out.println("resaView : " + resaView);

		mav.addObject("storeView", storeView);
		mav.addObject("resaView", resaView);
		mav.addObject("resaView1", resaView1);

		mav.setViewName("storeview");
		
		

		return mav;
	}
	
	// 업체 상세보기 (회원)
	public ModelAndView bookForm(String storeCode) {
	// 예약 건수 보기 (현재)
	ReservationDTO reservation = dao.reser(storeCode);
	
	mav.addObject("reservation", reservation);
	mav.setViewName("bookForm");
	return mav;
	
	}
	// 예약 선택날짜
	public ModelAndView storeViewD(String storeCode, String bookDate, String mCode) {
		
		
		//예약 건수 보기
		ReservationDTO reservation = dao.reserD(storeCode,bookDate);
		
		
		System.out.println("reservation : " + reservation);
			 
		mav.addObject("reservation", reservation);
			
		mav.setViewName("bookForm");
			
		return mav;
	}
	
	
	// 업체 상세보기 (점주)
	public ModelAndView sView(String storeCode) {
		
		StoreDTO sView = dao.sView(storeCode);
		
		mav.addObject("sView",sView);
		mav.setViewName("sview");
		
		return mav;
	}
	
	
	
	// 업체 상세보기에서 들어가는 리뷰 목록 - 최신순 (모든 회원, 점주가 볼 수 있음)
	public List<Review_SaveDTO> storeReviewList(String storeCode) {
		
		System.out.println(" storeCodes : " + storeCode);
		List<Review_SaveDTO> storeRList = dao.storeRList(storeCode);
		
		return storeRList;
	}
	
	// 업체 상세보기에서 들어가는 리뷰 목록 - 평점 높은순
	public List<Review_SaveDTO> storeReviewListHigh(String storeCode) {

		List<Review_SaveDTO> storeRListHigh = dao.storeRListHigh(storeCode);

		return storeRListHigh;

	}

	// 업체 상세보기에서 들어가는 리뷰 목록 - 평점 낮은순
	public List<Review_SaveDTO> storeReviewListLow(String storeCode) {

		List<Review_SaveDTO> storeRListLow = dao.storeRListLow(storeCode);

		return storeRListLow;
	}
		

	// 해당업체 리뷰목록에서 본인이 쓴 리뷰 삭제하기
	public String storeReviewDel(String rCode) {

		int result = dao.storeReviewDel(rCode);

		String resultMsg = null;

		if (result > 0) {
			resultMsg = "OK";
		} else {
			resultMsg = "NO";
		}

		return resultMsg;

	}

	
	
	
	
	
	
}




