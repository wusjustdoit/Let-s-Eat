package com.icia.eat.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.eat.dto.ReservationDTO;

@Repository
public class ReserDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	//예약하기
	public int addreser(ReservationDTO reser) {
		System.out.println("reser : " + reser);
		
		return sql.insert("Reservation.addreser",reser);
		
	}
	
	//예약시 건수에서 -1
	public int mngafter(ReservationDTO reser) {
		
		System.out.println("getbTime" + reser.getbTime());
		
		if(reser.getbTime().equals("9:00")) {
			return sql.update("Reservation.afterBook9",reser);
		} else if(reser.getbTime().equals("10:00")) {
			return sql.update("Reservation.afterBook10",reser);
		} else if(reser.getbTime().equals("11:00")) {
			return sql.update("Reservation.afterBook11",reser);
		} else if(reser.getbTime().equals("12:00")) {
			return sql.update("Reservation.afterBook12",reser);
		} else if(reser.getbTime().equals("13:00")) {
			return sql.update("Reservation.afterBook13",reser);
		} else if(reser.getbTime().equals("14:00")) {
			return sql.update("Reservation.afterBook14",reser);
		} else if(reser.getbTime().equals("15:00")) {
			return sql.update("Reservation.afterBook15",reser);
		} else if(reser.getbTime().equals("16:00")) {
			return sql.update("Reservation.afterBook16",reser);
		} else if(reser.getbTime().equals("17:00")) {
			return sql.update("Reservation.afterBook17",reser);
		} else if(reser.getbTime().equals("18:00")) {
			return sql.update("Reservation.afterBook18",reser);
		} else if(reser.getbTime().equals("19:00")) {
			return sql.update("Reservation.afterBook19",reser);
		} else if(reser.getbTime().equals("20:00")) {
			return sql.update("Reservation.afterBook20",reser);
		} else  {
			return sql.update("Reservation.afterBook21",reser);
	
		}
		
	}
	
	
	//점주쪽 예약목록 현재날짜
	public List<ReservationDTO> bList1(String storeCode) {
		
		return sql.selectList("Reservation.blist1",storeCode);
	}
	

	
	//점주 예약 목록 선택 날짜 input booklist
	public List<ReservationDTO> dateblist(String bDate, String storeCode) {
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bDate", bDate);
		map.put("storeCode", storeCode);
				
		System.out.println("bDate , storeCode : " + storeCode+" "+ bDate);
		return sql.selectList("Reservation.blist2", map);
	}
			
			
	//예약 히스토리 어제
	public List<ReservationDTO> bookhistory(String storeCode) {
		
		return sql.selectList("Reservation.bookhistory",storeCode);
	
	}

	// 예약 히스토리 선택날짜
	public List<ReservationDTO> bookhistory2(String bDate, String storeCode) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bDate", bDate);
		map.put("storeCode", storeCode);
			
		System.out.println("bDate , storeCode : " + storeCode+" "+ bDate);
		return sql.selectList("Reservation.bookhistory2", map);
			
	}
			
			
	

	
	//점주 예약 건수  현재날짜
	public ReservationDTO mngBook(String storeCode) {
		
		return sql.selectOne("Reservation.mngbook",storeCode);
	}
	
	//점주 예약 건수 불러오기 선택날짜
	public ReservationDTO dateMngB(String bookDate, String storeCode) {
		System.out.println("예약건수 선택날짜");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bookDate", bookDate);
		map.put("storeCode", storeCode);
		
		System.out.println(" bookDate : " + bookDate);
		System.out.println(" storeCode : " + storeCode);
		
		return sql.selectOne("Reservation.mngbook2", map);
	}

		
		//현재 예약 수 불러오기 현재날짜
		public int bookCount9(String storeCode) {
			return sql.selectOne("Reservation.bookCount9",storeCode);
		}

		public int bookCount10(String storeCode) {
			return sql.selectOne("Reservation.bookCount10",storeCode);
		}

		public int bookCount11(String storeCode) {
			return sql.selectOne("Reservation.bookCount11",storeCode);
		}

		public int bookCount12(String storeCode) {
			return sql.selectOne("Reservation.bookCount12",storeCode);
		}

		public int bookCount13(String storeCode) {
			return sql.selectOne("Reservation.bookCount13",storeCode);
		}

		public int bookCount14(String storeCode) {
			return sql.selectOne("Reservation.bookCount14",storeCode);
		}

		public int bookCount15(String storeCode) {
			return sql.selectOne("Reservation.bookCount15",storeCode);
		}

		public int bookCount16(String storeCode) {
			return sql.selectOne("Reservation.bookCount16",storeCode);
		}

		public int bookCount17(String storeCode) {
			return sql.selectOne("Reservation.bookCount17",storeCode);
		}

		public int bookCount18(String storeCode) {
			return sql.selectOne("Reservation.bookCount18",storeCode);
		}

		public int bookCount19(String storeCode) {
			return sql.selectOne("Reservation.bookCount19",storeCode);
		}

		public int bookCount20(String storeCode) {
			return sql.selectOne("Reservation.bookCount20",storeCode);
		}

		public int bookCount21(String storeCode) {
			return sql.selectOne("Reservation.bookCount21",storeCode);
		}

		
		
		//현재 예약 수 불러오기 선택날짜
		public int bookCountD9(String storeCode, String bookDate) {
			System.out.println(" dao 9시에 예약된 수 :" + storeCode); 
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD9",map);
		}

		public int bookCountD10(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD10",map);
		}

		public int bookCountD11(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD11",map);
		}

		public int bookCountD12(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD12",map);
		}

		public int bookCountD13(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD13",map);
		}

		public int bookCountD14(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD14",map);
		}

		public int bookCountD15(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD15",map);
		}

		public int bookCountD16(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD16",map);
		}

		public int bookCountD17(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD17",map);
		}

		public int bookCountD18(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD18",map);
		}

		public int bookCountD19(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD19",map);
		}

		public int bookCountD20(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD20",map);
		}

		public int bookCountD21(String storeCode, String bookDate) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			 map.put("booksCode", storeCode);
			 map.put("bookDate", bookDate);
			return sql.selectOne("Reservation.bookCountD21",map);
		}

		//////////////
		
		
		
		
	// 점주 예약관리 건수 추가 (현재날짜)
	public int addmngbook(ReservationDTO reser) {
		System.out.println("addmngbook3");
		
		return sql.insert("Reservation.addmngbook",reser);
	
	}

	 // 점주 예약관리 건수 추가 (선택날짜)
	public int addmngbookD(ReservationDTO reser) {
		System.out.println("addmngbookD3");
		
		return sql.insert("Reservation.addmngbookD",reser);
	}
	
	//changemngbook 선택날짜
	public int changemngbookD(ReservationDTO reser) {
		System.out.println("changemngbookD3");
		
		return sql.update("Reservation.updatemngbookD",reser);
	}
	
	//changemngbook 현재날짜
	public int changemngbook(ReservationDTO reser) {
		System.out.println("changemngbook3");
		
		return sql.update("Reservation.updatemngbook",reser);
	}

		
	//예약건수 기본설정
	public int addmngbook2(ReservationDTO reser) {
		
		return sql.insert("Reservation.addmngbook2",reser);
	}

	//기본값이 있는지 확인

	public String selmng(ReservationDTO reser) {
		return sql.selectOne("Reservation.selmng" , reser);
	}
	
	//기본값이 있을 때
	public int addmng(ReservationDTO reser) {
		
		return sql.update("Reservation.addmng", reser);
	}
	
	
	//예약건수 기본 설정한 값 가져오기
	public ReservationDTO bringDefault(String storeCode) {
		
		return sql.selectOne("Reservation.bringDefault", storeCode);
	}


	//점주쪽 예약 취소
	public int bookDel(String bCode) {
		System.out.println("3");
		
		return sql.delete("Reservation.bookDel" ,bCode);
	}

	public String retoday() {
		
		return sql.selectOne("Reservation.retoday");
	}

	// 포인트 관련
	public String minusPoint(ReservationDTO reser) {
		
		sql.update("Reservation.minusPoint",reser);
		
		return sql.selectOne("Reservation.selectPoint",reser);
	}

	public String storeName(String storeCode) {
		return sql.selectOne("Reservation.storeName",storeCode);
	}



	

}



