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
<title>렛츠잇 | 비밀번호 찾기</title>

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

	<!-- 비밀번호 찾기 폼 -->
	<section class="join_form">
		<div class="join_main">
			<div>
				<div class="container">

					<div class="row">
						<div class="col-lg-12">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tabs-5" role="tab">일반회원 비밀번호 찾기</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-6" role="tab">점주회원 비밀번호 찾기</a></li>
							</ul>
							<!-- 일반 회원 -->
							<div class="tab-content">
								<div class="tab-pane active" id="tabs-5" role="tabpanel">
									

										<fieldset id="div4">
											<h2 class="join_title">회원정보를 입력해 주세요.</h2>
											<div class="content">
												<strong>레츠잇 계정 아이디</strong>


												<div class="checkout__input">
													<input type="text" name="mId" id="mId"
														class="form-control form-control-user" maxlength="20"
														placeholder="아이디를 입력해 주세요">


												</div>

											</div>

											<p></p>
											<strong>이메일</strong>
											<div class="checkout__input">
												<input type="text"
													class="form-control form-control-user" name="mEmail" id="mEmail"
													maxlength="20" placeholder="이메일을 입력해 주세요">

											</div>



											<div class="jbutton">
												<input type="button" class="join_button"
													onclick="sendmEmail()" value="비밀번호 찾기">
											</div>









										</fieldset>
									
								</div>





								<!-- 점주 회원 -->
								<div class="tab-pane" id="tabs-6" role="tabpanel">
									
										<fieldset id="div3">
											<h2 class="join_title">회원정보를 입력해 주세요.</h2>
											<div class="content">
												<strong>레츠잇 계정 아이디</strong>


												<div class="checkout__input">
													<input type="text" name="cId" id="cId"
														class="form-control form-control-user" maxlength="20"
														placeholder="아이디를 입력해 주세요">


												</div>

											</div>

											<p></p>
											<strong>이메일</strong>
											<div class="checkout__input">
												<input type="text"
													class="form-control form-control-user" name="cEmail" id="cEmail"
													maxlength="20" placeholder="이메일을 입력해 주세요">

											</div>
											<div class="jbutton">
												<input type="button" class="join_button"
													onclick="sendcEmail()" value="비밀번호 찾기">
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
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>


<script>
	function sendmEmail() {
		console.log("테스트");
		var mId = document.getElementById("mId").value;
		var mEmail = document.getElementById("mEmail").value;
		var div4 = document.getElementById("div4");

		console.log("mId : " + mId);
		console.log("mEmail : " + mEmail);
		
		
		$.ajax({
			type : "POST",
			url : "mfindpw",
			data : { "mId" : mId , "mEmail" : mEmail } ,
			dataType : "text",
			success : function(data){
				alert('적어주신 메일로 인증번호를 발송했습니다. 메일을 열어 인증을 해주시기 바랍니다!');

				var output1 = "";
				
				output1 += "<h2>인증번호를 입력해 주세요</2h>";
				output1 += "<h3><input type='text' id='inputmCode' placeholder='인증번호 입력'>";
				output1 += "<button onclick='confirmCode()' >인증</button></h3>";
				output1 += "<input type='hidden' id='mcheckCode' value='" + data + "'>";
				output1 += "<input type='hidden' id='mId' value='" + mId + "'>";
				output1 += "<input type='hidden' id='mEmail' value='" + mEmail + "'>";
				
				// document.getElementById("div1").innerHTML = output1;
				div4.innerHTML = output1;
			} ,
			error : function(){
				alert('이메일 인증실패 다시작성해주세요!');
			}
		});// end ajax
		
		
	} // end function

	function confirmCode(){
		console.log("테스트");
		// 공간 div2
		var div4 = document.getElementById("div4");

		// 입력한 인증코드
		var inputCode = document.getElementById("inputmCode").value;

		// 이메일로 보내준 인증코드
		var mcheckCode = document.getElementById("mcheckCode").value;

		// 아이디 주소
		var mId = document.getElementById("mId").value;
		
		// 이메일 주소
		var mEmail = document.getElementById("mEmail").value;
		console.log("mId"+mId);
		if(inputCode == mcheckCode){
			alert('인증이 완료됐습니다!');
			
			var output2 = "";
			
			output2 += "<h2>mEmail : " + mEmail + "</h2>";
			output2 += "<form action='changemPw', method='POST'>";
			output2 += "<h3>변경할 패스워드 : <input type='password' name='mPw'>";
			output2 += "<input type='hidden' name='mEmail' value='" + mEmail + "'>";
			output2 += "<input type='hidden' name='mId' value='" + mId + "'>";
			output2 += "<input type='submit' value='변경'>";
			output2 += "</form>";

			div4.innerHTML = output2;
			
		} else {
			alert('인증번호가 틀렸습니다.');
		}
	} // end function

	
</script>

<script>
	function sendcEmail() {
		console.log("테스트");
		var cId = document.getElementById("cId").value;
		var cEmail = document.getElementById("cEmail").value;
		var div3 = document.getElementById("div3");

		console.log("cId : " + cId);
		console.log("cEmail : " + cEmail);
		
		
		$.ajax({
			type : "POST",
			url : "cfindpw",
			data : { "cId" : cId , "cEmail" : cEmail } ,
			dataType : "text",
			success : function(data){
				alert('적어주신 메일로 인증번호를 발송했습니다. 메일을 열어 인증을 해주시기 바랍니다!');

				var output1 = "";
				
				output1 += "<h2>인증번호를 입력해 주세요</2h>";
				output1 += "<h3><input type='text' id='inputcCode' placeholder='인증번호 입력'>";
				output1 += "<button onclick='confircCode()' >인증</button></h3>";
				output1 += "<input type='hidden' id='ccheckCode' value='" + data + "'>";
				output1 += "<input type='hidden' id='cId' value='" + cId + "'>";
				output1 += "<input type='hidden' id='cEmail' value='" + cEmail + "'>";
				
				// document.getElementById("div1").innerHTML = output1;
				div3.innerHTML = output1;
			} ,
			error : function(){
				alert('이메일 인증실패 다시작성해주세요!');
			}
		});// end ajax
		
		
	} // end function

	function confircCode(){
		console.log("테스트");
		// 공간 div2
		var div3 = document.getElementById("div3");

		// 입력한 인증코드
		var inputCode = document.getElementById("inputcCode").value;

		// 이메일로 보내준 인증코드
		var ccheckCode = document.getElementById("ccheckCode").value;

		// 아이디 주소
		var cId = document.getElementById("cId").value;
		
		// 이메일 주소
		var cEmail = document.getElementById("cEmail").value;
		console.log("cId"+mId);
		if(inputCode == ccheckCode){
			alert('인증이 완료됐습니다!');
			
			var output2 = "";
			
			output2 += "<h2>cEmail : " + cEmail + "</h2>";
			output2 += "<form action='changecPw', method='POST'>";
			output2 += "<h3>변경할 패스워드 : <input type='password' name='cPw'>";
			output2 += "<input type='hidden' name='cEmail' value='" + cEmail + "'>";
			output2 += "<input type='hidden' name='cId' value='" + cId + "'>";
			output2 += "<input type='submit' value='변경'>";
			output2 += "</form>";

			div3.innerHTML = output2;
			
		} else {
			alert('인증번호가 틀렸습니다.');
		}
	} // end function

	
</script>

</html>