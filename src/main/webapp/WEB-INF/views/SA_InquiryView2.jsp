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
<title>1:1 문의 관리</title>
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
		<div id="sa_inquiryModiv">
			<form action="sa_resInquiry2">
				<table class="SA_FAQView">
					<input type="hidden" value="${inquiryView.cQnACode}"
						name="cQnACode">
					<tr>
						<th class="SA_FAQViewTh">문의코드</th>
						<td class="SA_FAQViewTdLong">${inquiryView.cQnACode}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">카테고리</th>
						<td class="SA_FAQViewTdLong">${inquiryView.cQnACat}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">회원 ID</th>
						<td class="SA_FAQViewTdLong">${inquiryView.cQnAcId}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">문의 제목</th>
						<td class="SA_FAQViewTdLong">${inquiryView.cQnATitle}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">문의 내용</th>
						<td class="SA_FAQViewTdLong">${fn:replace(inquiryView.cQnAContents, cn, br)}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">문의 일자</th>
						<td class="SA_FAQViewTdLong">${fn:substring(inquiryView.cQnADate,0,10)}</td>
					</tr>

					<tr>

						<th class="SA_FAQViewTh">관리자 답변</th>
						<td class="SA_FAQViewTdLong"><c:if
								test="${inquiryView.cQnAAnswer != null}">
				${fn:replace(inquiryView.cQnAAnswer, cn, br)}
				</c:if> <c:if test="${inquiryView.cQnAAnswer eq null}">
								<textarea style="width: 800px; height: 300px;" name="cQnAAnswer"></textarea>
							</c:if></td>

					</tr>

					<tr>
						<td colspan="2"><c:if
								test="${inquiryView.cQnAAnswer != null}">
							</c:if> <c:if test="${inquiryView.cQnAAnswer eq null}">
								<input type="submit" value="답변 등록">
							</c:if>

							<button onclick="SA_InquiryModify()">답변 수정</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	
</body>
<script>
	function SA_InquiryModify(){
		var output="<form action='sa_resInquiryModi2' method='POST' >";
		
		output+="<table class='SA_FAQView'>";
		output+="<input type='hidden' value='${inquiryView.cQnACode}' name='cQnACode'>";
		output+="<tr>";
		output+="<th class='SA_FAQViewTh'>문의코드</th>";
		output+="<td class='SA_FAQViewTdLong'>${inquiryView.cQnACode}</td>";
		output+="</tr><tr>";
		output+="<th class='SA_FAQViewTh'>카테고리</th>";
		output+="<td class='SA_FAQViewTdLong'>${inquiryView.cQnACat}</td>";
		output+="<tr><th class='SA_FAQViewTh'>회원 ID</th>";
		output+="<td class='SA_FAQViewTdLong'>${inquiryView.cQnAcId}</td></tr>";
		output+="</tr><tr><th class='SA_FAQViewTh'>문의 제목</th>";
		output+="<td class='SA_FAQViewTdLong'>${inquiryView.cQnATitle}</td>";
		output+="</tr><tr>";
		output+="<th class='SA_FAQViewTh'>문의 내용</th>";
		output+="<td class='SA_FAQViewTdLong'>${fn:replace(inquiryView.cQnAContents, cn, br)}</td>";
		output+="</tr><tr>";
		output+="<th class='SA_FAQViewTh'>문의 일자</th>";
		output+="<td class='SA_FAQViewTdLong'>${inquiryView.cQnATitle}</td>";
		output+="</tr><tr>";
		output+="<th class='SA_FAQViewTh'>관리자 답변</th>";
		output+="<td class='SA_FAQViewTdLong'>";
		output+="<textarea style='width: 800px; height: 300px;' name='cQnAAnswer'></textarea>";
		output+="</tr>";
		output+="<tr>";
		output+="<td colspan='2'>";
		output+="<input type='submit' value='답변 수정'></td></tr>";
		output+="</table>";
		output+="</form>";
	
		document.getElementById("sa_inquiryModiv").innerHTML = output;
	}
</script>
</html>