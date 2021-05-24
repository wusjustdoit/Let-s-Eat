package com.icia.eat.api;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

public class NaverJoinApi {

	
	// 애플리케이션 등록 후 발급받은 클라이언트 아이디와 패스워드
	private final static String CLIENT_ID = "4jt6LO3hA1v45Wx4QGth";
	private final static String CLIENT_SECRET = "SiSDvmenwz";
	
	// Callback URL http://localhost:9091/member/naverjoinok
	private final static String REDIRECT_URI = "http://localhost:9091/eat/naverjoinok";
	
	// 애플리케이션이 생성한 상태 토큰
		private final static String SESSION_STATE = "oauth_state";
		
		// 내 프로필 조회
		private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
		
		// 네이버 아이디로 인증 URL생성 메소드
		public String getAutorizationUrl(HttpSession session) {
			
			// 세션 유효성 검증을 위하여 난수 생성
			String state = generateRandomString();
			
			// 생성한 난수 값을 session에 저장
			setSession(session, state);
			
			// Scribe에서 제공하는 인증 URL 생성 기능을 이용하여 네아로 인증 URL 생성
			OAuth20Service oauthService = new ServiceBuilder().apiKey(CLIENT_ID).apiSecret(CLIENT_SECRET)
					.callback(REDIRECT_URI).state(state).build(NaverApi.instance());
			
			return oauthService.getAuthorizationUrl();
		}
		
		// 세션 유효성 검증을 위한 난수 생성 메소드
		private String generateRandomString() {
			return UUID.randomUUID().toString();
		}
		
		// 생성한 난수 값을 session에 저장하는 메소드
		private void setSession(HttpSession session, String state) {
			session.setAttribute(SESSION_STATE, state);
		}
		
		// session에서 데이터 가져오기
		private String getSession(HttpSession session) {
			return (String)session.getAttribute(SESSION_STATE);
		}
		
		
		// 네이버 아이디로 Callback 처리 및 AccessToken 획득 메소드
		public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException {
			
			// Callback으로 전달받은 세션검증용 난수값과 세션에 저장되어 있는 값이 일치하는지 확인
			String sessionState = getSession(session);
			
			if(StringUtils.pathEquals(sessionState, state)) {
				OAuth20Service oauthService = new ServiceBuilder().apiKey(CLIENT_ID).apiSecret(CLIENT_SECRET)
						.callback(REDIRECT_URI).state(state).build(NaverApi.instance());
				
				// Scribe에서 제공하는 AccessToken 획득 기능으로 네아로 AccessToken을 획득
				OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
				return accessToken;
			}
			
			return null;
		}
		
		// AccessToken을 이용하여 네이버 사용자 프로필 API를 호출
		public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException {
			OAuth20Service oauthService = new ServiceBuilder().apiKey(CLIENT_ID)
															  .apiSecret(CLIENT_SECRET)
															  .callback(REDIRECT_URI)
															  .build(NaverApi.instance());
			
			OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
			
			oauthService.signRequest(oauthToken, request);
			Response response = request.send();
			
			return response.getBody();		
		}
		
	
	
	
	
}
