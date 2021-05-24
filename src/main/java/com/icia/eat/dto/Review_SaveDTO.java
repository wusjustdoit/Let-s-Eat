package com.icia.eat.dto;

public class Review_SaveDTO {

		// 리뷰
		private String rCode;			// 리뷰 번호 코드
		private String rsCode;			// 리뷰 작성하는 업체 코드
		private String rContents;		// 리뷰 작성 내용
		private int rStar;				// 별점
		private String rBook;			// 업체 이용 날짜
		private String rmId;			// 작성자 아이디
		private String rDate;			// 리뷰 작성일
		private double rStarAVG;    	// 별점 평균
		private String rsName;			// 리뷰작성하는 업체 이름
		private String rbCode;			// 리뷰 작성하는 예약 코드
		private String rKey;			// 리뷰 작성 여부를 확인하는 키값 (예약테이블에 있음)
		
		// 찜
		private String ssCode;			// 업체 코드(찜)
		private String smCode;			// 회원 코드(찜)
		
		// 추가 부분
		private String sFileName1;		// 사진
		private String sName;			// 업체명
		
		
		
		
		// getter, setter, toString
		public String getrCode() {
			return rCode;
		}
		public void setrCode(String rCode) {
			this.rCode = rCode;
		}
		public String getRsCode() {
			return rsCode;
		}
		public void setRsCode(String rsCode) {
			this.rsCode = rsCode;
		}
		public String getrContents() {
			return rContents;
		}
		public void setrContents(String rContents) {
			this.rContents = rContents;
		}
		public int getrStar() {
			return rStar;
		}
		public void setrStar(int rStar) {
			this.rStar = rStar;
		}
		public String getrBook() {
			return rBook;
		}
		public void setrBook(String rBook) {
			this.rBook = rBook;
		}
		public String getRmId() {
			return rmId;
		}
		public void setRmId(String rmId) {
			this.rmId = rmId;
		}
		public String getrDate() {
			return rDate;
		}
		public void setrDate(String rDate) {
			this.rDate = rDate;
		}
		public double getrStarAVG() {
			return rStarAVG;
		}
		public void setrStarAVG(double rStarAVG) {
			this.rStarAVG = rStarAVG;
		}
		public String getRsName() {
			return rsName;
		}
		public void setRsName(String rsName) {
			this.rsName = rsName;
		}
		public String getRbCode() {
			return rbCode;
		}
		public void setRbCode(String rbCode) {
			this.rbCode = rbCode;
		}
		public String getrKey() {
			return rKey;
		}
		public void setrKey(String rKey) {
			this.rKey = rKey;
		}
		public String getSsCode() {
			return ssCode;
		}
		public void setSsCode(String ssCode) {
			this.ssCode = ssCode;
		}
		public String getSmCode() {
			return smCode;
		}
		public void setSmCode(String smCode) {
			this.smCode = smCode;
		}
		public String getsFileName1() {
			return sFileName1;
		}
		public void setsFileName1(String sFileName1) {
			this.sFileName1 = sFileName1;
		}
		public String getsName() {
			return sName;
		}
		public void setsName(String sName) {
			this.sName = sName;
		}
		@Override
		public String toString() {
			return "Review_SaveDTO [rCode=" + rCode + ", rsCode=" + rsCode + ", rContents=" + rContents + ", rStar="
					+ rStar + ", rBook=" + rBook + ", rmId=" + rmId + ", rDate=" + rDate + ", rStarAVG=" + rStarAVG
					+ ", rsName=" + rsName + ", rbCode=" + rbCode + ", rKey=" + rKey + ", ssCode=" + ssCode
					+ ", smCode=" + smCode + ", sFileName1=" + sFileName1 + ", sName=" + sName + "]";
		}
		
		
		
		
}




