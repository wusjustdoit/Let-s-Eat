package com.icia.eat.dto;

public class MemberDTO {

		// 회원 필드
		private String mCode;			// 고객 코드
		private String mId;				// 아이디
		private String mPw;				// 비밀번호
		private String mName;			// 이름
		private String mBirth;			// 생년월일
		private String mGender;			// 성별
		private String mPhone;			// 핸드폰 번호
		private String mAddr;			// 주소
		private String mEmail;			// 이메일
		private int mKey;				// 상태
		private int mPoint;				// 포인트 잔액
		private String mJoinDate;		// 가입일자
		private int mBookNum;			// 예약수
		
		
		// getter, setter, toString
		public String getmCode() {
			return mCode;
		}
		public void setmCode(String mCode) {
			this.mCode = mCode;
		}
		
		public String getmId() {
			return mId;
		}
		public void setmId(String mId) {
			this.mId = mId;
		}
		
		public String getmPw() {
			return mPw;
		}
		public void setmPw(String mPw) {
			this.mPw = mPw;
		}
		
		public String getmName() {
			return mName;
		}
		public void setmName(String mName) {
			this.mName = mName;
		}
		
		public String getmBirth() {
			return mBirth;
		}
		public void setmBirth(String mBirth) {
			this.mBirth = mBirth;
		}
		
		public String getmGender() {
			return mGender;
		}
		public void setmGender(String mGender) {
			this.mGender = mGender;
		}
		
		public String getmPhone() {
			return mPhone;
		}
		public void setmPhone(String mPhone) {
			this.mPhone = mPhone;
		}
		
		public String getmAddr() {
			return mAddr;
		}
		public void setmAddr(String mAddr) {
			this.mAddr = mAddr;
		}
		
		public String getmEmail() {
			return mEmail;
		}
		public void setmEmail(String mEmail) {
			this.mEmail = mEmail;
		}
		
		public int getmKey() {
			return mKey;
		}
		public void setmKey(int mKey) {
			this.mKey = mKey;
		}
		
		public int getmPoint() {
			return mPoint;
		}
		public void setmPoint(int mPoint) {
			this.mPoint = mPoint;
		}
		
		public String getmJoinDate() {
			return mJoinDate;
		}
		public void setmJoinDate(String mJoinDate) {
			this.mJoinDate = mJoinDate;
		}
		public int getmBookNum() {
			return mBookNum;
		}
		public void setmBookNum(int mBookNum) {
			this.mBookNum = mBookNum;
		}		
		
		
		@Override
		public String toString() {
			return "MemberDTO [mCode=" + mCode + ", mId=" + mId + ", mPw=" + mPw + ", mName=" + mName + ", mBirth=" + mBirth
					+ ", mGender=" + mGender + ", mPhone=" + mPhone + ", mAddr=" + mAddr + ", mEmail=" + mEmail + ", mKey="
					+ mKey + ", mPoint=" + mPoint + ", mJoinDate=" + mJoinDate + ", mBookNum=" + mBookNum + "]";
		}
	
	
	
	
}



