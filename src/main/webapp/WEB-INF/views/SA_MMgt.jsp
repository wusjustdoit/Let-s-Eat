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
<!-- jQuery -->
<script src="resources/js/jquery-3.6.0.js"></script>
<!-- Google Charts -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<title>관리자 페이지</title>
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
			
				<h2><%=sf.format(nowTime)%>&nbsp;<span id="dpTime"></span>
				</h2>

				<tr>
					<th class="SA_FAQViewTh" colspan="2" style="width:33%">금일 가입수</th>
					<th class="SA_FAQViewTh" colspan="2" style="width:33%">총 회원수</th>
					<th class="SA_FAQViewTh">금일 예약수</th>
				</tr>
				<tr>
					<td class="SA_FAQViewTdLong">회원 : ${memberJoinDateNum.day1MNum}</td>
					<td class="SA_FAQViewTdLong">점주 : ${cmemberJoinDateNum.day1CNum}</td>
					<td class="SA_FAQViewTdLong">회원 : ${sumMember}</td>
					<td class="SA_FAQViewTdLong">점주 : ${sumCMember}</td>
					<td class="SA_FAQViewTdLong">${sumBook}</td>
				</tr>
			</table>
			<table>
				<tr>
				<div id="column_chart_div1" style="width: 50%; height: 400px; float:left;"></div>
				<div id="column_chart_div2" style="width: 50%; height: 400px; float:right;"></div>
				</tr>
		</table>
	</div>
	<div class="SA_MainBody2">
	<button onclick="location.href='sa_mMgt'">회원</button>
	<button onclick="location.href='sa_mMgt2'">점주</button>
	<form action="sa_selCat1">
			<th>카테고리 검색</th>
			<td><select name="selectVal">
					<optgroup label="카테고리">
						<option value="mCode" ${selectVal == 'mCode' ? 'selected="selected"' : '' }>회원코드</option>
						<option value="mId" ${selectVal == 'mId' ? 'selected="selected"' : '' }>아이디</option>
						<option value="mName" ${selectVal == 'mName' ? 'selected="selected"' : '' }>이름</option>
						<option value="mEmail" ${selectVal == 'mEmail' ? 'selected="selected"' : '' }>이메일</option>
						<option value="all" ${selectVal == 'all' ? 'selected="selected"' : '' }>통합</option>
					</optgroup>
			</select>
			<input type="text" name="keyword" value="${keyword}">
			<input type="submit" value="검색"></td></form>
		<table width="100%">
			<thead>
				<tr>
					<th class="SA_FAQViewTh">회원코드</th>
					<th class="SA_FAQViewTh">아이디</th>
					<th class="SA_FAQViewTh">이름</th>
					<th class="SA_FAQViewTh">이메일</th>
					<th class="SA_FAQViewTh">예약수</th>
					<th class="SA_FAQViewTh">상태</th>
					<th class="SA_FAQViewTh">탈퇴</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ml" items="${memberList}">
					<tr>
						<td class="SA_FAQViewTdLong">${ml.mCode}</td>
						<td class="SA_FAQViewTdLong"><a href="sa_mView?mCode=${ml.mCode}">${ml.mId}</a></td>
						<td class="SA_FAQViewTdLong">${ml.mName}</td>
						<td class="SA_FAQViewTdLong">${ml.mEmail}</td>
						<td class="SA_FAQViewTdLong">${ml.mBookNum}</td>
						<td class="SA_FAQViewTdLong"><c:if test="${ml.mKey==0}">
							미승인
							</c:if> <c:if test="${ml.mKey==1}">
							승인
							</c:if> <c:if test="${ml.mKey==2}">
							탈퇴
							</c:if></td>
							
						<c:if test="${ml.mKey==1}">	
						<td class="SA_FAQViewTdLong">
							<button onclick="location.href='sa_mDel?mCode=${ml.mCode}'">탈퇴</button>
						</td>
						</c:if>
						
						<c:if test="${ml.mKey==2}">	
						<td class="SA_FAQViewTdLong">
							<button onclick="" disabled>탈퇴</button>
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
		<a href="sa_selCat1?page=${paging.page-1}&selectVal=${selectVal}&keyword=${keyword}">[이전] </a>
	</c:if>
		<c:if test="${paging.page>1 && empty keyword}">
		<a href="sa_mMgt?page=${paging.page-1}">[이전] </a>
	</c:if>

	<!-- 페이지 번호에 대한 페이징 처리 -->
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i"
		step="1">
		<c:choose>
			<c:when test="${i eq paging.page}"> ${i} </c:when>
			<c:otherwise>
				<c:if test="${not empty keyword}">
					<a href="sa_selCat1?page=${i}&selectVal=${selectVal}&keyword=${keyword}">${i}</a>
				</c:if>
				<c:if test="${empty keyword}">
					<a href="sa_mMgt?page=${i}">${i}</a>
				</c:if>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<!-- [다음]에 대한 페이징 처리 -->
	<c:if test="${paging.page>=paging.maxPage}"> [다음]</c:if>
	<c:if test="${paging.page<paging.maxPage}">
		<c:if test="${not empty keyword}">
		<a href="sa_selCat1?page=${paging.page+1}&selectVal=${selectVal}&keyword=${keyword}">[다음] </a>
		</c:if>
		<c:if test="${empty keyword}">
		<a href="sa_mMgt?page=${paging.page+1}"> [다음]</a>
		</c:if>
	</c:if>
	</div>
</body>
<script>
//구글 시각화 API를 로딩하는 메소드
google.charts.load('current', {packages: ['corechart']});
google.charts.setOnLoadCallback(columnChart1);
google.charts.setOnLoadCallback(columnChart2);
//구글 시각화 API가 로딩이 완료되면,
//인자로 전달된 콜백함수를 내부적으로 호출하여 차트를 그리는 메소드
//화면이 실행될때 함께 실행된다.
//google.charts.setOnLoadCallback(columnChart1);

// 묶은 세로 막대형 차트 1
	function columnChart1() {
		// 버튼 클릭 시 ajax를 사용하여 서버로부터 json 배열 객체를 가져왔다고 가정함
		var arr = [
		['날짜', '회원', '점주'],
		['${dateResult[9]}', ${memberJoinDateNum.day10MNum}, ${cmemberJoinDateNum.day10CNum}],
		['${dateResult[8]}', ${memberJoinDateNum.day9MNum}, ${cmemberJoinDateNum.day9CNum}],
		['${dateResult[7]}', ${memberJoinDateNum.day8MNum}, ${cmemberJoinDateNum.day8CNum}],
		['${dateResult[6]}', ${memberJoinDateNum.day7MNum}, ${cmemberJoinDateNum.day7CNum}],
		['${dateResult[5]}', ${memberJoinDateNum.day6MNum}, ${cmemberJoinDateNum.day6CNum}],
		['${dateResult[4]}', ${memberJoinDateNum.day5MNum}, ${cmemberJoinDateNum.day5CNum}],
		['${dateResult[3]}', ${memberJoinDateNum.day4MNum}, ${cmemberJoinDateNum.day4CNum}],
		['${dateResult[2]}', ${memberJoinDateNum.day3MNum}, ${cmemberJoinDateNum.day3CNum}],
		['${dateResult[1]}', ${memberJoinDateNum.day2MNum}, ${cmemberJoinDateNum.day2CNum}],
		['${dateResult[0]}', ${memberJoinDateNum.day1MNum}, ${cmemberJoinDateNum.day1CNum}]
		];
		// 실 데이터를 가진 데이터테이블 객체를 반환하는 메소드
		var dataTable = google.visualization.arrayToDataTable(arr);
		// 옵션객체 준비
		var options = {
			title: '회원/점주 가입 수 추이',
			hAxis: {
				title: '일자별 가입 수 추이',
				titleTextStyle: {color: 'blue'}
			}
		};

		// 차트를 그릴 영역인 div 객체를 가져옴

		var objDiv = document.getElementById('column_chart_div1');

		// 인자로 전달한 div 객체의 영역에 컬럼차트를 그릴수 있는 차트객체를 반환

		var chart = new google.visualization.ColumnChart(objDiv);

		// 차트객체에 데이터테이블과 옵션 객체를 인자로 전달하여 차트 그리는 메소드

		chart.draw(dataTable, options);

	} // drawColumnChart1()의 끝
	// 묶은 세로 막대형 차트 1
	// 묶은 세로 막대형 차트 1
	function columnChart2() {
		// 버튼 클릭 시 ajax를 사용하여 서버로부터 json 배열 객체를 가져왔다고 가정함
		var arr = [
		['날짜', '회원', '점주'],
		['${dateResult[9]}', ${memberSumDateNum.day10MNumSum}, ${cmemberSumDateNum.day10CNumSum}],
		['${dateResult[8]}', ${memberSumDateNum.day9MNumSum}, ${cmemberSumDateNum.day9CNumSum}],
		['${dateResult[7]}', ${memberSumDateNum.day8MNumSum}, ${cmemberSumDateNum.day8CNumSum}],
		['${dateResult[6]}', ${memberSumDateNum.day7MNumSum}, ${cmemberSumDateNum.day7CNumSum}],
		['${dateResult[5]}', ${memberSumDateNum.day6MNumSum}, ${cmemberSumDateNum.day6CNumSum}],
		['${dateResult[4]}', ${memberSumDateNum.day5MNumSum}, ${cmemberSumDateNum.day5CNumSum}],
		['${dateResult[3]}', ${memberSumDateNum.day4MNumSum}, ${cmemberSumDateNum.day4CNumSum}],
		['${dateResult[2]}', ${memberSumDateNum.day3MNumSum}, ${cmemberSumDateNum.day3CNumSum}],
		['${dateResult[1]}', ${memberSumDateNum.day2MNumSum}, ${cmemberSumDateNum.day2CNumSum}],
		['${dateResult[0]}', ${memberSumDateNum.day1MNumSum}, ${cmemberSumDateNum.day1CNumSum}]
		];
		// 실 데이터를 가진 데이터테이블 객체를 반환하는 메소드
		var dataTable = google.visualization.arrayToDataTable(arr);
		// 옵션객체 준비
		var options = {
			title: '회원/점주 회원 수 추이',
			hAxis: {
				title: '일자별 회원 수 추이',
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
		
		 

		// 버튼 동작
/* 
		$(document).ready(function(){
		$('button').on('click', function(){
		columnChart1();
		});
		}); */

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