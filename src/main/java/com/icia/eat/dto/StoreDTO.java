package com.icia.eat.dto;

import org.springframework.web.multipart.MultipartFile;

public class StoreDTO {

		// 업체 필드
		private String storeCode;		// 업체 코드
		private String scCode;			// 점주 코드
		private String sTime;			// 영업시간
		private String sUrl;			// 업체 홈페이지
		private String sAddr;			// 업체 주소
		private String sName;			// 업체 이름
		private String sPhone;			// 업체 전화번호
		private String sSeat;			// 업체 좌석 (단체석 여부)
		private String sContents;		// 업체 소개글
		private String sbNum;			// 사업자등록번호
		private String sPark;			// 주차 가능 여부
		private String sKeyword;		// 키워드
		private String sFood;			// 음식 카테고리
		private int sStatus;			// 업체 상태 (폐업)
		private int sPoint;				// 업체 누적포인트
		private String sConfirmDate;	// 업체 승인 날짜
		
		private String sFileName1;		// 사진 1
		private String sFileName2;		// 사진 1
		private String sFileName3;		// 사진 1
		private MultipartFile sFile1;
		private MultipartFile sFile2;
		private MultipartFile sFile3;
		
		
		private String cId;				// 점주 아이디
		
		
		// getter, setter, toString
		public String getStoreCode() {
			return storeCode;
		}
		public void setStoreCode(String storeCode) {
			this.storeCode = storeCode;
		}
		
		public String getScCode() {
			return scCode;
		}
		public void setScCode(String scCode) {
			this.scCode = scCode;
		}
		
		public String getsTime() {
			return sTime;
		}
		public void setsTime(String sTime) {
			this.sTime = sTime;
		}
		
		public String getsUrl() {
			return sUrl;
		}
		public void setsUrl(String sUrl) {
			this.sUrl = sUrl;
		}
		
		public String getsAddr() {
			return sAddr;
		}
		public void setsAddr(String sAddr) {
			this.sAddr = sAddr;
		}
		
		public String getsName() {
			return sName;
		}
		public void setsName(String sName) {
			this.sName = sName;
		}
		
		public String getsPhone() {
			return sPhone;
		}
		public void setsPhone(String sPhone) {
			this.sPhone = sPhone;
		}
		
		public String getsSeat() {
			return sSeat;
		}
		public void setsSeat(String sSeat) {
			this.sSeat = sSeat;
		}
		
		public String getsContents() {
			return sContents;
		}
		public void setsContents(String sContents) {
			this.sContents = sContents;
		}
		
		public String getSbNum() {
			return sbNum;
		}
		public void setSbNum(String sbNum) {
			this.sbNum = sbNum;
		}
		
		public String getsPark() {
			return sPark;
		}
		public void setsPark(String sPark) {
			this.sPark = sPark;
		}
		
		public String getsKeyword() {
			return sKeyword;
		}
		public void setsKeyword(String sKeyword) {
			this.sKeyword = sKeyword;
		}
		
		public String getsFood() {
			return sFood;
		}
		public void setsFood(String sFood) {
			this.sFood = sFood;
		}
		
		public int getsStatus() {
			return sStatus;
		}
		public void setsStatus(int sStatus) {
			this.sStatus = sStatus;
		}
		
		public int getsPoint() {
			return sPoint;
		}
		public void setsPoint(int sPoint) {
			this.sPoint = sPoint;
		}
		
		public String getsConfirmDate() {
			return sConfirmDate;
		}
		public void setsConfirmDate(String sConfirmDate) {
			this.sConfirmDate = sConfirmDate;
		}
		
		public String getsFileName1() {
			return sFileName1;
		}
		public void setsFileName1(String sFileName1) {
			this.sFileName1 = sFileName1;
		}
		
		public String getsFileName2() {
			return sFileName2;
		}
		public void setsFileName2(String sFileName2) {
			this.sFileName2 = sFileName2;
		}
		
		public String getsFileName3() {
			return sFileName3;
		}
		public void setsFileName3(String sFileName3) {
			this.sFileName3 = sFileName3;
		}
		
		public MultipartFile getsFile1() {
			return sFile1;
		}
		public void setsFile1(MultipartFile sFile1) {
			this.sFile1 = sFile1;
		}
		
		public MultipartFile getsFile2() {
			return sFile2;
		}
		public void setsFile2(MultipartFile sFile2) {
			this.sFile2 = sFile2;
		}
		
		public MultipartFile getsFile3() {
			return sFile3;
		}
		public void setsFile3(MultipartFile sFile3) {
			this.sFile3 = sFile3;
		}
		public String getcId() {
			return cId;
		}

		public void setcId(String cId) {
			this.cId = cId;
		}
		
		
		@Override
		public String toString() {
			return "StoreDTO [storeCode=" + storeCode + ", scCode=" + scCode + ", sTime=" + sTime + ", sUrl=" + sUrl
					+ ", sAddr=" + sAddr + ", sName=" + sName + ", sPhone=" + sPhone + ", sSeat=" + sSeat + ", sContents="
					+ sContents + ", sbNum=" + sbNum + ", sPark=" + sPark + ", sKeyword=" + sKeyword + ", sFood=" + sFood
					+ ", sStatus=" + sStatus + ", sPoint=" + sPoint + ", sConfirmDate=" + sConfirmDate + ", sFileName1="
					+ sFileName1 + ", sFileName2=" + sFileName2 + ", sFileName3=" + sFileName3 + ", sFile1=" + sFile1
					+ ", sFile2=" + sFile2 + ", sFile3=" + sFile3 + ", cId=" + cId + "]";
		}
		
		
		
}




