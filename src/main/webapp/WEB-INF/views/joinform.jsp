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
<title>렛츠잇 | 회원가입</title>

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

	<!-- 회원가입 폼 -->
	<section class="join_form">
		<div class="join_main">
			<div>
				<div class="container">

					<div class="row">
						<div class="col-lg-12">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tabs-5" role="tab">일반회원 가입하기</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-6" role="tab">점주회원 가입하기</a></li>
							</ul>
							<!-- 일반 회원가입 -->
							<div class="tab-content">
								<div class="tab-pane active" id="tabs-5" role="tabpanel">
									<h2 class="join_title">회원정보를 입력해 주세요.</h2>

									<form action="mjoin" method="POST" name="mjoinForm">
										<fieldset>

											<div class="content">
												<strong>레츠잇 계정 아이디</strong>


												<div class="checkout__input">
													<input type="text" name="mId" id="mId" class="form-control form-control-user"
														maxlength="20" placeholder="아이디"><input
														type="button" onclick="mIdCheck()" value="중복체크">
													<div id="confirmId"></div>
													<div id="mIdResult"></div>


												</div>
												<p></p>
												<ul>
													<li>입력하신 아이디로 가입 하거나, 네이버 아이디로 회원가입 하실수 있습니다.</li>
													<li>한번 만든 아이디는 변경이 불가하니, 오타없도록 신중히 확인해주세요.</li>
												</ul>
											</div>

											<p></p>
											<strong>비밀번호</strong>
											<div class="checkout__input"> <input type="password" class="form-control form-control-user"
													name="mPw" id="mPw" maxlength="20"
													placeholder="비밀번호" onkeyup="mPwCheck()">
													 <img src="resources/img/icon/m_icon_pass.png" id="pw_img1"
													class="pwimg">
												<div id="mpwResult"></div>
											</div>

											<p></p>
											<strong>이름</strong>
											<div class="checkout__input">
												<input type="text" name="mName" id="mName" 
													class="form-control form-control-user" maxlength="20"
													placeholder="이름">
											</div>

											<p></p>
											<strong>성별</strong>
											<div>
												<div class="item_inp item_radio">
													<input type="radio" data-type="radio" id="id_gender_8"
														name="mGender" class="inp_g inp_radio " value="F"
														type="radio"> <label class="lab_g lab_radio"
														for="id_gender_8"> <span
														class="ico_account ico_radio"></span> <span
														class="txt_radio">여성</span>
													</label>
												</div>
												<div class="item_inp item_radio">
													<input type="radio" data-type="radio" id="id_gender_9"
														name="mGender" class="inp_g inp_radio " value="M"
														type="radio"> <label class="lab_g lab_radio"
														for="id_gender_9"> <span
														class="ico_account ico_radio"></span> <span
														class="txt_radio">남성</span>
													</label>
												</div>
												<span class="error_box"></span>
											</div>


											<div>
												<strong><label for="yy">생년월일</label></strong>
												<div class="birth">
													<!-- 생년월일 -->
													<div class="checkout__input">

														<input type="date" name="mBirth" id="mBirth"
															class="form-control form-control-user">

													</div>


												</div>
												<span class="error_box"></span>
											</div>



											<p></p>
											<strong>전화번호</strong>
											<div class="checkout__input">
												<input type="tel" name="mPhone" id="mPhone"
													class="form-control form-control-user" maxlength="16"
													placeholder="휴대폰 번호 (- 빼고 입력)">
											</div>

											<p></p>
											<strong>이메일</strong>
											<div>
												<div class="checkout__input">
													<input type="email" name="mEmail" id="mEmail"
														placeholder="이메일"
														class="form-control form-control-user">
												</div>

											</div>

											<p></p>
											<strong>주소</strong>
											<div>



												<div class="row">
													<div class="col-lg-6">
														<div class="checkout__input">
															<p>
																우편번호<span>*</span>
															</p>
															<input type="text" id="sample6_postcode"
																placeholder="우편번호" name="postcode"
																class="form-control form-control-user">
														</div>
													</div>
													<div class="col-lg-6">
														<div class="checkout__input">
															<p>우편번호 검색</p>
															<input type="button" onclick="sample6_execDaumPostcode()"
																value="우편번호 찾기" class="form-control form-control-user">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-lg-6">
														<div class="checkout__input">
															<p>
																주소<span>*</span>
															</p>
															<input type="text" id="sample6_address" placeholder="주소"
																name="addr1" class="form-control form-control-user">
														</div>
													</div>
													<div class="col-lg-6">
														<div class="checkout__input">
															<p>
																참고사항<span>*</span>
															</p>
															<input type="text" id="sample6_extraAddress"
																placeholder="참고항목" name="addr3"
																class="form-control form-control-user">
														</div>
													</div>
												</div>
												<div class="checkout__input">
													<p>
														상세주소<span>*</span>
													</p>
													<input type="text" id="sample6_detailAddress"
														placeholder="상세주소" name="addr2"
														class="form-control form-control-user">
												</div>

											</div>
											<div class="jbutton">
												<button type="button" onclick="msubmitForm()" class="join_button">
													<span>가입하기</span>
												</button>
												<br> <br>
												<!-- <button type="button" class="join_button">
													<span>네이버 아이디 회원가입</span>
												</button> -->
											</div>


										</fieldset>
									</form>
								</div>



								<!-- 점주 회원가입 -->
								<div class="tab-pane" id="tabs-6" role="tabpanel">
									<h2 class="join_title">회원정보를 입력해 주세요.</h2>
									<form action="cjoin" method="POST" name="cjoinForm">
										<fieldset>

											<div class="content">
												<strong>레츠잇 계정 아이디</strong>

												<div>
													<input type="text" name="cId" id="cId" class="box int_id"
														maxlength="20" placeholder="아이디를 입력해주세요"><input
														type="button" onclick="cIdCheck()" value="중복체크">
													<div id="confircId"></div>
													<div id="cIdResult"></div>

												</div>
												<p></p>
												<ul>
													<li>입력하신 아이디로 가입 하거나, 네이버 아이디로 회원가입 하실수 있습니다.</li>
													<li>한번 만든 아이디는 변경이 불가하니, 오타없도록 신중히 확인해주세요.</li>
												</ul>
											</div>

											<p></p>
											<strong>비밀번호</strong>
											<div>
												<span class="box int_pw"> <input type="password"
													name="cPw" id="cPw" class="int" maxlength="20"
													placeholder="비밀번호를 입력해주세요." onkeyup="cPwCheck()"> <img
													src="resources/img/icon/m_icon_pass.png" id="pw_img1"
													class="pwimg">
												</span>
												<div id="cpwResult"></div>
											</div>

											<p></p>
											<strong>이름</strong>
											<div>
												<span class="box int_name"> <input type="text"
													name="cName" id="cName" class="int" maxlength="20"
													placeholder="이름을 입력해주세요.">
												</span>
											</div>




											<p></p>
											<strong>전화번호</strong>
											<div>
												<span class="box int_phone"> <input type="tel"
													id="cPhone" name="cPhone" class="int" maxlength="16"
													placeholder="전화번호 입력.">
												</span>
											</div>

											<p></p>
											<strong>이메일</strong>
											<div>
												<span class="box int_email"> <input type="text"
													name="cEmail" id="cEmail" class="int" maxlength="100"
													placeholder="선택입력.">
												</span>
											</div>

											<div class="jbutton">
												<input type="button" class="join_button"
													onclick="csubmitForm()" value="가입하기">
											</div>
										</fieldset>
									</form>
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
	//회원 아이디 공백 제거
	
	function cIdCheck() {
		
		console.log("테스트");
		var cId = document.getElementById("cId");
		var cIdResult = document.getElementById("cIdResult");
		console.log("cId : " + cId);
		var cIdVal = cId.value;

		if (cIdVal.length <= 0) {
			confircId.innerHTML = "";
			return false;
		} else if (cIdVal.search(/\s/) != -1) {
			confircId.style.color = "#F781BE";
			confircId.innerHTML = "점주님 아이디 공백 없이 입력해주세요!";
			return false;
		} else {

			// 점주 회원 아이디 중복체크
			function cidOverlap() {
				console.log("테스트");
				var cId = document.getElementById("cId").value;
				var confircId = document.getElementById("confircId");
				console.log("cId : " + cId);
				$.ajax({
					type : "POST",
					url : "cidoverlap",
					data : {
						"cId" : cId
					},
					dataType : "text",

					success : function(data) {
						if (data == "OK") {
							confircId.style.color = "#0000ff";
							confircId.innerHTML = "사용가능한 아이디";
							just = true;
						} else {
							confircId.style.color = "#ff0000";
							confircId.innerHTML = "사용중인 아이디";
							just = false;
						} // end if
					}, // end success
					error : function() {
						alert('점주 가입 실패!');
						just = false;
					} // end error

				}); // end ajax

			} // end idOverlap()

			cIdResult.style.color = "#0000ff";
			return cidOverlap();
		}

	} //end mIdCheck()

	//점주 비밀번호 정규식 체크 메소드
	function cPwCheck() {
		var cPw = document.getElementById("cPw");
		var cpwResult = document.getElementById("cpwResult");

		var cPwVal = cPw.value;

		var num = cPwVal.search(/[0-9]/g);
		var eng = cPwVal.search(/[a-z]/ig);
		var spe = cPwVal.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

		if (cPwVal.length <= 0) {
			cpwResult.innerHTML = "";
			return false;
		} else if (cPwVal.length<8 || cPwVal.length>20) {
			cpwResult.style.color = "#ff0000";
			cpwResult.innerHTML = "8~20자리 이내로 입력해주세요!";
			return false;
		} else if (cPwVal.search(/\s/) != -1) {
			cpwResult.style.color = "#ff0000";
			cpwResult.innerHTML = "비밀번호는 공백 없이 입력해주세요!";
			return false;
		} else if (num < 0 || eng < 0 || spe < 0) {
			cpwResult.style.color = "#ff0000";
			cpwResult.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요!";
			return false;
		} else {
			cpwResult.style.color = "#0000ff";
			cpwResult.innerHTML = "적절한 비밀번호 입니다!";
			return true;
		}

	} //end cPwCheck()

	// 점주 공란
	var cName = document.getElementById("cName");
	var cPhone = document.getElementById("cPhone");
	var cEmail = document.getElementById("cEmail");

	function csubmitForm() {


		if (!just) {
			alert('아이디를 확인해주세요!');
		} else if (!cPwCheck()) {
			alert('비밀번호를 확인해주세요!');
		} else if (cName.value == "") {
			alert('이름을 입력해주세요!');
		} else if (cPhone.value == "") {
			alert('전화번호를 입력해주세요!');
		} else if (cEmail.value == "") {
			alert('이메일을 입력해주세요!');
		} else {

			//이메일 정규식
			var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

			if (!emailRule.test(cEmail.value)) {
				alert('이메일을 확인해주세요!!');
			} else {
				alert('🎊점주님 가입 완료되었습니다. 축하합니다🎊\n업체를 등록해주세요');
				cjoinForm.submit();
			}
		}
	} //end submitForm()
</script>
<!-- <!-- jquery를 사용하기 위해 작성 -->
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<!-- 다음 주소 api -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>

<script>
	//회원 아이디 공백 제거
	var just = false;
	function mIdCheck() {
		console.log("테스트");
		var mId = document.getElementById("mId");
		var mIdResult = document.getElementById("mIdResult");
		console.log("mId" + mId);
		var mIdVal = mId.value;

		if (mIdVal.length <= 0) {
			confirmId.innerHTML = "";
			return false;
		} else if (mIdVal.search(/\s/) != -1) {
			confirmId.style.color = "#F781BE";
			confirmId.innerHTML = "회원님 아이디 공백 없이 입력해주세요!";
			return false;
		} else {
			//일반 회원 중복체크
			function midOverlap() {

				var mId = document.getElementById("mId").value;
				var confirmId = document.getElementById("confirmId");

				$.ajax({
					type : "POST",
					url : "midoverlap",
					data : {
						"mId" : mId
					},
					dataType : "text",

					success : function(data) {
						if (data == "OK") {
							confirmId.style.color = "#0000ff";
							confirmId.innerHTML = "사용가능한 아이디";
							just = true;
						} else {
							confirmId.style.color = "#ff0000";
							confirmId.innerHTML = "사용중인 아이디";
							just = false;
						} // end if
					}, // end success
					error : function() {
						alert('회원가입 실패!');
					} // end error
				}); // end ajax

			} // end idOverlap()

			mIdResult.style.color = "#0000ff";
			return midOverlap();
		}

	} //end mIdCheck()

	//회원 비밀번호 정규식 체크 메소드
	function mPwCheck() {
		var mPw = document.getElementById("mPw");
		var mpwResult = document.getElementById("mpwResult");

		var mPwVal = mPw.value;

		var num = mPwVal.search(/[0-9]/g);
		var eng = mPwVal.search(/[a-z]/ig);
		var spe = mPwVal.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

		if (mPwVal.length <= 0) {
			mpwResult.innerHTML = "";
			return false;
		} else if (mPwVal.length<8 || mPwVal.length>20) {
			mpwResult.style.color = "#ff0000";
			mpwResult.innerHTML = "8~20자리 이내로 입력해주세요!";
			return false;
		} else if (mPwVal.search(/\s/) != -1) {
			mpwResult.style.color = "#ff0000";
			mpwResult.innerHTML = "비밀번호는 공백 없이 입력해주세요!";
			return false;
		} else if (num < 0 || eng < 0 || spe < 0) {
			mpwResult.style.color = "#ff0000";
			mpwResult.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요!";
			return false;
		} else {
			mpwResult.style.color = "#0000ff";
			mpwResult.innerHTML = "적절한 비밀번호 입니다!";
			return true;
		}

	} //end mPwCheck()

	var mGenderArray = document.getElementsByName("mGender");
	// mGenderArray[0] = 남자
	// mGenderArray[1] = 여자

	var mName = document.getElementById("mName");
	var mBirth = document.getElementById("mBirth");
	var mPhone = document.getElementById("mPhone");
	var mEmail = document.getElementById("mEmail");
	var mAddr = document.getElementById("mAddr");

	function msubmitForm() {

		var mGender = "";
		
		for (var i = 0; i < mGenderArray.length; i++) {
			if (mGenderArray[i].checked == true) {
				mGender = mGenderArray[i].value;
			}
		}
		
		console.log("just : " + just);

		if (!just) {
			alert('아이디를 확인해주세요!');
		} else if (!mPwCheck()) {
			alert('비밀번호를 확인해주세요!');
		} else if (mName.value == "") {
			alert('이름을 입력해주세요!');
		} else if (mBirth.value == "") {
			alert('생년월일을 입력해주세요!');
		} else if (mGender == "") {
			alert('성별을 입력해주세요!');
		} else if (mPhone.value == "") {
			alert('전화번호를 입력해주세요!');
		} else if (mEmail.value == "") {
			alert('이메일을 입력해주세요!');
		} else {
			alert('🎊회원가입이 완료되었습니다.🎊 \n가입시 1000Point 드립니다.');
			//이메일 정규식
			var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

			if (!emailRule.test(mEmail.value)) {
				alert('이메일을 확인해주세요!!');
			} else {
				mjoinForm.submit();
			}
		}
	} //end submitForm()
</script>



</html>