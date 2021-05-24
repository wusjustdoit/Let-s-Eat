package com.icia.eat.service;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.eat.dao.CDAO;
import com.icia.eat.dao.MDAO;
import com.icia.eat.dto.CompanyDTO;
import com.icia.eat.dto.QnADTO;
import com.icia.eat.dto.Review_SaveDTO;
import com.icia.eat.dto.StoreDTO;

@Service
public class CService {
	@Autowired
	HttpSession session;
	
	@Autowired
	JavaMailSender cmailsender;
	
	@Autowired
	private CDAO dao;
	
	@Autowired
	private MDAO mdao;
	
	@Autowired
	BCryptPasswordEncoder pwEnc;
	
	private ModelAndView mav = new ModelAndView();
	
	
	//업체 등록
	public ModelAndView cupdate(StoreDTO store) throws IllegalStateException, IOException {
		//중복된 파일 이름 방지 UUID
		
		UUID uuid = UUID.randomUUID();
		
		//파일 이름 가져오기
		MultipartFile sFile1 = store.getsFile1();
		String sFileName1 = uuid.toString().substring(1, 8)+"_"+sFile1.getOriginalFilename();
		System.out.println(uuid.toString());
		System.out.println(uuid.toString().substring(0, 8));
		//파일 이름 가져오기
		MultipartFile sFile2 = store.getsFile2();
		String sFileName2 = uuid.toString().substring(1, 8)+"_"+sFile2.getOriginalFilename();
		System.out.println(uuid.toString());
		System.out.println(uuid.toString().substring(0, 8));
		//파일 이름 가져오기
		MultipartFile sFile3 = store.getsFile3();
		String sFileName3 = uuid.toString().substring(1, 8)+"_"+sFile3.getOriginalFilename();
		System.out.println(uuid.toString());
		System.out.println(uuid.toString().substring(0, 8));
		


		// 파일 저장경로 :: 마지막에 "/" 꼭 붙이기 
		String savePath = "D:/SpringWorkspace/Let's Eat/src/main/webapp/resources/fileUpload/" + sFileName1;
		String savePath2 = "D:/SpringWorkspace/Let's Eat/src/main/webapp/resources/fileUpload/" + sFileName2;
		String savePath3 = "D:/SpringWorkspace/Let's Eat/src/main/webapp/resources/fileUpload/" + sFileName3;
		
		
		//파일이 선택됐을 경우에만 File저장 + 파일 업로드
		if(!sFile1.isEmpty()) {
			store.setsFileName1(sFileName1);
			sFile1.transferTo(new File(savePath));
		}
		
		if(!sFile2.isEmpty()) {
			store.setsFileName2(sFileName2);
			sFile2.transferTo(new File(savePath2));
		}
		
		if(!sFile3.isEmpty()) {
			store.setsFileName3(sFileName3);
			sFile3.transferTo(new File(savePath3));
		}
		
		
		
		int result = dao.cupdate(store);
		System.out.println("4.DAO > service");
		System.out.println("resule : " + result);
		
		
		if(result>0) {
			List<StoreDTO> slist = mdao.slist();
			
			mav.addObject("slist",slist);
			
			mav.setViewName("index");
		}else {
			mav.setViewName("failpage");
		}
		
		


return mav;
	}
	
	// 업체 리스트
	public ModelAndView mgstore(String scCode) {
		List<StoreDTO> mgstore = dao.mgstore(scCode);
		System.out.println("mgstore : " + mgstore);
		mav.addObject("mgstore",mgstore);
		mav.setViewName("cView");
		
		return mav;
	}
	
	// 업체 상세보기 (점주)
	public ModelAndView sView(String storeCode) {
		StoreDTO sView = dao.sView(storeCode);
		
		mav.addObject("sView",sView);
		mav.setViewName("sview");
		
		return mav;
	}
	
	
	
	

	// idOverlap
	public String cidOverlap(String cId) {
		String result = dao.cidOverlap(cId);
		String resultcMsg = null;
		
		if(result==null) {
			resultcMsg="OK";
		}else {
			resultcMsg="NO";
		}
		
		return resultcMsg;
	}
	
	
	// 점주가입http://localhost:9091/eat/cloginp
	public ModelAndView join(CompanyDTO Company) {
		
		// 비밀번호를 암호화해서 company객체에 저장
		Company.setcPw(pwEnc.encode(Company.getcPw()));
		
		int result = dao.join(Company);
		
		if(result>0) {
			mav.setViewName("index");
		}else {
			mav.setViewName("cJoin");
		}
		
		return mav;
	}

	
	// 점주 로그인
	   public String cLogin(String cId, String cPw) {

	      CompanyDTO result = dao.clogin(cId);
	      // 아이디를 통해서 암호화된 비밀번호 호출
			String encPw = dao.EncPw(cId);

	      String cChkey = null;

	      
	      if(result != null) {
	    	  
	    	  if (pwEnc.matches(cPw, encPw)) {
		         if (result.getcKey() == 1) {
		        	 cChkey ="OK";
		            session.setAttribute("cloginId", cId);
		            session.setAttribute("cloginName", result.getcName());
		            session.setAttribute("cloginCode", result.getcCode());
		            
		            
		            
		         } else if (result.getcKey() == 2) {
		            cChkey = "NO";
		            
		         } else if(result.getcKey() == 5) {
						cChkey = "AD";
						session.setAttribute("cloginId", cId);
						
				}
		         
		      }else {
		            cChkey = "NG";
		      }
		      }else {
		    	  cChkey = "none";
		      }
		      return cChkey;
	   }
	
	//점주 정보보기
	public ModelAndView cView(String cId) {
		CompanyDTO Company = dao.cview(cId);
		
		mav.addObject("cmember", Company);
		
		
		return mav;
	}

	// 점주 정보 수정
	public ModelAndView cModify(CompanyDTO Company) {
		
		int result = dao.cModify(Company);
		
		if(result>0) {
			mav.setViewName("redirect:cview?cId="+session.getAttribute("cloginId")+"&scCode=" + session.getAttribute("cloginCode"));
		}else {
			mav.setViewName("index");
		}
		
		return mav;
	}
	// 점주 삭제 
	public String cDel(String cId) {
		
		int result = dao.cDel(cId);
		String resultMSG= null;
		if(result>0) {
			resultMSG="OK";
			session.invalidate();
		}else {
			resultMSG="NO";
		}
		
		return resultMSG;
	}
	
	// 점주 아이디 찾기 checkId
	public String CheckcId(String cName, String cPhone) {
		System.out.println("cName , cPhone : " + cName + cPhone);
		
		String result = dao.CheckcId(cName, cPhone);
		
		String checkcId = null;
		System.out.println("result : " + result);
		if(result != null) {
			checkcId = result;
		} else {
			checkcId = "NO";
		}
		
		return checkcId;
	}

	//점주 이메일 인증 번호 보내기
	public String sendcEmail(String cId, String cEmail) {
		
		// (1) 인증코드 만들기
			UUID uuid = UUID.randomUUID();
			String code = uuid.toString().substring(0, 6);
					
			// (2) 인증코드 메일로 전송하기
			MimeMessage mail = cmailsender.createMimeMessage();

			String str = "<h2>안녕하세요.  Let's Eat 입니다.</h2><br>" 
							+ "<h3>" + cId + "님</h3>"
							+ "<h3>점주님의 인증번호는 <span style='color:#ff0000'>" + code + "</span> 입니다.</h3>" 
							+ "<p>비밀번호 찾기 페이지로 돌아가서 인증번호를 입력하고 인증을 마무리해주시기 바랍니다.</p><br><br>"
							+ "(본인이 인증요청을 하지 않았을 경우 무시하셔도 됩니다.)";


				try {
					mail.setSubject("[비밀번호 찾기] Let's Eat 인증메일입니다.", "utf-8");
					mail.setText(str, "utf-8", "html");
					mail.addRecipient(RecipientType.TO, new InternetAddress(cEmail));
					cmailsender.send(mail);

					} catch (MessagingException se) {
						se.printStackTrace();
					}
					
					
					return code;
		}
	
		//이메일 인증 후 ckeyalter
		public ModelAndView ckeyAlter(CompanyDTO company) {
			int result = dao.ckeyAlter(company);

			if (result > 0) {
				mav.setViewName("cLogin");
			} else {
				mav.setViewName("index");
			}

			return mav;
		}

		// 점주 비밀번호 변경
		public ModelAndView cChange(CompanyDTO company) {
			// 비밀번호를 암호화해서 company객체에 저장
			company.setcPw(pwEnc.encode(company.getcPw()));
			
			int result = dao.cChange(company);
			
			if(result>0) {
				mav.setViewName("cLogin1");
			} else {
				mav.setViewName("index");
			}
			
			return mav;
		}


		// 나의 문의 현황 (점주)
		public ModelAndView C_myQnAList(String cQnAcId) {
			
			List<QnADTO> cQnAList = dao.C_myQnAList(cQnAcId);
			
			mav.addObject("cQnAList", cQnAList);
			mav.setViewName("cView");
			
			return mav;
		}
		
		// 업체 수정
		public ModelAndView sModify(StoreDTO store) throws IllegalStateException, IOException {
			
			//중복된 파일 이름 방지 UUID
			
					UUID uuid = UUID.randomUUID();
					
					//파일 이름 가져오기
					MultipartFile sFile1 = store.getsFile1();
					String sFileName1 = uuid.toString().substring(1, 8)+"_"+sFile1.getOriginalFilename();
					System.out.println(uuid.toString());
					System.out.println(uuid.toString().substring(0, 8));
					//파일 이름 가져오기
					MultipartFile sFile2 = store.getsFile2();
					String sFileName2 = uuid.toString().substring(1, 8)+"_"+sFile2.getOriginalFilename();
					System.out.println(uuid.toString());
					System.out.println(uuid.toString().substring(0, 8));
					//파일 이름 가져오기
					MultipartFile sFile3 = store.getsFile3();
					String sFileName3 = uuid.toString().substring(1, 8)+"_"+sFile3.getOriginalFilename();
					System.out.println(uuid.toString());
					System.out.println(uuid.toString().substring(0, 8));
					


					// 파일 저장경로 :: 마지막에 "/" 꼭 붙이기 
					String savePath = "D:/SpringWorkspace/Let's Eat/src/main/webapp/resources/fileUpload/" + sFileName1;
					String savePath2 = "D:/SpringWorkspace/Let's Eat/src/main/webapp/resources/fileUpload/" + sFileName2;
					String savePath3 = "D:/SpringWorkspace/Let's Eat/src/main/webapp/resources/fileUpload/" + sFileName3;
					
					
					//파일이 선택됐을 경우에만 File저장 + 파일 업로드
					if(!sFile1.isEmpty()) {
						store.setsFileName1(sFileName1);
						sFile1.transferTo(new File(savePath));
					}
					
					if(!sFile2.isEmpty()) {
						store.setsFileName2(sFileName2);
						sFile2.transferTo(new File(savePath2));
					}
					
					if(!sFile3.isEmpty()) {
						store.setsFileName3(sFileName3);
						sFile3.transferTo(new File(savePath3));
					}
					
					
					
					int result = dao.sModify(store);
					System.out.println("4.DAO > service");
					System.out.println("resule : " + result);
					
					
					if(result>0) {
						
						
						mav.setViewName("redirect:cview?cId="+session.getAttribute("cloginId")+"&scCode=" + session.getAttribute("cloginCode"));
					}else {
						mav.setViewName("failpage");
					}
					
					
			return mav;
		}

		
		// 업체 삭제 
			public String sDel(String storeCode) {
				
				int result = dao.sDel(storeCode);
				
				String resultMSG= null;
				if(result>0) {
					resultMSG="OK";
				}else {
					resultMSG="NO";
				}
				
				return resultMSG;
			}
		
	
		
		
}
