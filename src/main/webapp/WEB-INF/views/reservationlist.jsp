<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 MyBookList.jsp
	<div id="bookedlist">
		<table style="margin: auto;">
			<caption>예약 목록</caption>
	

			<tr>
				<td colspan="2"><input type="button" value="예약 중"
					onclick="location.href='reservationlist?bmCode=${sessionScope.mloginId}'">
					<input type="button" value="예약 이력" onclick="bookedlist()">
				</td>

			</tr>


			<tr>
				<td>업체 코드</td>
				<td>인원</td>
				<td>날짜</td>
				<td>시간</td>
			</tr>


			<c:forEach var="reservationlist" items="${bookinglist}">
				<tr>
					<td><a href="storeView?storeCode=${reservationlist.bsCode}&mCode=${sessionScope.mloginId}">${reservationlist.bsCode}</a></td>
					<td>${reservationlist.bmCount}</td>
					<td>${reservationlist.bDate}</td>
					<td>${reservationlist.bTime}</td>
				</tr>
			</c:forEach>

			


		</table>
	</div>

</body>
<script>
	function bookedlist() {
		console.log("test");//수정 버튼을 확인하기위해
		var output = "";

		output += "<table style=margin:auto;>";
		output += "<caption>예약 이력</caption>";
		output += "	<tr>";
		output += "		<td colspan='2'>";
		output += "		<input type='button' value='예약 중' onclick='location.href=`reservationlist?bmCode=${sessionScope.mloginId}`' >";
		output += "		</td>";
		output += "	</tr>";
		output += "	<tr>";
		output += "		<td>업체 코드</td>	";
		output += "		<td>인원</td>	";
		output += "		<td>날짜</td>	";
		output += "		<td>시간</td>	";
		output += "		<td>리뷰</td>	";
		output += "	</tr>		";
		output += "	<c:forEach var='bookedlist' items='${bookedlist}'>";
		output += "	<tr>";
		output += "		<td>";
		output += "			<a href='storeView?storeCode=${reservationlist.bsCode}&mCode=${sessionScope.mloginId}'>${bookedlist.bsCode}</a></td>";
		output += "		<td>";
		output += "			${bookedlist.bmCount}";
		output += "		</td>";
		output += "		<td>";
		output += "			${bookedlist.bDate}";
		output += "		</td>";
		output += "		<td>";
		output += "			${bookedlist.bTime}";
		output += "	</td>";
		output += "		<td><input type='button' value='리뷰작성'></td>	";
		output += "	</tr>";
		output += "	</c:forEach>";
		output += " </table>";

		document.getElementById("bookedlist").innerHTML = output;

	}
</script>


</html>