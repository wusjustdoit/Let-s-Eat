<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery -->
<script src="resources/js/jquery-3.6.0.js"></script>
<title>나의 문의현황</title>
<style>
	table, tr, td, th {
		border : 1px solid black;
		border-collapse: collapse;
		padding : 5px;
		margin : auto;
	}
	
	.center {
		text-align : center;
	}
</style>
</head>
<body>

	<br><br>&nbsp;&nbsp;&nbsp;
	<button onclick="location.href='index'">메인페이지 이동</button>
	<button onclick="window.history.back();">뒤로가기</button>

<h1 class="center"><br>나의 문의 현황</h1>

<table>
	<tr>
		<th style="width : 10%">번호</th>
		<th style="width : 20%">카테고리</th>
		<th style="width : 40%">제목</th>
		<th style="width : 20%">답변여부</th>
		<th style="width : 10%">보기</th>
		
	</tr>
	
	<c:forEach var="mQnAList" items="${mQnAList}" varStatus="num">
	
		<tr>
			<td rowspan="2" class="center">${num.count}</td>
			<td rowspan="2" class="center">${mQnAList.mQnACat}</td>
			<td>${mQnAList.mQnATitle}</td>
			
			
			<c:if test="${mQnAList.mQnAKey == 0}">
				<td class="center">답변 대기</td>
			</c:if>
			
			<c:if test="${mQnAList.mQnAKey == 1}">
				<td class="center">답변 완료</td>
			</c:if>
			
			<td><button onclick="seeQnA(${mQnAList.mQnACode})" id="seeqna${mQnAList.mQnACode}">보기</button></td>
			
			
			
		</tr>
		
		<tr>
			<td colspan="3" id="contents${mQnAList.mQnACode}" style="display:none; width:50px;">
				문의내용 : <br><br>${mQnAList.mQnAContents}
				<br><br><span style="color:#8F8F8F">(${mQnAList.mQnADate})</span>
				
				<c:if test="${not empty mQnAList.mQnAAnswer}"><br><hr>
				문의 답변 : <br><br>${mQnAList.mQnAAnswer}
				<br><br><span style="color:#8F8F8F">(${mQnAList.mQnADate2})</span>
				</c:if>
			</td>
		</tr>
		
		
	</c:forEach>
	
	
</table>



</body>


<script>
	// 보기 버튼 누르면 내용이 나와라!
	function seeQnA(val){
	
		if(document.all("contents" + val).style.display == "none"){
			$('#contents' + val).fadeIn('fast');
		
			console.log("val : " + val);
		
			var seeqna = document.getElementById("seeqna" + val);
			
			var output = "";
		
			
			output +="닫기";
			
			seeqna.innerHTML = output;
			
		
		} else { 
			$('#contents' + val).fadeOut('fast');
		
			var seeqna = document.getElementById("seeqna" + val);
			
			var output = "";
		
			output +="보기";
			
			seeqna.innerHTML = output;
		
		}
	
	} // end seeQnA(val)
	
	
</script>


</html>



