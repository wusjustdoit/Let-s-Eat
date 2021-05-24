package com.icia.eat.dto;

public class CompanyDTO {

		// 점주 필드
		private String cCode;			// 점주 코드
		private String cId;				// 아이디
		private String cPw;				// 비밀번호
		private String cName;			// 점주 이름
		private String cPhone;			// 핸드폰 번호
		private String cEmail;			// 이메일
		private int cKey;				// 상태
		private String cJoinDate;		// 가입 날짜
		
		
		// getter, setter, toString
		public String getcCode() {
			return cCode;
		}
		public void setcCode(String cCode) {
			this.cCode = cCode;
		}
		
		public String getcId() {
			return cId;
		}
		public void setcId(String cId) {
			this.cId = cId;
		}
		
		public String getcPw() {
			return cPw;
		}
		public void setcPw(String cPw) {
			this.cPw = cPw;
		}
		
		public String getcName() {
			return cName;
		}
		public void setcName(String cName) {
			this.cName = cName;
		}
		
		public String getcPhone() {
			return cPhone;
		}
		public void setcPhone(String cPhone) {
			this.cPhone = cPhone;
		}
		
		public String getcEmail() {
			return cEmail;
		}
		public void setcEmail(String cEmail) {
			this.cEmail = cEmail;
		}
		
		public int getcKey() {
			return cKey;
		}
		public void setcKey(int cKey) {
			this.cKey = cKey;
		}
		
		public String getcJoinDate() {
			return cJoinDate;
		}
		public void setcJoinDate(String cJoinDate) {
			this.cJoinDate = cJoinDate;
		}
		
		
		
		@Override
		public String toString() {
			return "CompanyDTO [cCode=" + cCode + ", cId=" + cId + ", cPw=" + cPw + ", cName=" + cName + ", cPhone="
					+ cPhone + ", cEmail=" + cEmail + ", cKey=" + cKey + ", cJoinDate=" + cJoinDate + "]";
		}
	
	
	
	
}




