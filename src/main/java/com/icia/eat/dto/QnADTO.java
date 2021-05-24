package com.icia.eat.dto;

public class QnADTO {

		//자주묻는 질문
		private int FAQCode;				//질문코드
		private String FAQCat;				//질문 카테고리
		private String FAQTitle;			//질문 타이틀
		private String FAQContents;			//질문 내용
		
		
		//1:1 문의 회원
		private int mQnACode;				//1:1 문의 코드
		private String mQnACat;				//1:1 문의 카테고리
		private String mQnAmId;				//1:1 문의 아이디
		private String mQnATitle;			//1:1 문의 제목
		private String mQnAContents;		//1:1 문의 내용
		private String mQnADate;			//1:1 문의 날짜
		private String mQnAAnswer;			//1:1 문의 답변
		private String mQnAKey;				//1:1 문의 답변 여부
		private String mQnADate2;			//1:1 문의 답변 날짜
		
		//1:1 문의 점주
		private int cQnACode;				//1:1 문의 코드
		private String cQnACat;				//1:1 문의 카테고리
		private String cQnAcId;				//1:1 문의 아이디
		private String cQnATitle;			//1:1 문의 제목
		private String cQnAContents;		//1:1 문의 내용
		private String cQnADate;			//1:1 문의 날짜
		private String cQnAAnswer;			//1:1 문의 답변
		private String cQnAKey;				//1:1 문의 답변 여부
		private String cQnADate2;			//1:1 문의 답변 날짜
		
		
		
		
		// getter, setter, toString
		public int getFAQCode() {
			return FAQCode;
		}
		public void setFAQCode(int fAQCode) {
			FAQCode = fAQCode;
		}
		
		public String getFAQCat() {
			return FAQCat;
		}
		public void setFAQCat(String fAQCat) {
			FAQCat = fAQCat;
		}
		
		public String getFAQTitle() {
			return FAQTitle;
		}
		public void setFAQTitle(String fAQTitle) {
			FAQTitle = fAQTitle;
		}
		
		public String getFAQContents() {
			return FAQContents;
		}
		public void setFAQContents(String fAQContents) {
			FAQContents = fAQContents;
		}
		
		
		
		public int getmQnACode() {
			return mQnACode;
		}
		public void setmQnACode(int mQnACode) {
			this.mQnACode = mQnACode;
		}
		
		public String getmQnACat() {
			return mQnACat;
		}
		public void setmQnACat(String mQnACat) {
			this.mQnACat = mQnACat;
		}
		
		public String getmQnAmId() {
			return mQnAmId;
		}
		public void setmQnAmId(String mQnAmId) {
			this.mQnAmId = mQnAmId;
		}
		
		public String getmQnATitle() {
			return mQnATitle;
		}
		public void setmQnATitle(String mQnATitle) {
			this.mQnATitle = mQnATitle;
		}
		
		public String getmQnAContents() {
			return mQnAContents;
		}
		public void setmQnAContents(String mQnAContents) {
			this.mQnAContents = mQnAContents;
		}
		
		public String getmQnADate() {
			return mQnADate;
		}
		public void setmQnADate(String mQnADate) {
			this.mQnADate = mQnADate;
		}
		
		public String getmQnAAnswer() {
			return mQnAAnswer;
		}
		public void setmQnAAnswer(String mQnAAnswer) {
			this.mQnAAnswer = mQnAAnswer;
		}
		
		public String getmQnAKey() {
			return mQnAKey;
		}
		public void setmQnAKey(String mQnAKey) {
			this.mQnAKey = mQnAKey;
		}
		
		public String getmQnADate2() {
			return mQnADate2;
		}
		public void setmQnADate2(String mQnADate2) {
			this.mQnADate2 = mQnADate2;
		}
		
		
		
		
		
		public int getcQnACode() {
			return cQnACode;
		}
		public void setcQnACode(int cQnACode) {
			this.cQnACode = cQnACode;
		}
		
		public String getcQnACat() {
			return cQnACat;
		}
		public void setcQnACat(String cQnACat) {
			this.cQnACat = cQnACat;
		}
		
		public String getcQnAcId() {
			return cQnAcId;
		}
		public void setcQnAcId(String cQnAcId) {
			this.cQnAcId = cQnAcId;
		}
		
		public String getcQnATitle() {
			return cQnATitle;
		}
		public void setcQnATitle(String cQnATitle) {
			this.cQnATitle = cQnATitle;
		}
		
		public String getcQnAContents() {
			return cQnAContents;
		}
		public void setcQnAContents(String cQnAContents) {
			this.cQnAContents = cQnAContents;
		}
		
		public String getcQnADate() {
			return cQnADate;
		}
		public void setcQnADate(String cQnADate) {
			this.cQnADate = cQnADate;
		}
		
		public String getcQnAAnswer() {
			return cQnAAnswer;
		}
		public void setcQnAAnswer(String cQnAAnswer) {
			this.cQnAAnswer = cQnAAnswer;
		}
		
		public String getcQnAKey() {
			return cQnAKey;
		}
		public void setcQnAKey(String cQnAKey) {
			this.cQnAKey = cQnAKey;
		}
		
		public String getcQnADate2() {
			return cQnADate2;
		}
		public void setcQnADate2(String cQnADate2) {
			this.cQnADate2 = cQnADate2;
		}
		
		
		
		@Override
		public String toString() {
			return "QnADTO [FAQCode=" + FAQCode + ", FAQCat=" + FAQCat + ", FAQTitle=" + FAQTitle + ", FAQContents="
					+ FAQContents + ", mQnACode=" + mQnACode + ", mQnACat=" + mQnACat + ", mQnAmId=" + mQnAmId
					+ ", mQnATitle=" + mQnATitle + ", mQnAContents=" + mQnAContents + ", mQnADate=" + mQnADate
					+ ", mQnAAnswer=" + mQnAAnswer + ", mQnAKey=" + mQnAKey + ", mQnADate2=" + mQnADate2 + ", cQnACode="
					+ cQnACode + ", cQnACat=" + cQnACat + ", cQnAcId=" + cQnAcId + ", cQnATitle=" + cQnATitle
					+ ", cQnAContents=" + cQnAContents + ", cQnADate=" + cQnADate + ", cQnAAnswer=" + cQnAAnswer
					+ ", cQnAKey=" + cQnAKey + ", cQnADate2=" + cQnADate2 + "]";
		}
		
		
		
		
}




