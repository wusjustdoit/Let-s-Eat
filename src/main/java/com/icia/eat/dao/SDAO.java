package com.icia.eat.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.eat.dto.ReservationDTO;
import com.icia.eat.dto.Review_SaveDTO;
import com.icia.eat.dto.StoreDTO;

@Repository
public class SDAO {

	@Autowired
	private SqlSessionTemplate sql;

	
	// 업체 상세보기1(회원,점주)
	public StoreDTO sView(String storeCode) {
		return sql.selectOne("Store.sView", storeCode);
	}
	
	// 업체 상세보기2(회원) 별점 평균을 위한 sql
	public Review_SaveDTO resaView(String storeCode) {
		return sql.selectOne("Store.resaView", storeCode);
	}

	// 업체 상세보기3(회원) 해당업체의 찜여부를 판별하기위한 sql
	public Review_SaveDTO resaView1(String storeCode, String mCode) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mCode", mCode);
		map.put("storeCode", storeCode);

		return sql.selectOne("Store.resaView1", map);
	}
	

	// 업체상세보기에서 들어가는 예약현황 (현재)
	public ReservationDTO reser(String storeCode) {
		
		return sql.selectOne("Store.sreservation",storeCode);
	}
	// 예약건수
	public ReservationDTO reserD(String storeCode, String bookDate) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("storeCode", storeCode);
		map.put("bookDate", bookDate);
		 
		return sql.selectOne("Store.sreservationD",map);
	}
	
	
	// 업체 상세보기에서 들어가는 리뷰 목록 - 최신순 (모든 회원, 점주가 볼 수 있음)
	public List<Review_SaveDTO> storeRList(String storeCode) {
		
		return sql.selectList("Store.storeRList", storeCode);
	}

	// 업체 상세보기에서 들어가는 리뷰 목록 - 평점 높은순
	public List<Review_SaveDTO> storeRListHigh(String storeCode) {
		
		return sql.selectList("Store.storeRListHigh", storeCode);
	}

	// 업체 상세보기에서 들어가는 리뷰 목록 - 평점 낮은순
	public List<Review_SaveDTO> storeRListLow(String storeCode) {
		
		return sql.selectList("Store.storeRListLow", storeCode);
	}
	
	// 해당업체 리뷰목록에서 본인이 쓴 리뷰 삭제하기
	public int storeReviewDel(String rCode) {

		return sql.delete("Store.storeReviewDel", rCode);
	}

	
	
	
}




