package com.icia.eat.dto;

public class ReservationDTO {

		// 점주가 관리하는 예약건수 
		private String bookCode;				//예약코드
		private String booksCode;				//업체코드
		private String bookDate;				//날짜
		private int book9;						//예약 시간 ↓
		private int book10;
		private int book11;
		private int book12;
		private int book13;
		private int book14;
		private int book15;
		private int book16;
		private int book17;
		private int book18;
		private int book19;
		private int book20;
		private int book21;
		
		
		//예약 리스트 
		private String bCode;					//예약 코드
		private String bsCode;					//업체 코드
		private String bsName;					//업체명		(추가)
		private String bDate;					//예약 날짜
		private String bTime;					//예약 시간
		private int bmCount;					//예약 인원수
		private String bmCode;					//고객 코드
		private String bmPhone;					//고객 전화번호
		
		//추가 ( 예약 기본값 설정)
		private String bookCode2;				//예약코드(기본값)
		private String booksCode2;				//업체코드(기본값)
		private String bsFileName1;				//업체 로고 사진
		private String bsAddr;					//업체 주소
		private String brKey;					//리뷰 작성 여부 확인을 위한 키값
		private String bmName;					//점주가 보는 예약목록에 필요한 에약한 회원 이름
		private String sName;					// 업체명 추가 
		
		
		// getter, setter, toString
		public String getBookCode() {
			return bookCode;
		}
		public void setBookCode(String bookCode) {
			this.bookCode = bookCode;
		}
		public String getBooksCode() {
			return booksCode;
		}
		public void setBooksCode(String booksCode) {
			this.booksCode = booksCode;
		}
		public String getBookDate() {
			return bookDate;
		}
		public void setBookDate(String bookDate) {
			this.bookDate = bookDate;
		}
		public int getBook9() {
			return book9;
		}
		public void setBook9(int book9) {
			this.book9 = book9;
		}
		public int getBook10() {
			return book10;
		}
		public void setBook10(int book10) {
			this.book10 = book10;
		}
		public int getBook11() {
			return book11;
		}
		public void setBook11(int book11) {
			this.book11 = book11;
		}
		public int getBook12() {
			return book12;
		}
		public void setBook12(int book12) {
			this.book12 = book12;
		}
		public int getBook13() {
			return book13;
		}
		public void setBook13(int book13) {
			this.book13 = book13;
		}
		public int getBook14() {
			return book14;
		}
		public void setBook14(int book14) {
			this.book14 = book14;
		}
		public int getBook15() {
			return book15;
		}
		public void setBook15(int book15) {
			this.book15 = book15;
		}
		public int getBook16() {
			return book16;
		}
		public void setBook16(int book16) {
			this.book16 = book16;
		}
		public int getBook17() {
			return book17;
		}
		public void setBook17(int book17) {
			this.book17 = book17;
		}
		public int getBook18() {
			return book18;
		}
		public void setBook18(int book18) {
			this.book18 = book18;
		}
		public int getBook19() {
			return book19;
		}
		public void setBook19(int book19) {
			this.book19 = book19;
		}
		public int getBook20() {
			return book20;
		}
		public void setBook20(int book20) {
			this.book20 = book20;
		}
		public int getBook21() {
			return book21;
		}
		public void setBook21(int book21) {
			this.book21 = book21;
		}
		public String getbCode() {
			return bCode;
		}
		public void setbCode(String bCode) {
			this.bCode = bCode;
		}
		public String getBsCode() {
			return bsCode;
		}
		public void setBsCode(String bsCode) {
			this.bsCode = bsCode;
		}
		public String getBsName() {
			return bsName;
		}
		public void setBsName(String bsName) {
			this.bsName = bsName;
		}
		public String getbDate() {
			return bDate;
		}
		public void setbDate(String bDate) {
			this.bDate = bDate;
		}
		public String getbTime() {
			return bTime;
		}
		public void setbTime(String bTime) {
			this.bTime = bTime;
		}
		public int getBmCount() {
			return bmCount;
		}
		public void setBmCount(int bmCount) {
			this.bmCount = bmCount;
		}
		public String getBmCode() {
			return bmCode;
		}
		public void setBmCode(String bmCode) {
			this.bmCode = bmCode;
		}
		public String getBmPhone() {
			return bmPhone;
		}
		public void setBmPhone(String bmPhone) {
			this.bmPhone = bmPhone;
		}
		public String getBookCode2() {
			return bookCode2;
		}
		public void setBookCode2(String bookCode2) {
			this.bookCode2 = bookCode2;
		}
		public String getBooksCode2() {
			return booksCode2;
		}
		public void setBooksCode2(String booksCode2) {
			this.booksCode2 = booksCode2;
		}
		public String getBsFileName1() {
			return bsFileName1;
		}
		public void setBsFileName1(String bsFileName1) {
			this.bsFileName1 = bsFileName1;
		}
		public String getBsAddr() {
			return bsAddr;
		}
		public void setBsAddr(String bsAddr) {
			this.bsAddr = bsAddr;
		}
		public String getBrKey() {
			return brKey;
		}
		public void setBrKey(String brKey) {
			this.brKey = brKey;
		}
		public String getBmName() {
			return bmName;
		}
		public void setBmName(String bmName) {
			this.bmName = bmName;
		}
		public String getsName() {
			return sName;
		}
		public void setsName(String sName) {
			this.sName = sName;
		}
		@Override
		public String toString() {
			return "ReservationDTO [bookCode=" + bookCode + ", booksCode=" + booksCode + ", bookDate=" + bookDate
					+ ", book9=" + book9 + ", book10=" + book10 + ", book11=" + book11 + ", book12=" + book12
					+ ", book13=" + book13 + ", book14=" + book14 + ", book15=" + book15 + ", book16=" + book16
					+ ", book17=" + book17 + ", book18=" + book18 + ", book19=" + book19 + ", book20=" + book20
					+ ", book21=" + book21 + ", bCode=" + bCode + ", bsCode=" + bsCode + ", bsName=" + bsName
					+ ", bDate=" + bDate + ", bTime=" + bTime + ", bmCount=" + bmCount + ", bmCode=" + bmCode
					+ ", bmPhone=" + bmPhone + ", bookCode2=" + bookCode2 + ", booksCode2=" + booksCode2
					+ ", bsFileName1=" + bsFileName1 + ", bsAddr=" + bsAddr + ", brKey=" + brKey + ", bmName=" + bmName
					+ ", sName=" + sName + "]";
		}
		
		
		

		
		
		
		
}




