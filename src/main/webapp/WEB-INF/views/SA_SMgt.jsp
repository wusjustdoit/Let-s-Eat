<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
<!-- jQuery -->

<script src="resources/js/jquery-3.6.0.js"></script>
<!-- Google Charts -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<title>관리자 페이지</title>
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
		<button class="SA_leftMenuButton"
			onclick="location.href='sa_sCfmList'" style='cursor: pointer'>업체
			가입승인</button>
		<button class="SA_leftMenuButton"
			onclick="location.href='sa_reviewMgt'" style='cursor: pointer'>리뷰
			관리</button>
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

		<table width="100%">
			<thead>
				<h2><%=sf.format(nowTime)%>&nbsp;<span id="dpTime"></span>
				</h2>

				<tr>
					<th class="SA_FAQViewTh">승인 대기중 업체 수</th>
					<th class="SA_FAQViewTh">총 업체 수</th>
				</tr>
				<tr>
					<td class="SA_FAQViewTdLong">${watingStoreNum}</td>
					<td class="SA_FAQViewTdLong">${sumStoreNum}</td>
				</tr></table>
			</thead>
			<tbody>
			<table><tr>
				<div id="column_chart_div2" style="width: 100%; height: 400px;"></div>
			</tr></table>
			</tbody>
		
	</div>
	<div class="SA_MainBody2">
	<form action="sa_selCat3">
			<th>카테고리 검색</th>
			<td><select name="selectVal">
					<optgroup label="카테고리">
						<option value="sName" ${selectVal == 'sName' ? 'selected="selected"' : '' }>업체명</option>
						<option value="cId" ${selectVal == 'cId' ? 'selected="selected"' : '' }>점주아이디</option>
						<option value="storeCode" ${selectVal == 'storeCode' ? 'selected="selected"' : '' }>업체코드</option>
						<option value="all" ${selectVal == 'all' ? 'selected="selected"' : '' }>통합</option>
					</optgroup>
			</select>
			<input type="text" name="keyword" value="${keyword}">
			<input type="submit" value="검색"></td></form>
		<table width="100%">
			<thead>
				<tr>
					<th class="SA_FAQViewTh">업체코드</th>
					<th class="SA_FAQViewTh">점주아이디</th>
					<th class="SA_FAQViewTh">업체명</th>
					<th class="SA_FAQViewTh">사업자번호</th>
					<th class="SA_FAQViewTh">연락처</th>
					<th class="SA_FAQViewTh">상태</th>
					<th class="SA_FAQViewTh">삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s" items="${storeList}">
					<tr>
						<td class="SA_FAQViewTdLong">${s.storeCode}</td>
						<td class="SA_FAQViewTdLong">${s.cId}</td>
						<td class="SA_FAQViewTdLong"><a href="sa_sView?storeCode=${s.storeCode}">${s.sName}</a></td>
						<td class="SA_FAQViewTdLong">${s.sbNum}</td>
						<td class="SA_FAQViewTdLong">${s.sPhone}</td>
						<td class="SA_FAQViewTdLong"><c:if test="${s.sStatus==0}">
							미승인
							</c:if> <c:if test="${s.sStatus==1}">
							승인
							</c:if> <c:if test="${s.sStatus==2}">
							거절
							</c:if> <c:if test="${s.sStatus==3}">
							이용 중지
							</c:if>
							
							</td>
							
						<c:if test="${s.sStatus==1}">	
						<td class="SA_FAQViewTdLong">
							<button onclick="location.href='sa_sDel?storeCode=${s.storeCode}'">삭제</button>
						</td>
						</c:if>
						
						<c:if test="${s.sStatus==0 || s.sStatus==2 || s.sStatus==3}">	
						<td class="SA_FAQViewTdLong">
							<button onclick="" disabled>삭제</button>
						</td>
						</c:if>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	<!-- 페이징 처리 -->
	<!-- [이전]에 대한 페이징 처리 -->
	<c:if test="${paging.page<=1}">[이전] </c:if>
	<c:if test="${paging.page>1 && not empty keyword}">
		<a href="sa_selCat3?page=${paging.page-1}&selectVal=${selectVal}&keyword=${keyword}">[이전] </a>
	</c:if>
		<c:if test="${paging.page>1 && empty keyword}">
		<a href="sa_sMgt?page=${paging.page-1}">[이전] </a>
	</c:if>

	<!-- 페이지 번호에 대한 페이징 처리 -->
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i"
		step="1">
		<c:choose>
			<c:when test="${i eq paging.page}"> ${i} </c:when>
			<c:otherwise>
				<c:if test="${not empty keyword}">
					<a href="sa_selCat3?page=${i}&selectVal=${selectVal}&keyword=${keyword}">${i}</a>
				</c:if>
				<c:if test="${empty keyword}">
					<a href="sa_sMgt?page=${i}">${i}</a>
				</c:if>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<!-- [다음]에 대한 페이징 처리 -->
	<c:if test="${paging.page>=paging.maxPage}"> [다음]</c:if>
	<c:if test="${paging.page<paging.maxPage}">
		<c:if test="${not empty keyword}">
		<a href="sa_selCat3?page=${paging.page+1}&selectVal=${selectVal}&keyword=${keyword}">[다음] </a>
		</c:if>
		<c:if test="${empty keyword}">
		<a href="sa_sMgt?page=${paging.page+1}"> [다음]</a>
		</c:if>
	</c:if>
	</div>
</body>
<script>
//구글 시각화 API를 로딩하는 메소드
	google.charts.load('current', {packages: ['corechart']});
	google.charts.setOnLoadCallback(columnChart2);

	function columnChart2() {
		// 버튼 클릭 시 ajax를 사용하여 서버로부터 json 배열 객체를 가져왔다고 가정함
		var arr = [
		['날짜', '승인 업체 수'],
		['${dateResult[9]}', ${storeConfirmDateNum.day10SNum}],
		['${dateResult[8]}', ${storeConfirmDateNum.day9SNum}],
		['${dateResult[7]}', ${storeConfirmDateNum.day8SNum}],
		['${dateResult[6]}', ${storeConfirmDateNum.day7SNum}],
		['${dateResult[5]}', ${storeConfirmDateNum.day6SNum}],
		['${dateResult[4]}', ${storeConfirmDateNum.day5SNum}],
		['${dateResult[3]}', ${storeConfirmDateNum.day4SNum}],
		['${dateResult[2]}', ${storeConfirmDateNum.day3SNum}],
		['${dateResult[1]}', ${storeConfirmDateNum.day2SNum}],
		['${dateResult[0]}', ${storeConfirmDateNum.day1SNum}]
		];
		// 실 데이터를 가진 데이터테이블 객체를 반환하는 메소드
		var dataTable = google.visualization.arrayToDataTable(arr);
		// 옵션객체 준비
		var options = {
			title: '업체 수 추이',
			hAxis: {
				title: '업체 승인 수 추이',
				titleTextStyle: {color: 'blue'}
			}
		};

		// 차트를 그릴 영역인 div 객체를 가져옴

		var objDiv = document.getElementById('column_chart_div2');

		// 인자로 전달한 div 객체의 영역에 컬럼차트를 그릴수 있는 차트객체를 반환

		var chart = new google.visualization.ColumnChart(objDiv);

		// 차트객체에 데이터테이블과 옵션 객체를 인자로 전달하여 차트 그리는 메소드

		chart.draw(dataTable, options);

	} // drawColumnChart2()의 끝
</script>
<script type="text/javascript">
	setInterval("dpTime()", 1000);
	function dpTime() {
		var now = new Date();
		hours = now.getHours();
		minutes = now.getMinutes();
		seconds = now.getSeconds();

		if (hours > 12) {
			hours -= 12;
			ampm = "오후 ";
		} else {
			ampm = "오전 ";
		}
		if (hours < 10) {
			hours = "0" + hours;
		}
		if (minutes < 10) {
			minutes = "0" + minutes;
		}
		if (seconds < 10) {
			seconds = "0" + seconds;
		}
		document.getElementById("dpTime").innerHTML = ampm + hours + ":"
				+ minutes + ":" + seconds;
	}
</script>
</html>