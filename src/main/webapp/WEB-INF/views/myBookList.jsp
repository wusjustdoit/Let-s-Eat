<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록</title>
<style>
	table, tr, th, td {
		border : 1px solid black;
		border-collapse: collapse;
		padding : 10px;
	}
	
	.center {
		text-align : center;
	}
	
	.bookdiv {
		border : 2px solid black;
		border-radius : 10px;
		width : 55%;
		height: 300px;
		padding : 10px;
		padding-left : 20px;
		margin : auto;
	}
	a {
		color : black;
		text-decoration: none;
	}
	a:hover {
		 color : gray;
	}
	
	.imgdiv{
		float:left; 
		margin-right:20px;
		width: 230px;
		height: 310px;
	}


</style>

</head>
<body>

 	<br><br>&nbsp;&nbsp;&nbsp;
	<button onclick="location.href='index'">메인페이지 이동</button>
	<button onclick="window.history.back();">뒤로가기</button>
 
 	<div id="bookedlist">
 		<h3 class="center"><br><br>현재 예약중인 목록</h3>
 		
 		
 		<div class="center">
 		<button onclick="location.href='reservationlist?bmCode=${sessionScope.mloginCode}&rmId=${sessionScope.mloginId}'">예약중</button>
 		<button onclick="bookedlist()">예약 이력</button>
 		</div>
 		
 		<br><br>
 		
 		<c:forEach var="bookinglist" items="${bookinglist}">
 		
 			<div class="bookdiv">
 				
 				
 				<div>
 				<div class="imgdiv"><a href="storeView?storeCode=${bookinglist.bsCode}&mCode=${sessionScope.mloginCode}">
 											<img src="resources/fileUpload/${bookinglist.bsFileName1}"></a></div><br>
 					<span style="color:#8F8F8F"><b>예약번호 : </b>${bookinglist.bCode}</span>
 					<h2><a href="storeView?storeCode=${bookinglist.bsCode}&mCode=${sessionScope.mloginCode}">${bookinglist.bsName}</a></h2>
 					<div><b>예약 날짜 : </b>${bookinglist.bDate}</div><br>
 					<div><b>예약 시간 : </b>${bookinglist.bTime}</div><br>
 					<div><b>예약 인원 : </b>${bookinglist.bmCount} 명</div><br>
 					<div><b>주소 : </b>${bookinglist.bsAddr}</div>
 					<span style="position: absolute; left : 70%;"><button onclick="location.href='mybookDel?bCode=${bookinglist.bCode}&bmCode=${sessionScope.mloginCode}'">취소</button></span>
 				</div>
 				
 				
 			</div><br>
 		
 		</c:forEach>
 
 	</div>
 

</body>


<!-- jQuery -->
<script src="resources/js/jquery-3.6.0.js"></script>



<script>
	// 예약 이력
	function bookedlist() {
		console.log("test");//수정 버튼을 확인하기위해
		
		var output1 = "";
		
		
		
		output1 += "<h3 class='center'><br><br>예약 이력</h3>";
		output1 += "<div class='center'>";
		output1 += "<button onclick='location.href=`reservationlist?bmCode=${sessionScope.mloginCode}&rmId=${sessionScope.mloginId}`'>예약중</button>&nbsp;";
		output1 += "<button onclick='bookedlist(`${sessionScope.mloginId}`)'>예약 이력</button>";
		output1 += "</div><br><br>";
		
		output1 += "	<c:forEach var='bookedlist' items='${bookedlist}'>";
		output1 += "<div class='bookdiv'>";
		output1 += "<div>";
		output1 += "<div class='imgdiv'><a href='storeView?storeCode=${bookedlist.bsCode}&mCode=${sessionScope.mloginCode}'><img src='resources/fileUpload/${bookedlist.bsFileName1}'></a></div><br>";
		output1 += "<span style='color:#8F8F8F'><b>예약번호 : </b>${bookedlist.bCode}</span>";
		output1 += "<h2><a href='storeView?storeCode=${bookedlist.bsCode}&mCode=${sessionScope.mloginCode}'>${bookedlist.bsName}</a></h2>";
		output1 += "<div><b>예약 날짜 : </b>${bookedlist.bDate}</div><br>";
		output1 += "<div><b>예약 시간 : </b>${bookedlist.bTime}</div><br>";
		output1 += "<div><b>예약 인원 : </b>${bookedlist.bmCount} 명</div><br>";
		output1 += "<div><b>주소 : </b>${bookedlist.bsAddr}</div>";
		
		var brKey = '${bookedlist.brKey}';
		
			// 리뷰작성이 안되어 있는 예약이라면 작성 버튼을, 되어 있으면 완료 버튼이 나옴
			if(brKey == 1){
				output1 += "<span style='position: absolute; left : 70%;'><button onclick='' disabled>작성 완료</button></span>";
			
			} else {
				output1 += "<span style='position: absolute; left : 70%;'><button onclick='reviewWrite(`${bookedlist.bCode}`)'>리뷰 작성</button></span>";
			}
			
		
		output1 += "</div>";
		output1 += "</div><br>";
		
		output1 += "	</c:forEach>";
		
		
		document.getElementById("bookedlist").innerHTML = output1;

	} // end bookedlist()
	
	
	
	// 리뷰 작성버튼 누르면 적성폼으로 이동해라!
	function reviewWrite(bCode) {
		
		location.href='rwriteForm?bCode=' + bCode;
		
	}
	
</script>




</html>


