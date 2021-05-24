<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
pageContext.setAttribute("br", "<br/>");
pageContext.setAttribute("cn", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체 상세 보기</title>
<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
<link rel="stylesheet" type="text/css" href="resources/css/SA_css.css">
</head>
<body>
	<div class="SA_leftHome">
		<button class="SA_homeButton" onclick="location.href='sa_index'"
			style='cursor: pointer'>홈 로고(관리자 인덱스로)</button>
	</div>
	<div class="SA_loginStatus">
			관리자 모드 접속 중 <button onclick="location.href='logout'">로그아웃</button>
	</div>
	<div class="SA_leftMenu">
		<button class="SA_leftMenuButton" onclick="location.href='sa_mMgt'"
			style='cursor: pointer'>회원 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_sMgt'"
			style='cursor: pointer'>업체 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_sCfmList'"
			style='cursor: pointer'>업체 가입승인</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_reviewMgt'"
			style='cursor: pointer'>리뷰 관리</button>
		<button class="SA_leftMenuButton"
			onclick="location.href='sa_inquiryList'" style='cursor: pointer'>1:1문의
			관리</button>
		<button class="SA_leftMenuButton"
			onclick="location.href='sa_writeFAQForm'" style='cursor: pointer'>자주
			묻는 질문 작성</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_FAQList'"
			style='cursor: pointer'>자주 묻는 질문 관리</button>
	</div>
	<div class="SA_MainBody">
		<div id="sa_cModiv">
			<form action="sa_resInquiry">
				<table class="SA_FAQView">
					<input type="hidden" value="${cmember.cCode}" name="cCode">
					<tr>
						<th class="SA_FAQViewTh">아이디</th>
						<td class="SA_FAQViewTdLong">${cmember.cId}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">핸드폰 번호</th>
						<td class="SA_FAQViewTdLong">${cmember.cPhone}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">이름</th>
						<td class="SA_FAQViewTdLong">${cmember.cName}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">이메일</th>
						<td class="SA_FAQViewTdLong">${cmember.cEmail}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">인증여부</th>
						<td class="SA_FAQViewTdLong">
						<c:if test="${cmember.cKey == 0}">
							미인증
							</c:if> <c:if test="${cmember.cKey == 1}">
							인증 완료
							</c:if> <c:if test="${cmember.cKey == 2}">
							탈퇴
							</c:if></td>
					</tr>
					<tr>
						<td colspan="2">
						<button onclick="SA_cModify()">수정</button>
						</td>
					</tr>
				</table>
			</form>
			<button onclick="location.href='sa_cDel?cCode=${cmember.cCode}'">탈퇴</button>
			<button onclick="window.history.back()">뒤로가기</button>
		</div>
	</div>
	
</body>
<script>
	function SA_cModify(){
		var output="<form action='sa_cModi' method='POST' ><table>";
		
		output+="<input type='hidden' value='${cmember.cCode}' name='cCode'>";
		output+="<tr><th>아이디</th>";
		output+="<td><td>${cmember.cId}</tr>";
		output+="<tr><th>핸드폰 번호</th>";
		output+="<td><input type='text' name='cPhone' placeholder='${cmember.cPhone}'><td></tr>";
		output+="<tr><th>이메일</th>";
		output+="<td><input type='email' name='cEmail' placeholder='${cmember.cEmail}'><td></tr>";
		
		output+="<br><tr>";
		output+="<td colspan='2'>";
		output+="<input type='submit' value='수정'>";
		output+="</td>";
		output+="</tr>";
		
		output+="</table></form>";
		
		document.getElementById("sa_cModiv").innerHTML = output;
	}
</script>
</html>