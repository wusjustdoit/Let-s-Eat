package com.icia.eat.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.icia.eat.dto.CompanyDTO;
import com.icia.eat.dto.StoreDTO;
import com.icia.eat.service.CService;
import com.icia.eat.service.MService;


@Controller
public class CController {

	@Autowired
	private CService cs;
	
	@Autowired
	private MService ms;
	
	
	@Autowired
	HttpSession session;
	
	private ModelAndView mav;
	
	//인덱스(시작페이지)
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView startlist() {
		
		mav = ms.startlist();
	 
	 
	 return mav;	
	}
	//인덱스 페이지로 이동시 리스트 불러오기
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index1() {
		mav = ms.startlist();
		 
		 
		 return mav;
	}
	//회원가입 폼 페이지로 이동
		@RequestMapping(value = "/joinform", method = RequestMethod.GET)
		public String joinform() {
			 
			 return "joinform";
		}
	
	
	//업체 등록 폼으로 이동
	@RequestMapping(value="/upform", method = RequestMethod.GET)
	public String upform() {
		return "upform";
	}
	
	
	//업체 등록 메소드
	 @RequestMapping(value="/cupdate", method = RequestMethod.POST) public
		ModelAndView cupdate(@ModelAttribute StoreDTO store,
				@RequestParam("addr1") String addr1, @RequestParam("addr2") String addr2, @RequestParam("addr3") String addr3, @RequestParam("sFood") String sFood,
				@RequestParam("keyword1") String keyword1, @RequestParam("keyword2") String keyword2, @RequestParam("keyword3") String keyword3, @RequestParam("keyword4") String keyword4, @RequestParam("keyword5") String keyword5) throws IllegalStateException, IOException { 
			 
		 		store.setsFood("#" + sFood);
		 		store.setsKeyword("#"+ keyword1+", #"+ keyword2+", #"+ keyword3+", #"+ keyword4+", #"+ keyword5);
			 store.setsAddr(addr1 + ","+addr2 + addr3 );
			 
			 if(store.getsSeat()!= null) {
				 store.setsSeat("단체석 있음");
				 
			 }else {
				 
				 store.setsSeat("단체석 없음");
			 }
			 
			 if(store.getsPark()!= null) {
				 store.setsPark("주차 가능");
			 } else {
				 store.setsPark("주차 불가능");
			 }
			 
			 
			 System.out.println(store);
		 mav = cs.cupdate(store);
		 System.out.println(store);
		 
		 return mav; 
		 }
	
	
	
	//로그아웃
		@RequestMapping(value = "logout")
		public ModelAndView logout(@ModelAttribute CompanyDTO member) {
			session.invalidate();
			mav = ms.startlist();
			 
			 
			 return mav;
		}
		

	
	
		//로그인 페이지로 이동
		@RequestMapping(value = "/cloginp", method = RequestMethod.GET)
		public String login() {
			return "cLogin1";
		}
	
	
		
		// 점주 회원가입
		@RequestMapping(value = "cjoin", method = RequestMethod.POST)
		public ModelAndView  joinForm(CompanyDTO Company) {
			mav = cs.join(Company);
			
			return mav;
		}
		// idOver lap
		@RequestMapping(value = "/cidoverlap", method = RequestMethod.POST)
		public @ResponseBody String idOverlap(@RequestParam("cId") String cId) {
			
			String resultcMsg = cs.cidOverlap(cId);
			
			return resultcMsg;
		}
		
		
		// 로그인 폼
			@RequestMapping(value = "cloginForm", method = RequestMethod.GET)
			public String LoginForm() {
				return "cLogin";
			}
			
			
			// 점주 로그인
			   @RequestMapping(value = "clogin", method = RequestMethod.POST)
			   public String Login(@RequestParam("cId") String cId, @RequestParam("cPw") String cPw,RedirectAttributes re) {
			      
				   String cChkey = cs.cLogin(cId, cPw);
				      System.out.println("cChkey : " + cChkey);
				      
				      		
				      
				      if (cChkey == "OK") {
							return "redirect:index";
							
						} else if(cChkey == "AD"){
							return "redirect:sa_index";
							
						} else {
							re.addFlashAttribute("cChkey", cChkey);
						}
				      return "redirect:cloginp";
			   }
			
			
			
			
			// 점주 정보보기 
			@RequestMapping(value="/cview", method=RequestMethod.GET)
			public ModelAndView cView(@RequestParam("cId") String cId,@RequestParam("scCode") String scCode,@RequestParam("cId") String cQnAcId) {
				
				System.out.println("scCode : " + scCode);
				//점주 정보
				mav = cs.cView(cId);
				//업체 관리 
				mav = cs.mgstore(scCode);
				//나의 문의 현황(점주)
				mav = cs.C_myQnAList(cQnAcId);
				
				return mav;
			}
			
			
			
			
			
			
			// 점주 수정하기 
			@RequestMapping(value = "/cModify", method = RequestMethod.POST)
			public ModelAndView cModify(CompanyDTO Company) {
				
				mav = cs.cModify(Company);
				
				return mav;
			}
			//  점주 삭제 
			@RequestMapping(value = "/cDel", method = RequestMethod.GET)
			public @ResponseBody String cDel(@RequestParam("cId") String cId) {
				
				String resultMSG =cs.cDel(cId);
				
			
				return resultMSG;
			}
			
			
			
			
			// 점주 아이디 찾기 checkId 
			  @RequestMapping(value = "/cfindid", method = RequestMethod.GET, produces = "application/text; charset=utf-8") 
			  public @ResponseBody String CheckId(@RequestParam("cName") String cName, @RequestParam("cPhone") String cPhone) {
			  System.out.println("cName , cPhone : " + cName + cPhone);
				  String checkid = cs.CheckcId(cName, cPhone);
				  
				  return checkid;
			  
			  }
			
			// 점주  비밀번호 찾기 페이지 
			@RequestMapping(value = "/findPw", method = RequestMethod.GET)
			public String cfindPwForm() {
				return "cFindPw";
			}
			
			//점주 비밀번호 변경
			@RequestMapping(value = "/changecPw", method = RequestMethod.POST)
			public ModelAndView cChange(@ModelAttribute CompanyDTO company) {
				
			System.out.println("company"+company);
			
			mav = cs.cChange(company);
			return mav;
				}
			
			//점주 이메일 인증 번호 보내기
			@RequestMapping(value = "/cfindpw", method = RequestMethod.POST)
			public @ResponseBody String sendcEmail(@RequestParam("cId") String cId,@RequestParam("cEmail") String cEmail) {
				
			String code = cs.sendcEmail(cId,cEmail);
			return code;
			}	
			
			
			
			// 이메일 인증 후 ckeyalter
			@RequestMapping(value = "/ckeyalter", method = RequestMethod.GET)
			public ModelAndView ckeyAlter(@ModelAttribute CompanyDTO Company){
				mav = cs.ckeyAlter(Company);
				return mav;
			}
		
		
		
		
		
			// 업체 정보 수정페이지로 이동
			@RequestMapping(value = "/sModifyForm")
			public ModelAndView sModifyForm(@RequestParam("storeCode") String storeCode, @RequestParam("sName") String sName) {
				
				
				
				System.out.println("storeCode : " + storeCode);
				mav.addObject("sName", sName);
				System.out.println("sName : " + sName);
				mav.addObject("storeCode",storeCode);
				
				mav.setViewName("sModifyForm");
				return mav;
				
			}
			
			//업체 수정 메소드
			 @RequestMapping(value="/sModify", method = RequestMethod.POST) 
			 public ModelAndView sModify(@ModelAttribute StoreDTO store, @RequestParam("addr1") String addr1, @RequestParam("addr2") String addr2, @RequestParam("addr3") String addr3, @RequestParam("sFood") String sFood,
						@RequestParam("keyword1") String keyword1, @RequestParam("keyword2") String keyword2, @RequestParam("keyword3") String keyword3, @RequestParam("keyword4") String keyword4, @RequestParam("keyword5") String keyword5) throws IllegalStateException, IOException { 
					 
				 		store.setsFood("#" + sFood);
				 		store.setsKeyword("#"+ keyword1+", #"+ keyword2+", #"+ keyword3+", #"+ keyword4+", #"+ keyword5);
					 store.setsAddr(addr1 + ","+addr2 + addr3 );
					 
					 if(store.getsSeat()!= null) {
						 store.setsSeat("단체석 있음");
						 
					 }else {
						 
						 store.setsSeat("단체석 없음");
					 }
					 
					 if(store.getsPark()!= null) {
						 store.setsPark("주차 가능");
					 } else {
						 store.setsPark("주차 불가능");
					 }
					 
					 
					 System.out.println(store);
				 mav = cs.sModify(store);
				 System.out.println(store);
				 
				 return mav; 
				 }
		
			//  점포 삭제 
			@RequestMapping(value = "/sDel", method = RequestMethod.GET)
			public @ResponseBody String sDel(@RequestParam("storeCode") String storeCode) {
							
			String resultMSG =cs.sDel(storeCode);
							
						
			return resultMSG;
			}
		
		
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
}
