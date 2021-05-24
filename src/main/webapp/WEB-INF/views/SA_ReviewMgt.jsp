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
	<form action="sa_selCat4">
			<th>카테고리 검색</th>
			<td><select name="selectVal">
					<optgroup label="카테고리">
						<option value="rCode" ${selectVal == 'rCode' ? 'selected="selected"' : '' }>리뷰코드</option>
						<option value="rContents" ${selectVal == 'rContents' ? 'selected="selected"' : '' }>내용</option>
						<option value="rmId" ${selectVal == 'rmId' ? 'selected="selected"' : '' }>작성자</option>
						<option value="all" ${selectVal == 'all' ? 'selected="selected"' : '' }>통합</option>
					</optgroup>
			</select>
			<input type="text" name="keyword" value="${keyword}">
			<input type="submit" value="검색"></td></form>
		<table>
			<thead>
				<tr>
					<th class="SA_FAQViewTh" style="width:10%">리뷰코드</th>
					<th class="SA_FAQViewTh" style="width:13%">날짜</th>
					<th class="SA_FAQViewTh" style="width:13%">업체명</th>
					<th class="SA_FAQViewTh" style="width:13%">작성자</th>
					<th class="SA_FAQViewTh" style="width:41%">내용</th>
					<th class="SA_FAQViewTh" style="width:10%">삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="r" items="${reviewList}">
					<tr>
						<td class="SA_FAQViewTdLong"><a href="sa_viewReview?rCode=${r.rCode}" onclick="window.open(this.href,'_blank',
								'width=710px,height=900px,toolbars=no,scrollbars=no'); return false;">${r.rCode}</a></td>
						<td class="SA_FAQViewTdLong">${fn:substring(r.rDate,0,10) }</td>
						<td class="SA_FAQViewTdLong">${r.sName}</td>
						<td class="SA_FAQViewTdLong">${r.rmId}</td>
						<td class="SA_FAQViewTdLong">
						<c:if test="${fn:length(r.rContents) > 8}">
						${fn:substring(r.rContents,0,8) }..
						</c:if>
						<c:if test="${fn:length(r.rContents) < 9}">
						${r.rContents}
						</c:if></td>
						
						<td class="SA_FAQViewTdLong"><button onclick="location.href='sa_reviewDel?rCode=${r.rCode}'">삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<!-- 페이징 처리 -->
	<!-- [이전]에 대한 페이징 처리 -->
	<c:if test="${paging.page<=1}">[이전] </c:if>
	<c:if test="${paging.page>1 && not empty keyword}">
		<a href="sa_selCat4?page=${paging.page-1}&selectVal=${selectVal}&keyword=${keyword}">[이전] </a>
	</c:if>
		<c:if test="${paging.page>1 && empty keyword}">
		<a href="sa_reviewMgt?page=${paging.page-1}">[이전] </a>
	</c:if>

	<!-- 페이지 번호에 대한 페이징 처리 -->
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i"
		step="1">
		<c:choose>
			<c:when test="${i eq paging.page}"> ${i} </c:when>
			<c:otherwise>
				<c:if test="${not empty keyword}">
					<a href="sa_selCat4?page=${i}&selectVal=${selectVal}&keyword=${keyword}">${i}</a>
				</c:if>
				<c:if test="${empty keyword}">
					<a href="sa_reviewMgt?page=${i}">${i}</a>
				</c:if>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<!-- [다음]에 대한 페이징 처리 -->
	<c:if test="${paging.page>=paging.maxPage}"> [다음]</c:if>
	<c:if test="${paging.page<paging.maxPage}">
		<c:if test="${not empty keyword}">
		<a href="sa_selCat4?page=${paging.page+1}&selectVal=${selectVal}&keyword=${keyword}">[다음] </a>
		</c:if>
		<c:if test="${empty keyword}">
		<a href="sa_reviewMgt?page=${paging.page+1}"> [다음]</a>
		</c:if>
	</c:if>
	</div>

</body>
</html>