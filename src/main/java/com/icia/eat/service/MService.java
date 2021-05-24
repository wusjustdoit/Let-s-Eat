package com.icia.eat.service;

import java.util.List;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.icia.eat.dao.MDAO;
import com.icia.eat.dto.MemberDTO;
import com.icia.eat.dto.QnADTO;
import com.icia.eat.dto.ReservationDTO;
import com.icia.eat.dto.Review_SaveDTO;
import com.icia.eat.dto.SearchDTO;
import com.icia.eat.dto.StoreDTO;

@Service
public class MService {

	@Autowired
	JavaMailSender mailsender;
	
	@Autowired
	HttpSession session;
	
	
	private ModelAndView mav = new ModelAndView();
	
	@Autowired
	private MDAO dao;
	
	@Autowired
	BCryptPasswordEncoder pwEnc;
	

	//업체 목록 메소드
	public ModelAndView slist() {
		
		List<StoreDTO> slist = dao.slist();
		
		mav.addObject("slist",slist);
		mav.setViewName("slist");
		
		
		return mav;
	}

	
	//시작페이지 목록 메소드
		public ModelAndView startlist() {
			
			List<StoreDTO> slist = dao.slist();
			
			mav.addObject("slist",slist);
			mav.setViewName("index");
			
			
			return mav;
		}
	
	//예약 목록 메소드
	public ModelAndView reservationlist(String smCode) {

		//현제 예약 중인 리스트 보기
		List<ReservationDTO> bookinglist = dao.reservationlist(smCode);
		//과거 예약 보기
		List<ReservationDTO> bookedlist = dao.bookedlist(smCode);
		
		System.out.println("bookedlist : " + bookedlist);
		//현재 예약을 jsp에 표현을 위해 object추가
		mav.addObject("bookinglist",bookinglist);
		//예약이력을 jsp에 표현을 위해 object추가	
		mav.addObject("bookedlist",bookedlist);
		
		
		return mav;
	}
	
	

	
	//찜추가 메소드
	public String storesave(String storeCode, String mCode) {
		
		
		
		
		int result = dao.storesave(storeCode, mCode);
		String resultMsg = null;
		
		if(result>0) {
			resultMsg="OK";
		}else {
			resultMsg="NO";
		}
		
		
		return resultMsg;
	}
	//찜취소 메소드
	public String storesavex(String storeCode, String mCode) {
		
		int result = dao.storesavex(storeCode, mCode);
		String resultMsg = null;
		
		if(result>0) {
			resultMsg="OK";
		}else {
			resultMsg="NO";
		}
		
		
		return resultMsg;
	}
	
	
	//찜 목록 보기
	public ModelAndView savelist(String smCode) {
		System.out.println("smCode : "  + smCode);
		List<Review_SaveDTO> savelist = dao.savelist(smCode);
		System.out.println("savelist : " + savelist);
		mav.addObject("savelist",savelist);
		
		
		return mav;
	}

	
	//포인트 충전
	public String addPoint(String mPoint, String mCode) {
		int result = dao.addPoint(mPoint, mCode);
		String resultMsg = null;

		session.removeAttribute("mloginPoint");
		String result1= dao.pointselect(mCode);
		session.setAttribute("mloginPoint", result1);
		
		
		if(result>0) {
			resultMsg="OK";
			
		}else {
			resultMsg="NO";
		}
		
		
		return resultMsg;
	}

	//회원 id Over lap
		public String midOverlap(String mId) {

			String result = dao.midOverlap(mId);
			String resultMsg = null;
			
			
			if (result == null) {
				resultMsg = "OK";
			} else {
				resultMsg = "NO";
			}

			return resultMsg;
		}
		
		
		// 회원가입
		public ModelAndView join(MemberDTO member) {
			// 비밀번호를 암호화해서 member객체에 저장
			member.setmPw(pwEnc.encode(member.getmPw()));
			
			int result = dao.join(member);
			
			if(result>0) {
				mav.setViewName("index");
			}else {
				mav.setViewName("mJoin");
			}
			
			return mav;
		}
		
		
		//회원 정보보기
		public ModelAndView mView(String mId) {
			
			MemberDTO member = dao.mview(mId);
			
			mav.addObject("member",member);
			mav.setViewName("mView");
			return mav;
		}
		//회원 정보수정
		public ModelAndView mModify(MemberDTO member) {
			int result = dao.mModify(member);
			System.out.println("result : " + result);
			if(result>0) {
				mav.setViewName("redirect:mview?mId="+session.getAttribute("mloginId")+"&mCode=" + session.getAttribute("mloginCode"));
			}else {
				mav.setViewName("index");
			}
			
			return mav;
		}
		// 회원 삭제 
		public String mDel(String mId) {
			
			int result = dao.mDel(mId);
			String resultMSG= null;
			if(result>0) {
				session.invalidate();
				resultMSG="OK";
			}else {
				resultMSG="NO";

			}
			
			return resultMSG;
		}

		
		// 회원아이디 찾기
			public String CheckmId(String mName, String mPhone) {
				
				String result = dao.CheckmId(mName,mPhone);
				
				String checkmId = null;
				
				if(result != null) {
					checkmId = result;
				}else {
					checkmId="NO";
				}
				
				return checkmId;
			}
		
		
		
		//회원 이메일 인증 번호 보내기
		public String sendEmail(String mId,String mEmail) {
			// (1) 인증코드 만들기
			UUID uuid = UUID.randomUUID();
			String code = uuid.toString().substring(0, 6);
			
			// (2) 인증코드 메일로 전송하기
			MimeMessage mail = mailsender.createMimeMessage();

			String str = "<h2>안녕하세요.  Let's Eat 입니다.</h2><br>" 
					+ "<h3>" + mId + "님</h3>"
					+ "<h3>회원님의 인증번호는 <span style='color:#ff0000'>" + code + "</span> 입니다.</h3>" 
					+ "<p>비밀번호 찾기 페이지로 돌아가서 인증번호를 입력하고 인증을 마무리해주시기 바랍니다.</p><br><br>"
					+ "(본인이 인증요청을 하지 않았을 경우 무시하셔도 됩니다.)";


			try {
				mail.setSubject("[비밀번호 찾기] Let's Eat 인증메일입니다.", "utf-8");
				mail.setText(str, "utf-8", "html");
				mail.addRecipient(RecipientType.TO, new InternetAddress(mEmail));
				mailsender.send(mail);

			} catch (MessagingException e) {
				e.printStackTrace();
			}
			
			
			return code;
		}

		//이메일 인증 후 mkeyalter
		public ModelAndView mkeyAlter(MemberDTO member) {
			int result = dao.mkeyAlter(member);

			if (result > 0) {
				mav.setViewName("mLogin");
			} else {
				mav.setViewName("index");
			}

			return mav;
		}

		//회원 비밀번호 변경
		public ModelAndView mChange(MemberDTO member) {
			// 비밀번호를 암호화해서 member객체에 저장
			member.setmPw(pwEnc.encode(member.getmPw()));
			
			int result = dao.mChange(member);
			
			if(result>0) {
				mav.setViewName("mLogin1");
			} else {
				mav.setViewName("index");
			}
			
			return mav;
		}

		//네이버 아이디로 회원 가입
		public ModelAndView nJoin(MemberDTO nmember) {
			
			int result = dao.nJoin(nmember);
			
			if(result>0) {
				mav.setViewName("mLogin");
			} else {
				mav.setViewName("mJoin");
			}
			
			return mav;
		}

		
			// 네이버 아이디로 회원 로그인
		  public ModelAndView nLogin(String mId) {
		      String loginName = dao.nLogin(mId);
		      
		      session.setAttribute("loginName",loginName);
		      mav.setViewName("index");
		      
		      
		      return mav;
		   }
		
		// 일반 로그인
		   public String mLogin(String mId,String mPw) {
		      
		      MemberDTO result = dao.mlogin(mId);
		   // 아이디를 통해서 암호화된 비밀번호 호출
				String encPw = dao.EncPw(mId);

		      
		      String mChkey = null;
		      
		      if(result != null) {
		    	if (pwEnc.matches(mPw, encPw)) {
		         if (result.getmKey() == 1) {
		        	 mChkey ="OK";
		        	 
		        	session.setAttribute("mloginPoint", result.getmPoint());
		            session.setAttribute("mloginId", mId);
		            session.setAttribute("mloginName", result.getmName());
		            session.setAttribute("mloginCode", result.getmCode());
		            
		            
		            
		         } else if (result.getmKey() == 2) {
		            mChkey = "NO";
		         } 
		         
		      }else {
		            mChkey = "NG";
		      }
		      }else {
		    	  mChkey = "none";
		      }
		      return mChkey;
		   }
		
		// 내가 쓴 리뷰 목록 (마이 리뷰)
					public ModelAndView myReviewList(String mId) {
						
						List<Review_SaveDTO> myRList = dao.myRList(mId);
						
						mav.addObject("myRList", myRList);
						
						return mav;
					}
					
					// 검색기능
					public ModelAndView Search(SearchDTO search) {
						System.out.println("searchs : " + search);
						
						List<StoreDTO> storeList = dao.Search(search);
						
						System.out.println("storeList : " + storeList);
						
						
						mav.addObject("search", storeList);
						mav.setViewName("Search");
						return mav;
					}

					// 나의 문의 현황 (회원)
					public ModelAndView M_myQnAList(String mId) {
						
						List<QnADTO> mQnAList = dao.M_myQnAList(mId);
						
						mav.addObject("mQnAList", mQnAList);
						
						
						return mav;
					}

					// 리뷰 작성하는 페이지로 이동 (예약코드를 가지고 예약DTO에서 예약관련 필드들 가져와야함.)
					public ModelAndView writeForm(String bCode) {

						ReservationDTO reiviewWrite = dao.writeForm(bCode);
						
						System.out.println("reiviewWrite : " + reiviewWrite);
						
						mav.addObject("reiviewWrite", reiviewWrite);
						mav.setViewName("reviewWrite");
						
						return mav;
					}
					
					// 리뷰 작성
					public ModelAndView reviewWrite(Review_SaveDTO review) {
						System.out.println("review : " + review);
						
						// 리뷰 작성 메소드
						int result = dao.reviewWrite(review);
						
						// 리뷰작성과 동시에 작성여부를 확인하는 키값을 1로 update 시켜주기 
						result = dao.reviewKey(review);
						
						
						if(result>0) {
							mav.setViewName("redirect: mview?mId="+review.getRmId() +"&mCode=" + session.getAttribute("mloginCode"));
						} else {
							mav.setViewName("index");
						}
						
						return mav;
					}
					
					// 내가 쓴 리뷰 삭제하기 (마이 리뷰)
					public ModelAndView myReviewDel(String rCode, String rmId) {
						
						int result = dao.myReviewDel(rCode);
						
						if(result >0) {
							mav.setViewName("redirect:mview?mId="+session.getAttribute("mloginId")+"&mCode=" + session.getAttribute("mloginCode"));
						} else {
							mav.setViewName("index");
						}
						
						return mav;
					}
					
					// 예약 취소하기
					public ModelAndView mybookDel(String bCode, String bmCode) {
						
						int result = dao.mybookDel(bCode);
						
						if(result>0) {
							mav.setViewName("redirect:mview?mId="+session.getAttribute("mloginId")+"&mCode=" + session.getAttribute("mloginCode"));
						} else {
							mav.setViewName("index");
						}
						
						return mav;
					}

}
