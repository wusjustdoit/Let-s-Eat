<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 작성한 리뷰 목록</title>
<style>
	.reviewdiv {
		border : 2px solid black;
		border-radius : 10px;
		width : 38%;
		padding : 10px;
		padding-left : 20px;
		margin : auto;
	}
	.star {
		width : 90px;
	}
</style>
</head>
<body>

	<br><br>&nbsp;&nbsp;&nbsp;
	<button onclick="location.href='index'">메인페이지 이동</button>
	<button onclick="window.history.back();">뒤로가기</button>

<h3 style="text-align : center"><br><br>${sessionScope.mloginId}님이 작성한 리뷰 목록</h3><br>

	<!-- 내가 작성한 리뷰 목록 -->
	<c:forEach var="myRList" items="${myRList}">
		<div class="reviewdiv">
			<h2>${myRList.rsName}</h2> 
			<div><img src="resources/img/${myRList.rStar}.png" class="star">&nbsp;&nbsp;<b>${myRList.rStar}</b></div><br>
			<div style="word-break:break-all">${myRList.rContents}</div><br>
			<span style="color:#8F8F8F">${myRList.rBook}</span> 
			<span style="position: absolute; left : 67%;"><a href="#none" onclick="myRDel('${myRList.rmId}', '${myRList.rCode}')"><img src="resources/img/trash1.png"></a></span>
		</div><br>
	</c:forEach>


</body>

<script>
	// 내가 작성한 리뷰 삭제하기
	function myRDel(rmId, rCode){
		
		alert("리뷰가 삭제되었습니다.");
		location.href="myReviewDel?rmId=" + rmId + "&rCode=" + rCode;
	}
</script>

</html>


