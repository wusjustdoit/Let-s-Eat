<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
  <!-- Css Styles -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
  
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  <script>
    $.datepicker.setDefaults({
        dateFormat: 'yymmdd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년',
        minDate : "bDate"
    });

    $(function() {
        $("#datepicker1").datepicker();
  
      
    });

</script>
<style>
	table,tr,td,th{ 
		border : 1px solid black;
		border-collapse: collapse;
		padding: 5px;
	}
	body{
		text-align:center;
	}
</style>


</head>
<body>

<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-7">
						<div class="header__top__left">
							<p></p>
						</div>
					</div>
					<div class="col-lg-6 col-md-5">
						<div class="header__top__right">
							<div class="header__top__links">
								<a href="index">메인페이지로</a><a href="#">사이트맵</a>
							</div>



							<div class="header__top__hover"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="header__logo">
						<a href="index"><img src="" alt=""></a>
					</div>
				</div>

				<div class="col-lg-4 col-md-4">
					<div class="header__logo_join">
						<a href="index"><img src="resources/img/logo_1.png" alt=""></a>
					</div>
				</div>

				<div class="col-lg-4 col-md-4">
					<div class="header__logo">
						<a href="index"><img src="" alt=""></a>
					</div>
				</div>

			</div>
			<div class="canvas__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->
		
<input type="button" onclick="location.href='booklist?bsCode=${storeCode}'" value="예약 목록 ">
<input type="button" onclick="location.href='bookhistory?bsCode=${storeCode}'" value="예약 히스토리">
		
<form action="dateblist">
<fieldset>
<legend>form써서 날짜보내기 예약목록 불러오기 ${storeCode} </legend>
<p>날짜를 선택해 주세요: <input type="text" id="datepicker" name="bDate"></p>
<input type="hidden" name="bsCode" value="${storeCode}">
<input type="submit" value="선택">

</fieldset>
</form>

<br><br>
<h3>${storeName}의 예약 목록 입니다</h3>
<table style="margin-left: auto; margin-right: auto;">
		<tr>
			<th>날짜</th>
			<th>시간</th>
			<th>인원수</th>
			<th>예약자</th>
			<th>전화번호</th>
			<th>취소</th>

		</tr>

		<c:forEach var="reser" items="${blist1}">
			<tr>
				<td>${reser.bDate}</td>
				<td>${reser.bTime}</td>
				<td>${reser.bmCount}</td>
				<td>${reser.bmName}</td>
				<td>${reser.bmPhone}</td>
				<td>
					
					<button onclick="location.href='bookDel?bCode=${reser.bCode}&bDate=${reser.bDate}&bsCode=${storeCode}'">취소</button>
				</td>
			</tr>
		</c:forEach>



	</table>







	<br>
	<input type="button" value="목록가기" onclick="location.href='index'">
	<input type="button" value="뒤로가기" onclick="window.history.back();">
	<br>





</body>



</html>

