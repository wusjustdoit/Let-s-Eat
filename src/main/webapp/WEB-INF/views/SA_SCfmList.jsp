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
		<table width="100%">
			<thead>
				<tr>
					<th class="SA_FAQViewTh">업체코드</th>
					<th class="SA_FAQViewTh">점주아이디</th>
					<th class="SA_FAQViewTh">업체명</th>
					<th class="SA_FAQViewTh">사업자번호</th>
					<th class="SA_FAQViewTh">연락처</th>
					<th class="SA_FAQViewTh">승인</th>
					<th class="SA_FAQViewTh">거절</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="w" items="${WatingSList}">
					<tr>
						<td class="SA_FAQViewTdLong">${w.storeCode}</td>
						<td class="SA_FAQViewTdLong">${w.cId}</td>
						<td class="SA_FAQViewTdLong"><a href="sa_sView?storeCode=${w.storeCode}">${w.sName}</a></td>
						<td class="SA_FAQViewTdLong">${w.sbNum}</td>
						<td class="SA_FAQViewTdLong">${w.sPhone}</td>
						<td class="SA_FAQViewTdLong"><button onclick="location.href='sa_passS?storeCode=${w.storeCode}'">승인</button></td>
						<td class="SA_FAQViewTdLong"><button onclick="location.href='sa_cancelS?storeCode=${w.storeCode}'">거절</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<!-- 페이징 처리 -->
	<!-- [이전]에 대한 페이징 처리 -->
	<c:if test="${paging.page<=1}">[이전] </c:if>
	<c:if test="${paging.page>1}">
		<a href="sa_sCfmList?page=${paging.page-1}">[이전] </a>
	</c:if>

	<!-- 페이지 번호에 대한 페이징 처리 -->
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i"
		step="1">
		<c:choose>
			<c:when test="${i eq paging.page}"> ${i} </c:when>
			<c:otherwise>
				<a href="sa_sCfmListpage=${i}">${i}</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<!-- [다음]에 대한 페이징 처리 -->
	<c:if test="${paging.page>=paging.maxPage}"> [다음]</c:if>
	<c:if test="${paging.page<paging.maxPage}">
		<a href="sa_sCfmList?page=${paging.page+1}"> [다음]</a>
	</c:if>
	</div>
</body>
</html>