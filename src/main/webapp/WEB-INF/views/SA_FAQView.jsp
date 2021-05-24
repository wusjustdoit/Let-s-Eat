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
<title>관리자 페이지</title>
<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
<link rel="stylesheet" type="text/css" href="resources/css/SA_css.css">
</head>
<body>
	<div class="SA_leftHome">
		<button class="SA_homeButton" onclick="location.href='sa_index'" style='cursor: pointer'>홈 로고(관리자 인덱스로)</button>
	</div>
	<div class="SA_loginStatus">
			관리자 모드 접속 중 <button onclick="location.href='logout'">로그아웃</button>
	</div>
	<div class="SA_leftMenu">
		<button class="SA_leftMenuButton" onclick="location.href='sa_mMgt'" style='cursor: pointer'>회원 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_sMgt'" style='cursor: pointer'>업체 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_sCfmList'" style='cursor: pointer'>업체 가입승인</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_reviewMgt'" style='cursor: pointer'>리뷰 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_inquiryList'" style='cursor: pointer'>1:1문의 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_writeFAQForm'" style='cursor: pointer'>자주 묻는 질문 작성</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_FAQList'" style='cursor: pointer'>자주 묻는 질문 관리</button>
	</div>
	<div class="SA_MainBody" >
		<div id="sa_faqModiv">
		<table class="SA_FAQView">
			<tr>
				<th class="SA_FAQViewTh">문의코드</td>
				<td class="SA_FAQViewTdLong">${faqView.FAQCode}</td>
			</tr>
			<tr>
				<th class="SA_FAQViewTh">카테고리</td>
				<td class="SA_FAQViewTdLong">${faqView.FAQCat}</td>
			</tr>
			<tr>
				<th class="SA_FAQViewTh">제목</td>
				<td class="SA_FAQViewTdLong">${faqView.FAQTitle}</td>
			</tr>
			<tr>
				<th class="SA_FAQViewTh">내용</td>
				<td class="SA_FAQViewTdLong2">${fn:replace(faqView.FAQContents, cn, br)}</td>
			</tr>
			<tr>
				<td colspan="2">
					<button onclick="SA_FAQModify()">수정</button>
					<button onclick="location.href='sa_FAQDel?FAQCode=${faqView.FAQCode}'">삭제</button>
				</td>
			</tr>
		</table>
		</div>
	</div>
</body>
<script>
	function SA_FAQModify(){
		var output="<form action='sa_FAQModify' method='POST' >";
		
		output+="<input type='hidden' value='${faqView.FAQCode}' name='FAQCode'>";
		output+="<th>카테고리</th>";
		output+="<td><select name = 'FAQCat'>";
		output+="<optgroup label='카테고리'>";
		output+="<option value = '예약'>예약</option>";
		output+="<option value = '사이트 이용'>사이트 이용</option>";
		output+="<option value = '결제'>결제</option>";
		output+="<option value = '기타'>기타</option></optgroup></select>";
		output+="</td><br><tr>";
		output+="<th>제목</th>";
		output+="<td colspan='3'><input type='text' name='FAQTitle' style='width:800px;' placeholder='${faqView.FAQTitle}'></td>";
		output+="</tr><br><tr>";
		output+="<th>내용</th>";
		output+="<td colspan='3'><textarea style='width:800px; height:300px;' name='FAQContents'></textarea></td>";
		output+="</tr><br><tr>";
		output+="<td colspan='2'>";
		output+="<input type='submit' value='수정'>";
		output+="</td>";
		output+="</tr>";
		
		output+="</form>";
		
		document.getElementById("sa_faqModiv").innerHTML = output;
	}
</script>
</html>