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
<title>마이페이지</title>

<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">

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
table, tr, td, th {
	margin: auto;
	padding: 5px;
}

td {
	border: 1px solid #5F5F5F;
	border-collapse: collapse;
}

.center {
	text-align: center;
}

.reviewdiv {
	border: 2px solid black;
	border-radius: 10px;
	width: 38%;
	padding: 10px;
	padding-left: 20px;
	margin: auto;
}

.star {
	width: 90px;
}

.maintxt {
	color: #ffffff;
}
</style>

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="offcanvas-menu-wrapper">
		<div class="offcanvas__option">
			<div class="offcanvas__links">
				<a href="#">회원가입</a> <a href="#">자주 묻는 질문</a>
			</div>
			<div class="offcanvas__top__hover"></div>
		</div>

		<div id="mobile-menu-wrap"></div>
		<div class="offcanvas__text">
			<p></p>
		</div>
	</div>
	<!-- Offcanvas Menu End -->

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
							<li><a href="cs_Index">문의사항</a></li>
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
							<a href="index">메인페이지</a> <a href="mview?mId=${sessionScope.mloginId}&mCode=${sessionScope.mloginCode}">마이페이지</a> <span>나의
								정보</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- Shop Details Section Begin -->
	<section class="shop-details">

		<div class="product__details__content">
			<div class="container">

				<div class="row">
					<div class="col-lg-12">
						<div class="product__details__tab">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tabs-1" role="tab">내 정보 보기</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-2" role="tab">예약 목록</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-3" role="tab">리뷰 목록</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-4" role="tab">찜 목록</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-7" role="tab">나의 문의현황</a></li>
							</ul>
							<!-- 내 정보보기 -->
							<div class="tab-content">
								<div class="tab-pane active" id="tabs-1" role="tabpanel">
									<div class="product__details__tab__content">
										<p class="note">내 정보 보기</p>
										<div class="product__details__tab__content__item">
											<div class="product__details__tab__content__item">
											
											
												<div class="row" id="mModify">
												
													<div class="col-lg-8 col-md-8" >
														<div class="member_profile_main">
															<!-- 아이디 -->
															<div class="member_profile">
																아이디:<span>${member.mId}</span> <input type="hidden"
																	value="${member.mId}" name="mId" id="mId">
															</div>
															<!-- 이름 -->
															<div class="member_profile">
																이름: <span>${member.mName}</span>

															</div>
															<!-- 생년월일 -->
															<div class="member_profile">
																생년월일: <span>${member.mBirth}</span>
															</div>
															<!-- 전화번호 -->
															<div class="member_profile">
																전화번호: <span>${member.mPhone}</span>
															</div>
															<!-- 주소 -->
															<div class="member_profile">
																주소: <span>${member.mAddr}</span>
															</div>
															<!-- 이메일 -->
															<div class="member_profile">
																이메일: <span>${member.mEmail}</span>
															</div>
															<!-- 가입일 -->
															<div class="member_profile">
																가입일: <span>${member.mJoinDate}</span>
															</div>

														</div>
													</div>
													<div class="col-lg-4 col-md-4">
														<div class="checkout__order">
															<h4 class="order__title">보유 포인트</h4>
															<div class="member__order__products"></div>
															<ul class="member__total__products">
																<li>${member.mPoint}<span>Point</span></li>
															</ul>
															<button
																onclick="window.open('mPoint', 'mPoint', 'width=1000,height=650');"
																class="site-btn">포인트 충전</button>
															<button onclick="mModify()" class="site-btn">수정하기</button>
															<button onclick="mDel()" class="site-btn">탈퇴하기</button>
														</div>
													</div>
													
												</div>
												
												
												
											</div>
										</div>

									</div>
								</div>


								<!-- 예약목록 -->
								<div class="tab-pane" id="tabs-2" role="tabpanel">
									<div class="product__details__tab__content">
										<p class="note">예약 목록</p>



										<div>
											<div class="col-lg-12">
												<ul class="nav nav-tabs" role="tablist">
													<li class="nav-item"><a class="nav-link active"
														data-toggle="tab" href="#tabs-5" role="tab">예약 목록</a></li>
													<li class="nav-item"><a class="nav-link"
														data-toggle="tab" href="#tabs-6" role="tab">예약 이력</a></li>
												</ul>
												<!-- 업체목록 -->
												<div class="tab-content">
													<div class="tab-pane active" id="tabs-5" role="tabpanel">
														<fieldset>
															<section class="shop spad">
																<div class="container">
																	<div class="row">
																		<div class="col-lg-12">
																			<div class="row">
																				
																					
																					<c:forEach var='reservationlist'
																						items='${bookinglist}'>
																						<div class='row'>
																							<div class='col-lg-4 col-md-4'>
																								<div class='review_profile_main'>
																									<!-- 아이디 -->
																									<div class='review_profile'>
																										<img
																											src='resources/fileUpload/${reservationlist.bsFileName1}'>
																									</div>
																								</div>
																							</div>
																							<div class='col-lg-8 col-md-8'>
																								<div class='review__list'>
																									<h4 class='review__title'>
																										<a
																											href='storeView?storeCode=${reservationlist.bsCode}&mCode=${sessionScope.mloginCode}'>${reservationlist.bsName}</a>
																									</h4>
																									
																									<!-- 예약일 -->
																									<div class='review__list__date'>
																										예약 일 <span> ${reservationlist.bDate}</span>
																									</div>
																									<!-- 예약 시간 -->
																									<div class='review__list__date'>
																										예약 시간 <span> ${reservationlist.bTime}</span>
																									</div>
																									<!-- 예약 인원 -->
																									<div class='review__list__date'>
																										예약 인원 <span> ${reservationlist.bmCount}</span>
																									</div>
																									<!-- 삭제아이콘 -->
																									<div class='review__list__date'>
																									 <span><a href="mybookDel?bCode=${reservationlist.bCode}&bmCode=${sessionScope.mloginCode}"><img
																											src='resources/img/icon/delete.png' alt=''></a></span>
																									</div>
																									
																								</div>
																							</div>
																						</div>
																						
																					</c:forEach>

																			</div>
																		</div>
																	</div>
																</div>
															</section>
														</fieldset>
													</div>

													<!-- 예약이력 -->
													<div class="tab-pane" id="tabs-6" role="tabpanel">
														<fieldset>
															<section class="shop spad">
																<div class="container">
																	<div class="row">
																		<div class="col-lg-12">
																			<div class="row">
																				
																					<c:forEach var='bookedlist' items='${bookedlist}'>
																						<div class='row'>
																							<div class='col-lg-4 col-md-4'>
																								<div class='review_profile_main'>
																									<!-- 아이디 -->
																									<div class='review_profile'>
																										<img
																											src='resources/fileUpload/${bookedlist.bsFileName1}'>
																									</div>
																								</div>
																							</div>
																							<div class='col-lg-8 col-md-8'>
																								<div class='review__list'>
																									<h4 class='review__title'>
																										<a
																											href='storeView?storeCode=${bookedlist.bsCode}&mCode=${sessionScope.mloginCode}'>${bookedlist.sName}</a>
																									</h4>
																									
																									<!-- 예약일 -->
																									<div class='review__list__date'>
																										예약 일 <span> ${bookedlist.bDate}</span>
																									</div>
																									<!-- 예약 시간 -->
																									<div class='review__list__date'>
																										예약 시간 <span> ${bookedlist.bTime}</span>
																									</div>
																									<!-- 예약 인원 -->
																									<div class='review__list__date'>
																										예약 인원 <span> ${bookedlist.bmCount}</span>
																									</div>
																									<c:if test="${bookedlist.brKey == 1}">
																									<div class='review__list__date'>
						                                                       						  <span><button onclick='' disabled style="width: 100px; height: 42px;	background: rgb(192, 192, 192);	color: white;	border: solid 1px rgb(192, 192, 192);">작성 완료</button></span>
		                                                							     	        </div>
		                                                							     	        </c:if>
																									<c:if test="${bookedlist.brKey == 0}">
																									<div class='review__list__date'>
						                                                       						  <span><button onclick="reviewWrite('${bookedlist.bCode}')" style="width: 100px; height: 42px;	background: rgb(255, 128, 128);	color: white;	border: solid 1px rgb(255, 128, 128);" >리뷰 작성</button></span>
		                                                							     	        </div>
		                                                							     	        </c:if>
		                                                							     	        
																								</div>
																							</div>
																						</div>
																						<br>
																					</c:forEach>


																			</div>

																		</div>
																	</div>
																</div>
															</section>
														</fieldset>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>






								<!-- 리뷰 목록 -->
								<div class="tab-pane" id="tabs-3" role="tabpanel">
									<div class="product__details__tab__content">
										<p class="note">리뷰 목록</p>
										<div class="product__details__tab__content__item">
											<c:forEach var="myRList" items="${myRList}">
												<div class="reviewdiv">
													<h2>${myRList.rsName}</h2>
													<div>
														<img src="resources/img/${myRList.rStar}.png" class="star">&nbsp;&nbsp;<b>${myRList.rStar}</b>
													</div>
													<br>
													<div style="word-break: break-all">${myRList.rContents}</div>
													<br> <span style="color: #8F8F8F">${myRList.rBook}</span>
													<span style="position: absolute; left: 65%;"><a
															href="myReviewDel?rmId=${myRList.rmId}&rCode=${myRList.rCode}"><img src="resources/img/trash1.png"></a></span>
															
												</div>
												<br>
											</c:forEach>




										</div>
										<div class="row">
											<div class="col-lg-12"></div>
										</div>
									</div>

								</div>
								<!-- 찜목록 -->
								<div class="tab-pane" id="tabs-4" role="tabpanel">
									<div class="product__details__tab__content">
										<p class="note">나의 찜 목록</p>
										<div class="product__details__tab__content__item">
											<section class="shop spad">
												<div class="container">
													<div class="row">

														<div class="col-lg-12">

															<div class="row">

																<c:forEach var="savelist" items="${savelist}"
																	varStatus="status">
																	<div class="col-lg-4 col-md-6 col-sm-6">
																		<div class="product__item sale">
																			<div class="product__item__pic set-bg"
																				data-setbg="resources/fileUpload/${savelist.sFileName1}">


																				<ul class="product__hover">
																					<li><a
																						href="storeView?storeCode=${savelist.ssCode}&mCode=${sessionScope.mloginCode}">
																							<i class="fa fa-heart"></i>
																					</a></li>
																				</ul>
																			</div>

																			<div class="product__item__text">
																				<h6>${savelist.sName}</h6>
																				<a
																					href="storeView?storeCode=${savelist.ssCode}&mCode=${sessionScope.mloginCode}"
																					class="add-cart">예약하러 가기</a>

																			</div>
																		</div>
																	</div>
																</c:forEach>




																

																
															</div>
														</div>
													</div>
												</div>
											</section>

										</div>

									</div>
								</div>

								<!-- 나의 문의현황 -->
								<div class="tab-pane" id="tabs-7" role="tabpanel">
									<div class="product__details__tab__content">
										<p class="note">나의 문의현황</p>
										<div class="row">
											<div class="col-lg-12">
												<div class="myqna">

													<!-- 내용 -->
													<table>
														<tr>
															<th style="width: 10%" class="center">번호</th>
															<th style="width: 20%" class="center">카테고리</th>
															<th style="width: 45%" class="center">제목</th>
															<th style="width: 20%" class="center">답변여부</th>
															<th style="width: 30%" class="center">보기</th>

														</tr>

														<c:forEach var="mQnAList" items="${mQnAList}"
															varStatus="num">

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

																<td class="center"><a href="#none" onclick="seeQnA(${mQnAList.mQnACode})"
																		id="seeqna${mQnAList.mQnACode}"><img src="resources/img/보기.png"></a></td>
															</tr>

															<tr>
																<td colspan="3" id="contents${mQnAList.mQnACode}"
																	style="display: none; width: 50px; background-color: #EFEFEF;">
																	문의내용 : <br> <br>${mQnAList.mQnAContents} <br>
																	<br> <span style="color: #8F8F8F">(${mQnAList.mQnADate})</span>
																	<c:if test="${not empty mQnAList.mQnAAnswer}">
																		<br>
																		<hr>
																	문의 답변 : 
																	<br>
																		<br>${mQnAList.mQnAAnswer}<br>
																		<br>
																		<span style="color: #8F8F8F">(${mQnAList.mQnADate2})</span>
																	</c:if>
																</td>
															</tr>



														</c:forEach>


													</table>

												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 나의문의현황 끝 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Details Section End -->
	<br>
	<br>
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



<script>
	//보기 버튼 누르면 내용이 나와라!
	function seeQnA(val){
		
		if(document.all("contents" + val).style.display == "none"){
			$('#contents' + val).fadeIn('fast');
			
			var seeqna = document.getElementById("seeqna" + val);
			
			var output = "";
			
			output +="<img src='resources/img/닫기.png'>";
			
			seeqna.innerHTML = output;
			
		} else { 
			$('#contents' + val).fadeOut('fast');
			
			var seeqna = document.getElementById("seeqna" + val);
			
			var output = "";
			
			output +="<img src='resources/img/보기.png'>";
			
			seeqna.innerHTML = output;
		}
		
	} // end seeQnA(val)
	
	
</script>
<script>
//리뷰 작성버튼 누르면 적성폼으로 이동해라!
function reviewWrite(bCode) {
	console.log("test");
	location.href='rwriteForm?bCode=' + bCode;
	
}


</script>
<script>
	function mModify(){
		console.log ("test");
		
		var mModify = document.getElementById("mModify");
		output = "";
		
		output +="<form action='mModify' method='POST'>";
		output +="	<div class='col-lg-8 col-md-8' >				";
		output +="		<div class='member_profile_main'>			";
		output +="			<!-- 아이디 -->		";
		output +="			<div class='member_profile'>		";
		output +="				아이디:<span>${member.mId}</span> <input type='hidden' value='${member.mId}' name='mId'>";
		output +="					";
		output +="			</div>		";
		output +="			<!-- 이름 -->		";
		output +="			<div class='member_profile'>		";
		output +="				이름: <span><input tyep='text' name='mName'></span>	";
		output +="					";
		output +="			</div>		";
		output +="			<!-- 생년월일 -->		";
		output +="			<div class='member_profile'>		";
		output +="				생년월일: <span>${member.mBirth}</span>	";
		output +="			</div>		";
		output +="			<!-- 전화번호 -->		";
		output +="			<div class='member_profile'>		";
		output +="				전화번호: <span><input tyep='text' name='mPhone'></span>	";
		output +="			</div>		";
		output +="			<!-- 주소 -->		";
		output +="			<div class='member_profile'>		";
		output +="				주소: <span><input type='text' id='sample6_postcode' name='postcode' placeholder='우편번호'>";
		output +="					<input type='button' onclick='sample6_execDaumPostcode()' value='우편번호 찾기'><br>";
		output +="					<input type='text' id='sample6_address' placeholder='주소' name='addr1'>";
		output +="					<input type='text' id='sample6_detailAddress' placeholder='상세주소' name='addr2'><br>";
		output +="					<input type='text' id='sample6_extraAddress' placeholder='참고항목' name='addr3'><br></span>	";
		output +="			</div>		";
		output +="			<!-- 이메일 -->		";
		output +="			<div class='member_profile'>		";
		output +="				이메일: <span><input type='text' name='mEmail'></span>	";
		output +="			</div>		";
		output +="			<!-- 가입일 -->		";
		output +="			<div class='member_profile'>		";
		output +="				가입일: <span>${member.mJoinDate}</span>	";
		output +="			</div>		";
		output +="			<button type='submit' class='site-btn'>수정</button>		";
		
		output +="			</div>		";
		output +="	</div>				";
		output +="	</div>				";
		output +=" <div class='col-lg-4 col-md-4'>";
		output +=" <div class='checkout__order'>";
		output +="	<div class='member__order__products'></div>";
		output +="	<button onclick='submit' class='site-btn'>수정하기</button>";
		output +="	</div>";
		output +="	</div>";
		output +="</form>";
		
		
		mModify.innerHTML = output;
	}
</script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
	<script>
			var del = false;
	
		function mDel(){
			console.log("테스트");
			 var mId = document.getElementById("mId").value;
			console.log("mId"+mId);
		    if (confirm('회원님 탈퇴를하시겠습니까?')==true) {
		    	
		    	$.ajax({
					type : "GET",
					url :"mDel",
					data :{"mId":mId},
					dataType :"text",
					
					success : function(data){
						if(data=="OK"){
						alert('삭제되었습니다.');
						location.href="index";
						
						
						
						}//end if
					},//end sucess
					
					error : function(){
						alert('함수통신 실패');
					}
					
				})//end $.ajax 
		            
		         } else {
		            alert("탈퇴를 취소하였습니다.");
		            return false;
		         }
		}
	

	</script>
<!-- 다음 주소 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
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
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
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
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>


</html>