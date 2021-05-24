<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>렛츠잇 | 아이디 찾기</title>

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
<!-- 스타일 -->
<style>
.maintxt {
	color: #000000;
}
</style>

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>


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

			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<!-- 아이디 찾기 폼 -->
	<section class="join_form">
		<div class="join_main">
			<div>
				<div class="container">

					<div class="row">
						<div class="col-lg-12">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tabs-5" role="tab">일반회원 아이디 찾기</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-6" role="tab">점주회원 아이디 찾기</a></li>
							</ul>
							<!-- 일반 회원가입 -->
							<div class="tab-content">
								<div class="tab-pane active" id="tabs-5" role="tabpanel">
									

										<fieldset id="div4">
											<h2 class="join_title">회원정보를 입력해 주세요.</h2>
											<div class="content">
												<strong>레츠잇 계정 이름</strong>


												<div class="checkout__input">
													<input type="text" name="mName" id="mName"
														class="form-control form-control-user" maxlength="20"
														placeholder="이름">


												</div>

											</div>

											<p></p>
											<strong>전화번호</strong>
											<div class="checkout__input">
												<input type="text"
													class="form-control form-control-user" name="mPhone" id="mPhone"
													maxlength="20" placeholder="전화번호 (-) 없이 입력">

											</div>



											<div class="jbutton">
												<input type="button" class="join_button"
													onclick="searchmId()" value="아이디 찾기">
											</div>









										</fieldset>
									
								</div>





								<!-- 점주 회원가입 -->
								<div class="tab-pane" id="tabs-6" role="tabpanel">
									
										<fieldset id="div3">
											<h2 class="join_title">회원정보를 입력해 주세요.</h2>
											<div class="content">
												<strong>레츠잇 계정 이름</strong>


												<div class="checkout__input">
													<input type="text" name="cName" id="cName"
														class="form-control form-control-user" maxlength="20"
														placeholder="이름">


												</div>

											</div>

											<p></p>
											<strong>전화번호</strong>
											<div class="checkout__input">
												<input type="text"
													class="form-control form-control-user" name="cPhone" id="cPhone"
													maxlength="20" placeholder="전화번호 (-) 없이 입력">

											</div>
											<div class="jbutton">
												<input type="button" class="join_button"
													onclick="searchcId()" value="아이디 찾기">
											</div>


										</fieldset>
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>

		</div>

	</section>
	<!-- 메인페이지 사진 슬라이드 끝 -->



	<br>
	<br>




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
<!-- jquery를 사용하기 위해 작성 -->
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script>
	function searchcId() {
		console.log("테스트");
		var cName = document.getElementById("cName").value;
		var cPhone = document.getElementById("cPhone").value;
		var div3 = document.getElementById("div3");

		console.log("cName:" + cName);
		console.log("cPhone:" + cPhone);

		$.ajax({
			type : "GET",
			url : "cfindid",
			data : {
				"cName" : cName,
				"cPhone" : cPhone
			},
			dataType : "text",

			success : function(data) {

				var output5 = "";
				if(data =="NO"){
					output5 += "<h3>정보와 일치하는 아이디가 존재하지 않습니다. </h3>";
					output5 += "<div class='jbutton'><input type='button' class='join_button' onclick='location.href=`joinform`' value='회원가입 페이지로'><br><br><input type='button' class='join_button' onclick='location.href=`index`' value='메인 페이지로'></div>";
				} else{
					output5 += "<h3>회원님의 아이디는 " + data + "입니다. </h3>";
					output5 += "<div class='jbutton'><input type='button' class='join_button' onclick='location.href=`cloginp`' value='로그인 페이지로'><br><br><input type='button' class='join_button' onclick='location.href=`index`' value='메인 페이지로'></div>";
				}
				
				
				
				div3.innerHTML = output5;

			},//end sucess

			error : function() {
				alert('함수통신 실패');
			}

		})//end $.ajax

	}//end searchcId()
</script>

<script>
	function searchmId() {
		console.log("테스트");
		var mName = document.getElementById("mName").value;
		var mPhone = document.getElementById("mPhone").value;
		var div4 = document.getElementById("div4");

		console.log("mName:" + mName);
		console.log("mPhone:" + mPhone);

		$.ajax({
			type : "GET",
			url : "mfindid",
			data : {
				"mName" : mName,
				"mPhone" : mPhone
			},
			dataType : "text",

			success : function(data) {

				var output5 = "";
				if(data =="NO"){
					output5 += "<h3>정보와 일치하는 아이디가 존재하지 않습니다. </h3>";
					output5 += "<div class='jbutton'><input type='button' class='join_button' onclick='location.href=`joinform`' value='회원가입 페이지로'><br><br><input type='button' class='join_button' onclick='location.href=`index`' value='메인 페이지로'></div>";
				} else{
					output5 += "<h3>회원님의 아이디는 " + data + "입니다. </h3>";
					output5 += "<div class='jbutton'><input type='button' class='join_button' onclick='location.href=`mloginp`' value='로그인 페이지로'><br><br><input type='button' class='join_button' onclick='location.href=`index`' value='메인 페이지로'></div>";
				}
				
				
				
				div4.innerHTML = output5;

			},//end sucess

			error : function() {
				alert('함수통신 실패');
			}

		})//end $.ajax

	}//end searchcId()
</script>
</html>