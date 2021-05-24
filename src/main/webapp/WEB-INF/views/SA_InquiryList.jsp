<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	<button onclick="location.href='sa_inquiryList'">회원</button>
	<button onclick="location.href='sa_inquiryList2'">점주</button>
	<form action="sa_selCat5">
			<th>카테고리 검색</th>
			<td><select name="selectVal">
					<optgroup label="카테고리">
						<option value="예약관련" ${selectVal == '예약관련' ? 'selected="selected"' : '' }>예약관련</option>
						<option value="사이트 이용" ${selectVal == '사이트 이용' ? 'selected="selected"' : '' }>사이트 이용</option>
						<option value="결제관련" ${selectVal == '결제관련' ? 'selected="selected"' : '' }>결제관련</option>
						<option value="기타" ${selectVal == '기타' ? 'selected="selected"' : '' }>기타</option>
					</optgroup>
			</select><input type="submit" value="검색"></td></form>
		<table>
			<thead>
				<tr>
					<th class="SA_FAQViewTh">문의코드</th>
					<th class="SA_FAQViewTh">카테고리</th>
					<th class="SA_FAQViewTh">제목</th>
					<th class="SA_FAQViewTh">날짜</th>
					<th class="SA_FAQViewTh">답변 여부</th>
					<th class="SA_FAQViewTh">관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" items="${inquiryList}">
					<tr>
						<td class="SA_FAQViewTdLong" style= "width:10%">${i.mQnACode}</td>
						<td class="SA_FAQViewTdLong" style= "width:13%">${i.mQnACat}</td>
						<td class="SA_FAQViewTdLong" style= "width:44%">${i.mQnATitle}</td>
						<td class="SA_FAQViewTdLong" style= "width:13%">${fn:substring(i.mQnADate,0,10)}</td>
						<td class="SA_FAQViewTdLong" style= "width:10%">
						<c:if test="${i.mQnAKey eq '0'}">
						대기</c:if>
						<c:if test="${i.mQnAKey eq '1'}">
						완료</c:if>
						</td>
						<td class="SA_FAQViewTdLong" style= "width:10%"><button onclick="location.href='sa_inquiryView?mQnACode=${i.mQnACode}'">보기</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<!-- 페이징 처리 -->
	<!-- [이전]에 대한 페이징 처리 -->
	<c:if test="${paging.page<=1}">[이전] </c:if>
	<c:if test="${paging.page>1 && not empty keyword}">
		<a href="sa_selCat5?page=${paging.page-1}&selectVal=${selectVal}&keyword=${keyword}">[이전] </a>
	</c:if>
		<c:if test="${paging.page>1 && empty keyword}">
		<a href="sa_inquiryList?page=${paging.page-1}">[이전] </a>
	</c:if>

	<!-- 페이지 번호에 대한 페이징 처리 -->
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i"
		step="1">
		<c:choose>
			<c:when test="${i eq paging.page}"> ${i} </c:when>
			<c:otherwise>
				<c:if test="${not empty keyword}">
					<a href="sa_selCat5?page=${i}&selectVal=${selectVal}&keyword=${keyword}">${i}</a>
				</c:if>
				<c:if test="${empty keyword}">
					<a href="sa_inquiryList?page=${i}">${i}</a>
				</c:if>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<!-- [다음]에 대한 페이징 처리 -->
	<c:if test="${paging.page>=paging.maxPage}"> [다음]</c:if>
	<c:if test="${paging.page<paging.maxPage}">
		<c:if test="${not empty keyword}">
		<a href="sa_selCat5?page=${paging.page+1}&selectVal=${selectVal}&keyword=${keyword}">[다음] </a>
		</c:if>
		<c:if test="${empty keyword}">
		<a href="sa_inquiryList?page=${paging.page+1}"> [다음]</a>
		</c:if>
	</c:if>
	</div>
</body>
<script>
	
</script>
</html>