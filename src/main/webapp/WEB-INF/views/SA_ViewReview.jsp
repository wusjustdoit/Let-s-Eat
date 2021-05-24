<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	<div class="SA_MainBody">
	<table>
		<tr>
			<th class="SA_FAQViewTh">리뷰코드</th>
			<th class="SA_FAQViewTh">아이디</th>
			<th class="SA_FAQViewTh">업체명</th>
			<th class="SA_FAQViewTh">작성날짜</th>

		</tr>
		<tr>
			<td class="SA_FAQViewTdLong">${viewReview.rCode}</td>
			<td class="SA_FAQViewTdLong">${viewReview.rmId}</td>
			<td class="SA_FAQViewTdLong">${viewReview.sName}</td>
			<td class="SA_FAQViewTdLong">${fn:substring({viewReview.rDate},1,11)}</td>
		</tr>
		<tr>
			<th class="SA_FAQViewTh" colspan="4">내용</th>
		</tr>
		<tr>
			<td class="SA_FAQViewTdLong" colspan="4" style="height:400px; text-align:center;">${viewReview.rContents}</td>
		</tr>
		<tr>
			<td colspan="4"><button onclick="location.href = 'sa_reviewDel2?rCode=${viewReview.rCode}'">삭제</button>
				<button onclick="window.history.back()">뒤로가기</button></td>
		</tr>
	</table>

</body>
</html>