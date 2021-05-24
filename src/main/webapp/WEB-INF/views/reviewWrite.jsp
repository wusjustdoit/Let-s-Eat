<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>마이페이지</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">


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
		width : 50%;
		height: 320px;
		padding : 10px;
		padding-left : 20px;
		margin : auto;
	}
	
	.imgdiv{
		float:left; 
		margin-right:20px;
		width: 230px;
		height: 280px;
	}

.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('resources/img/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
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
								<a href="#">사이트맵</a>
							</div>
							<div class="header__top__hover"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-2">
					<div class="header__logo">
						<a href="index"><img src="resources/img/logo_1.png" alt=""></a>
					</div>
				</div>

				<div class="col-lg-4 col-md-4">
					<div class="header__nav__option">
						<a href="#" class="search-switch"><img src="" alt=""></a> <a
							href="#"><img src="" alt=""></a> <a href="#"><img
							src="" alt=""> <span></span></a>
						<div class="price"></div>
					</div>
				</div>

				<div class="col-lg-6 col-md-6">
					<nav class="header__menu mobile-menu">
						<ul>
							<li><a href="index">홈</a></li>


							<li><a
								href="mview?mId=${sessionScope.mloginId}&mCode=${sessionScope.mloginCode}">마이페이지</a>

							</li>
							<li><a href="logout">로그아웃</a></li>
							<li><a href="./contact.jsp">문의사항</a></li>
						</ul>
					</nav>
				</div>

			</div>
			<div class="canvas__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>마이페이지</h4>
						<div class="breadcrumb__links">
							<a href="index">메인페이지</a> <a href="mview?mId=${sessionScope.mloginId}&mCode=${sessionScope.mloginCode}">마이페이지</a> <a href="#" onclick="history.back();">예약이력</a> <span>리뷰 작성</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



		
		
		<h2 class='center'><br>리뷰를 작성해 주세요!<br><br></h2>
	
		<div class='bookdiv'>
		
			<div>
				<div class='imgdiv'>
					<img src='resources/fileUpload/${reiviewWrite.bsFileName1}'>
				</div><br>
				
				<span style='color:#8F8F8F'><b>예약번호 : </b>${reiviewWrite.bCode}</span>
				<h2>${reiviewWrite.bsName}</h2>
				<div><b>예약 날짜 : </b>${reiviewWrite.bDate}</div><br>
				<div><b>예약 시간 : </b>${reiviewWrite.bTime}</div><br>
				<div><b>예약 인원 : </b>${reiviewWrite.bmCount} 명</div><br>
				<div><b>주소 : </b>${reiviewWrite.bsAddr}</div>
	
			</div>

		</div><br><br>
		




<form action="rwrite" method="POST" name="reviewform">
<table class='bookdiv'>
	
	<input type="hidden" value="${sessionScope.mloginId}" name="rmId">
	<input type="hidden" value="${reiviewWrite.bsCode}" name="rsCode">
	<input type="hidden" value="${reiviewWrite.bDate}" name="rBook">
	<input type="hidden" value="${reiviewWrite.bCode}" name="rbCode">
	
	
	<tr>
		<th>별점</th>
		<td><span class="star-input">
			<span class="input" style="margin:auto;">
    			<input type="radio" name="rStar" value="1" id="p1">
    			<label for="p1">1</label>
    			<input type="radio" name="rStar" value="2" id="p2">
    			<label for="p2">2</label>
    			<input type="radio" name="rStar" value="3" id="p3">
    			<label for="p3">3</label>
    			<input type="radio" name="rStar" value="4" id="p4">
    			<label for="p4">4</label>
    			<input type="radio" name="rStar" value="5" id="p5">
    			<label for="p5">5</label>
  		</span>
  			<output for="rStar" name="rStar"><b>0</b>점</output>						
		</span></td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td  class='center'><textarea rows="7" cols="95" name="rContents"></textarea></td>
	</tr>
	
	<tr>
		<td colspan="2" class='center'>
			<input type="button" onclick="rWrite()" value="등록" class="selectButton3">
		</td>
	</tr>
	
</table>


</form>


<br><br><br><br><br><br><br><br>
	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__logo">
							<a href="#"><img src="resources/img/footer_1.png" alt=""></a>
						</div>
						<p>카카오페이 가맹업체</p>
						<a href="#"><img src="resources/img/icon/kpay.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6></h6>
						<ul>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6></h6>
						<ul>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
					<div class="footer__widget">
						<h6>고객센터</h6>
						<div class="footer__newslatter">
							<p>
								문의사항이 있으면 고객센터로 문의 하세요. <br> <br>tel)02-0000-0000
							</p>
							<form action="#">
								<!-- <input type="text" placeholder="Your email">
                            <button type="submit"><span class="icon_mail_alt"></span></button> -->
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="footer__copyright__text">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<p>
							Copyright ©
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved |team1 final project
						</p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!-- Js Plugins -->
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.nice-select.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/jquery.countdown.min.js"></script>
	<script src="resources/js/jquery.slicknav.js"></script>
	<script src="resources/js/mixitup.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/main.js"></script>
	
</body>

<script src="resources/js/jquery-1.11.3.min.js"></script>
<script src="resources/js/star.js"></script>

<script>
	function rWrite(){
		alert("리뷰가 작성되었습니다.");
		reviewform.submit();
	}

</script>

</html>


