package com.icia.eat.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.eat.dao.ReserDAO;
import com.icia.eat.dto.ReservationDTO;

@Service
public class ReserService {
	
	private ModelAndView mav = new ModelAndView();
	
	@Autowired
	private ReserDAO resdao;
	
	@Autowired
	private HttpSession session;

	//예약하기
	public ModelAndView addreser(ReservationDTO reser) {
		
		System.out.println("reser service : " + reser);
		int result = resdao.addreser(reser);
		int result2 = resdao.mngafter(reser);
		
		
		System.out.println("result : " + result);
		System.out.println(" result2:" + result2);
		
		if(result>0 || result2>0) {
			
			String minusPoint = resdao.minusPoint(reser);
			
			session.removeAttribute("mloginPoint");
			session.setAttribute("mloginPoint", minusPoint);
			
			mav.setViewName("redirect:/mview?mId="+session.getAttribute("mloginId")+"&mCode=" + session.getAttribute("mloginCode"));
			
		} else {
			mav.setViewName("redirect:/index");
		}
		
		return mav;
	}

	//점주쪽 예약목록 현재날짜
	public ModelAndView blist1(String storeCode) {
		
		List<ReservationDTO> blist1 = resdao.bList1(storeCode);
		
		String storeName = resdao.storeName(storeCode);
		
		String retoday = resdao.retoday();

		mav.addObject("retoday",retoday);
		mav.addObject("storeName", storeName);
		mav.addObject("storeCode",storeCode);
		mav.addObject("blist1", blist1);
		
		mav.setViewName("B_List");
		
		return mav;
	}
	
	
	//점주 예약 목록 선택날짜 input booklist
	public ModelAndView dateblist(String bDate,String storeCode) {
		
		List<ReservationDTO> booklist = resdao.dateblist(bDate,storeCode);
		
		String storeName = resdao.storeName(storeCode);
		
		mav.addObject("storeName", storeName);
		mav.addObject("blist1", booklist);
		mav.addObject("storeCode", storeCode);
		
		mav.setViewName("B_List");
		
		return mav;
	}
	
	
	//예약 히스토리 어제
	public ModelAndView bookhistory(String storeCode) {
		
		List<ReservationDTO> bookhistory = resdao.bookhistory(storeCode);
		
		mav.addObject("storeCode",storeCode);
		mav.addObject("blist1", bookhistory);
		
		mav.setViewName("B_List2");
		
		return mav;
	}

	//예약 히스토리 선택날짜
	public ModelAndView bookhistory2(String bDate, String storeCode) {
		
		List<ReservationDTO> bookhistory2 = resdao.bookhistory2(bDate,storeCode);
		
		mav.addObject("blist1", bookhistory2);
		mav.addObject("storeCode", storeCode);
		
		mav.setViewName("B_List2");
		
		return mav;
	}


	
	
	
	

	//점주 예약 건수 불러오기 현재날짜
	public ModelAndView mngBook(String storeCode) {
		
		ReservationDTO mngbook = resdao.mngBook(storeCode);
		
		int bookCount9 = resdao.bookCount9(storeCode);
		int bookCount10 = resdao.bookCount10(storeCode);
		int bookCount11 = resdao.bookCount11(storeCode);
		int bookCount12 = resdao.bookCount12(storeCode);
		int bookCount13 = resdao.bookCount13(storeCode);
		int bookCount14 = resdao.bookCount14(storeCode);
		int bookCount15 = resdao.bookCount15(storeCode);
		int bookCount16 = resdao.bookCount16(storeCode);
		int bookCount17 = resdao.bookCount17(storeCode);
		int bookCount18 = resdao.bookCount18(storeCode);
		int bookCount19 = resdao.bookCount19(storeCode);
		int bookCount20 = resdao.bookCount20(storeCode);
		int bookCount21 = resdao.bookCount21(storeCode);
		
		mav.addObject("mngbook", mngbook);
		
		mav.addObject("bookCount9", bookCount9);
		mav.addObject("bookCount10", bookCount10);
		mav.addObject("bookCount11", bookCount11);
		mav.addObject("bookCount12", bookCount12);
		mav.addObject("bookCount13", bookCount13);
		mav.addObject("bookCount14", bookCount14);
		mav.addObject("bookCount15", bookCount15);
		mav.addObject("bookCount16", bookCount16);
		mav.addObject("bookCount17", bookCount17);
		mav.addObject("bookCount18", bookCount18);
		mav.addObject("bookCount19", bookCount19);
		mav.addObject("bookCount20", bookCount20);
		mav.addObject("bookCount21", bookCount21);
		
		mav.addObject("storeCode", storeCode);
		
		mav.setViewName("MngBook");
		
		System.out.println("bookCount9 :" + bookCount9);
		return mav;
	}
	

	//점주 예약 건수 불러오기 선택날짜
	public ModelAndView dateMngB(String bookDate, String storeCode) {
		System.out.println("bookDate, booksCode :" + bookDate + storeCode);
		System.out.println("service");
			
			
		ReservationDTO dateMngB = resdao.dateMngB(bookDate,storeCode);
			
		System.out.println("dateMngB 얘 : " + dateMngB);
			
		int bookCountD9 = resdao.bookCountD9(storeCode,bookDate);
		int bookCountD10 = resdao.bookCountD10(storeCode,bookDate);
		int bookCountD11 = resdao.bookCountD11(storeCode,bookDate);
		int bookCountD12 = resdao.bookCountD12(storeCode,bookDate);
		int bookCountD13 = resdao.bookCountD13(storeCode,bookDate);
		int bookCountD14 = resdao.bookCountD14(storeCode,bookDate);
		int bookCountD15 = resdao.bookCountD15(storeCode,bookDate);
		int bookCountD16 = resdao.bookCountD16(storeCode,bookDate);
		int bookCountD17 = resdao.bookCountD17(storeCode,bookDate);
		int bookCountD18 = resdao.bookCountD18(storeCode,bookDate);
		int bookCountD19 = resdao.bookCountD19(storeCode,bookDate);
		int bookCountD20 = resdao.bookCountD20(storeCode,bookDate);
		int bookCountD21 = resdao.bookCountD21(storeCode,bookDate);
			
		mav.addObject("mngbook", dateMngB);
		mav.addObject("bookDate",bookDate);
			
		
		mav.addObject("bookCount9", bookCountD9);
		mav.addObject("bookCount10", bookCountD10);
		mav.addObject("bookCount11", bookCountD11);
		mav.addObject("bookCount12", bookCountD12);
		mav.addObject("bookCount13", bookCountD13);
		mav.addObject("bookCount14", bookCountD14);
		mav.addObject("bookCount15", bookCountD15);
		mav.addObject("bookCount16", bookCountD16);
		mav.addObject("bookCount17", bookCountD17);
		mav.addObject("bookCount18", bookCountD18);
		mav.addObject("bookCount19", bookCountD19);
		mav.addObject("bookCount20", bookCountD20);
		mav.addObject("bookCount21", bookCountD21);
			
			
		mav.setViewName("MngBook");
		
		System.out.println("bookCountD9 :" + bookCountD9);
		return mav;
	}
	
		
		
	
		
	// 점주 예약관리 건수 추가 
	public ModelAndView addmngbook(ReservationDTO reser) {
		System.out.println("addmngbook2 : " + reser.getBookDate());
			
		if ( reser.getBookDate() != ""){
			
			int result = resdao.addmngbookD(reser);
			
				if(result>0) {
					mav.setViewName("redirect:/dateMngB?booksCode=" + reser.getBooksCode());
				} else {
					mav.setViewName("redirect:/dateMngB?booksCode=" + reser.getBooksCode());
				}
				
			System.out.println("addmngbookD4 result:" + result);
			return mav;
			
		} else {

			int result = resdao.addmngbook(reser);
			
				if(result>0) {
					mav.setViewName("redirect:/mngBook?booksCode=" + reser.getBooksCode());
				} else {
					mav.setViewName("redirect:/mngBook?booksCode=" + reser.getBooksCode());
				}
			
			System.out.println("addmngbook4" + result);
			return mav;
		}
			
	}
	
		 
	//changemngbook
	public ModelAndView changemngbook(ReservationDTO reser) {
		
		if ( reser.getBookDate() != ""){
			System.out.println("reser : " + reser);
			int result = resdao.changemngbookD(reser);
			
				if(result>0) {
					mav.setViewName("redirect:/dateMngB?booksCode=" + reser.getBooksCode());
				} else {
					mav.setViewName("redirect:/dateMngB?booksCode=" + reser.getBooksCode());
				}
				
			System.out.println("changeD4 ," + result);
			return mav;
			
			
		} else {
				
			int result = resdao.changemngbook(reser);
			
				if(result>0) {
					mav.setViewName("redirect:/mngBook?booksCode=" + reser.getBooksCode());
				} else {
					mav.setViewName("redirect:/mngBook?booksCode=" + reser.getBooksCode());
				}
			
			System.out.println("change4," + result);
			return mav;
		}
			
	}
		
	
	//예약건수 기본설정
	public ModelAndView addmngbook2(ReservationDTO reser) {
			String aa = resdao.selmng(reser);
		
			System.out.println("aa : " + aa);
			if(aa == null) {
			
			int result = resdao.addmngbook2(reser);
			
			if(result>0) {
				mav.setViewName("MngBook");
			} else {
				mav.setViewName("storeView");
			}
			
			
			}else {
		
		
			int result0 = resdao.addmng(reser);
			
			if(result0 >0) {
				mav.setViewName("MngBook");
			} else {
				mav.setViewName("storeView");
			}
			
			}
	
		return mav;
	}
	
	//예약건수 기본 설정한 값 가져오기 
	public ModelAndView bringDefault(String storeCode) {
		
		ReservationDTO bringDefault = resdao.bringDefault(storeCode); 
		
		
		mav.addObject("storeCode", storeCode);
		mav.addObject("bringDefault", bringDefault);
		mav.setViewName("MngBook2");
	 
		return mav; 
	}



	//점주쪽 예약 취소
	public ModelAndView bookDel(String bCode, String bDate, String bsCode) {
		System.out.println("2");
		
		int result = resdao.bookDel(bCode);
		
		if(result>0) {
			
			mav.addObject("bDate",bDate);
			mav.addObject("bCode", bCode);
			mav.addObject("bsCode", bsCode);
			
			String retoday = resdao.retoday();
			
			if(bDate == retoday) {
				// 현재 날짜인 경우
				mav.setViewName("redirect:booklist");
				
			} else {
				// 선택 날짜인 경우
				mav.setViewName("redirect:dateblist");
			}
			
		} else {
			
			mav.setViewName("index");
		}
		
		System.out.println("4");
		return mav;
	}





	
}


