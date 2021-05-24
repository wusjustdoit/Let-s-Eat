package com.icia.eat.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.icia.eat.dto.MemberDTO;
import com.icia.eat.dto.QnADTO;
import com.icia.eat.dto.ReservationDTO;
import com.icia.eat.dto.Review_SaveDTO;
import com.icia.eat.dto.SearchDTO;
import com.icia.eat.dto.StoreDTO;

@Repository
public class MDAO {
	@Autowired
	private SqlSessionTemplate sql;

	// 일반 회원 로그인
	public MemberDTO mlogin(String mId) {

		return sql.selectOne("Member.mlogin", mId);
	}
	// 암호화된 로그인 하기 (암호화된 비밀번호를 가져오기 위함)
		public String EncPw(String mId) {
			
			return sql.selectOne("Member.EncPw", mId);
		}

	// 점포 리스트
	public List<StoreDTO> slist() {
		return sql.selectList("Company.slist");
	}

	// 예약중 리스트
	public List<ReservationDTO> reservationlist(String smCode) {

		return sql.selectList("Member.bookinglist", smCode);

	}

	// 예약 이력 리스트
	public List<ReservationDTO> bookedlist(String smCode) {
		return sql.selectList("Member.bookedlist", smCode);
	}

	// 찜 추가
	public int storesave(String storeCode, String mCode) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mCode", mCode);
		map.put("storeCode", storeCode);

		return sql.insert("Member.storesave", map);
	}

	// 찜 해제
	public int storesavex(String storeCode, String mCode) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mCode", mCode);
		map.put("storeCode", storeCode);

		return sql.delete("Member.storesavex", map);
	}

	// 찜 목록보기
	public List<Review_SaveDTO> savelist(String smCode) {
		System.out.println("smCodedao : " + smCode);
		return sql.selectList("Member.savelist", smCode);
	}

	// 포인트 충전 메소드
	public int addPoint(String mPoint, String mCode) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mCode", mCode);
		map.put("mPoint", mPoint);

		return sql.update("Member.addPoint", map);
	}

	// 일반 회원 가입
	public int join(MemberDTO member) {
		return sql.insert("Member.mInsert", member);
	}

	// 일반 정보 보기
	public MemberDTO mview(String mId) {
		return sql.selectOne("Member.mview", mId);
	}

	// 일반 정보 수정
	public int mModify(MemberDTO member) {
		return sql.update("Member.mModify", member);
	}

	// 일반 회원 삭제
	public int mDel(String mId) {
		return sql.update("Member.mDel", mId);
	}

	// 회원 idOverlap
	public String midOverlap(String mId) {
		return sql.selectOne("Member.midOverlap", mId);
	}

	public int mkeyAlter(MemberDTO member) {
		return sql.update("Member.mkAlter", member);
	}

	// 회원아이디 찾기
	public String CheckmId(String mName, String mPhone) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mName", mName);
		map.put("mPhone", mPhone);
		System.out.println("mName , mPhone : " + mName + mPhone);
		return sql.selectOne("Member.midcheck", map);
	}

	// 회원 비밀번호 변경
	public int mChange(MemberDTO member) {
		return sql.update("Member.mPwChange", member);
	}

	// 회원 네이버 아이디 로 가입
	public int nJoin(MemberDTO nmember) {
		return sql.insert("Member.nJoin", nmember);
	}

	// 회원 네이버 아이디 로그인
	public String nLogin(String mId) {
		return sql.selectOne("Member.nLogin", mId);
	}

	// 내가 쓴 리뷰 목록
	public List<Review_SaveDTO> myRList(String mId) {

		return sql.selectList("Member.myRList", mId);
	}

	// 검색기능
	public List<StoreDTO> Search(SearchDTO search) {

		return sql.selectList("Member.sh", search);
	}
	
	// 나의 문의 현황 (회원)
	public List<QnADTO> M_myQnAList(String mId) {
			
		return sql.selectList("Member.M_myQnAList", mId);
	}
	
	// 리뷰 작성하는 페이지로 이동 (예약코드를 가지고 예약DTO에서 예약관련 필드들 가져와야함.)
		public ReservationDTO writeForm(String bCode) {
			
			return sql.selectOne("Member.ReviewForm", bCode);
		}
		
		// 리뷰 작성
		public int reviewWrite(Review_SaveDTO review) {
			
			return sql.insert("Member.reviewWrite", review);
		}
		
		// 리뷰작성과 동시에 작성여부를 확인하는 키값을 1로 update 시켜주기 
		public int reviewKey(Review_SaveDTO review) {
			
			return sql.update("Member.reviewKey", review);
		}
		
		// 내가 쓴 리뷰 삭제하기 (마이 리뷰)
		public int myReviewDel(String rCode) {
			
			return sql.delete("Member.myReviewDel", rCode);
		}
		
		// 예약 취소하기
		public int mybookDel(String bCode) {
			
			return sql.delete("Member.mybookDel", bCode);
		}
		public String pointselect(String mCode) {
			return sql.selectOne("Member.pointselect",mCode);
		}
}
