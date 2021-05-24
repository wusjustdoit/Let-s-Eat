package com.icia.eat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.eat.dto.ReservationDTO;
import com.icia.eat.service.ReserService;

@Controller
public class ReserController {

	@Autowired
	private ReserService reserSvc;
	
	private ModelAndView mav = new ModelAndView();

	// 예약하기
	@RequestMapping(value = "/reser", method = RequestMethod.GET)
	public ModelAndView reser(@ModelAttribute ReservationDTO reser) {
		reser.getbTime();
		
		mav = reserSvc.addreser(reser);
		System.out.println("예약하기 완료!");
		
		return mav;
	}
	
	

	// 점주쪽 예약목록으로 현재날짜
	@RequestMapping(value = "/booklist", method = RequestMethod.GET)
	public ModelAndView book(@RequestParam("bsCode") String storeCode) {
		System.out.println("storecode:" + storeCode);
		
		mav = reserSvc.blist1(storeCode);
		System.out.println("점주쪽 현재날짜 예약목록 완료");
		
		return mav;
	}


	// 점주 예약 목록 선택날짜 input으로 oooo 성공
	// dateblist input으로 리스트 출력
	@RequestMapping(value = "/dateblist")
	public ModelAndView dateblist(@RequestParam("bDate") String bDate,@RequestParam("bsCode") String storeCode) {
		System.out.println("bDate, storeCode :" + bDate + storeCode);
		
		mav = reserSvc.dateblist(bDate,storeCode);
		System.out.println("점주쪽 선택날짜 예약목록 완료");
		
		return mav;
	}
	
	
	
	// 점주쪽 예약히스토리 목록으로 어제날짜
	@RequestMapping(value = "/bookhistory", method = RequestMethod.GET)
	public ModelAndView bookhistory(@RequestParam("bsCode") String storeCode) {
		System.out.println("storecode:" + storeCode);
		
		mav = reserSvc.bookhistory(storeCode);
		System.out.println("점주쪽 어제날짜 예약히스토리 완료");
		
		return mav;
	}


	// 점주 예약히스토리 목록 선택날짜 
	// dateblist input으로 리스트 출력
	@RequestMapping(value = "/bookhistory2")
	public ModelAndView bookhistory2(@RequestParam("bDate") String bDate,@RequestParam("bsCode") String storeCode) {
		System.out.println("bDate, storeCode :" + bDate + storeCode);
		
		mav = reserSvc.bookhistory2(bDate,storeCode);
		System.out.println("점주쪽 선택날짜 예약히스토리 완료");
		
		return mav;
	}
	
	
	
	
	

	// 점주 예약 건수 불러오기 현재날짜
	@RequestMapping(value = "/mngBook", method = RequestMethod.GET)
	public ModelAndView mngBook(@RequestParam("booksCode") String storeCode) {
		
		mav = reserSvc.mngBook(storeCode);
		System.out.println("현재날짜 건수불러오기 완료");
		
		return mav;
	}

	// 점주 예약 건수 불러오기 선택날짜
	@RequestMapping(value = "/dateMngB", method = RequestMethod.GET)
	public ModelAndView dateMngB(@RequestParam("bookDate") String bookDate,@RequestParam("booksCode") String storeCode) {
		System.out.println("bookDate, booksCode :" + bookDate + storeCode);
		
		mav = reserSvc.dateMngB(bookDate,storeCode);
		System.out.println("선택날짜 건수 불러오기 완료");
		
		return mav;
	}

	// 점주 예약관리 건수 추가 (현재날짜)+선택날짜
	@RequestMapping(value = "/addmngbook", method = RequestMethod.GET)
	public ModelAndView addmngbook(@ModelAttribute ReservationDTO reser) {
		System.out.println("addmngbook1 reser : " + reser);
		mav = reserSvc.addmngbook(reser);
		System.out.println("addmngbook 5 : mav  :" + mav);
		return mav;
	}

	//changemngbook 건수 수정
	@RequestMapping(value = "/changemngbook", method = RequestMethod.GET)
	public ModelAndView changemngbook(@ModelAttribute ReservationDTO reser) {
		System.out.println("changemngbook1 ");
		
		mav = reserSvc.changemngbook(reser);
		System.out.println("changemngbook 5");
		
		return mav;
	}
	
	
	//기본값설정추가하기
	@RequestMapping(value = "/addmngbook2", method = RequestMethod.POST)
	public ModelAndView addmngbook2(@ModelAttribute ReservationDTO reser) {
		System.out.println("addmngbook2 1 reser : " + reser);
		
		mav = reserSvc.addmngbook2(reser);
		System.out.println("addmngbook2 5 : mav  :" + mav);
		
		return mav;
	}

	
	
	//예약건수 기본 설정한 값 가져오기
	@RequestMapping(value= "/bringDefault", method=RequestMethod.GET) 
	public ModelAndView bringDefault(@RequestParam("booksCode2") String storeCode) { 
		 System.out.println("storeCode:" + storeCode);
		 
		 mav = reserSvc.bringDefault(storeCode); 
		 return mav; 
	}
	 

	
	// bookDel // 점주쪽 예약 취소
	@RequestMapping(value = "/bookDel", method = RequestMethod.GET)
	public ModelAndView bookDel(@RequestParam("bCode") String bCode,@RequestParam("bDate") String bDate,@RequestParam("bsCode") String bsCode) {
		System.out.println("1 bCode=" +bCode);
		
		mav = reserSvc.bookDel(bCode, bDate, bsCode);
		System.out.println("5");
		
		return mav;

	}

	
}


