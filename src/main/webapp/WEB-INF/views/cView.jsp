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
								href="cview?cId=${sessionScope.cloginId}&scCode=${sessionScope.cloginCode}">업체
									관리</a></li>
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
						<h4>업체 관리</h4>
						<div class="breadcrumb__links">
							<a href="index">메인페이지</a> <a href="cview?cId=${sessionScope.cloginId}&scCode=${sessionScope.cloginCode}">업체 관리</a> <span>회원
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
									data-toggle="tab" href="#tabs-1" role="tab">회원 정보</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-2" role="tab">업체 관리</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-3" role="tab">나의 문의현황</a></li>
							</ul>
						</div>
						<!-- 내 정보보기 -->
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__content">
									<p class="note">회원 정보</p>
									<div class="product__details__tab__content__item">
										<div class="product__details__tab__content__item">
											<div class="row" id="cModify">
												<div class="col-lg-8 col-md-8">
													<div class="member_profile_main">
														<!-- 아이디 -->
														<div class="member_profile">
															아이디:<span>${cmember.cId}</span> <input type="hidden"
																value="${cmember.cId}" name="cId" id="cId">
														</div>
														<!-- 이름 -->
														<div class="member_profile">
															이름: <span>${cmember.cName}</span>

														</div>
														<!-- 전화번호 -->
														<div class="member_profile">
															전화번호: <span>${cmember.cPhone}</span>
														</div>
														<!-- 이메일 -->
														<div class="member_profile">
															이메일: <span>${cmember.cEmail}</span>
														</div>

													</div>
												</div>
												<div class="col-lg-4 col-md-4">
													<div class="checkout__order">
														<button onclick="location.href='upform'" class="site-btn">업체
															등록</button>
														<button onclick="cModify()" class="site-btn">수정하기</button>
														<button onclick="cDel()" class="site-btn">탈퇴하기</button>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>

							<!-- 업체 관리 -->
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__tab__content">
									<p class="note">업체 관리</p>



									<div>
										<div class="col-lg-12">
											<ul class="nav nav-tabs" role="tablist">
												<li class="nav-item"><a class="nav-link active"
													data-toggle="tab" href="#tabs-5" role="tab">업체 목록</a></li>
												<li class="nav-item"><a class="nav-link"
													data-toggle="tab" href="#tabs-6" role="tab">승인대기</a></li>
												<li class="nav-item"><a class="nav-link"
													data-toggle="tab" href="#tabs-9" role="tab">비활성화 업체 목록</a></li>
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
																			<c:forEach var="clist" items="${mgstore}"
																				varStatus="status">
																				<c:if test="${clist.sStatus == 1}">
																					<div class="col-lg-4 col-md-6 col-sm-6">
																						<div class="product__item sale">
																							<div class="product__item__pic set-bg"
																								data-setbg="resources/fileUpload/${clist.sFileName1}">
																							</div>
																							<div class="product__item__text">
																								<h6>${clist.sName}</h6>
																								<a href="sView?storeCode=${clist.storeCode}&cCode=${sessionScope.cloginCode}" class="add-cart">상세보기</a>
																								<div class="rating"></div>
																							</div>
																						</div>
																					</div>
																				</c:if>
																			</c:forEach>
																		</div>
																	</div>
																</div>
															</div>
														</section>
													</fieldset>
												</div>

												<!-- 승인대기 -->
												<div class="tab-pane" id="tabs-6" role="tabpanel">
													<fieldset>
														<section class="shop spad">
															<div class="container">
																<div class="row">
																	<div class="col-lg-12">
																		<div class="row">
																			<c:forEach var="clist" items="${mgstore}"
																				varStatus="status">
																				<c:if test="${clist.sStatus == 0}">
																					<div class="col-lg-4 col-md-6 col-sm-6">
																						<div class="product__item sale">
																							<div class="product__item__pic set-bg"
																								data-setbg="resources/fileUpload/${clist.sFileName1}">
																							</div>
																							<div class="product__item__text">
																								<h6>${clist.sName}</h6>
																								<a href="sView?storeCode=${clist.storeCode}&cCode=${sessionScope.cloginCode}" class="add-cart">상세보기</a>
																							
																								<c:if test='${clist.sStatus == 0}'>승인대기</c:if>
																								<div class="rating"></div>
																							</div>
																						</div>
																					</div>
																				</c:if>
																			</c:forEach>
																		</div>

																	</div>
																</div>
															</div>
														</section>
													</fieldset>
												</div>
												
												<!-- 비활성화 업체목록 -->
												<div class="tab-pane" id="tabs-9" role="tabpanel">
													<fieldset>
														<section class="shop spad">
															<div class="container">
																<div class="row">
																	<div class="col-lg-12">
																		<div class="row">
																			<c:forEach var="clist" items="${mgstore}"
																				varStatus="status">
																				<c:if test="${clist.sStatus == 2 || clist.sStatus == 3}">
																					<div class="col-lg-4 col-md-6 col-sm-6">
																						<div class="product__item sale">
																							<div class="product__item__pic set-bg"
																								data-setbg="resources/fileUpload/${clist.sFileName1}">
																							</div>
																							<div class="product__item__text">
																								<h6>${clist.sName}</h6>
																								<c:if test='${clist.sStatus != 3}'>
																								<a href="sView?storeCode=${clist.storeCode}&cCode=${sessionScope.cloginCode}" class="add-cart">상세보기</a>
																								</c:if>
																								<c:if test='${clist.sStatus == 3}'>
																								<a class="add-cart">서비스이용이 중단된업체입니다</a>
																								</c:if>
																								<c:if test='${clist.sStatus == 2}'>승인거절</c:if>
																								<c:if test='${clist.sStatus == 3}'>서비스 이용 중단</c:if>
																								<div class="rating"></div>
																							</div>
																						</div>
																					</div>
																				</c:if>
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



							<!-- 나의 문의현황 -->
							<div class="tab-pane" id="tabs-3" role="tabpanel">
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

													<c:forEach var="cQnAList" items="${cQnAList}"
														varStatus="num">

														<tr>
															<td rowspan="2" class="center">${num.count}</td>
															<td rowspan="2" class="center">${cQnAList.cQnACat}</td>
															<td>${cQnAList.cQnATitle}</td>


															<c:if test="${cQnAList.cQnAKey == 0}">
																<td class="center">답변 대기</td>
															</c:if>

															<c:if test="${cQnAList.cQnAKey == 1}">
																<td class="center">답변 완료</td>
															</c:if>

															<td class="center"><a href="#none" onclick="seeQnA(${cQnAList.cQnACode})"
																	id="seeqna${cQnAList.cQnACode}"><img src="resources/img/보기.png"></a></td>
														</tr>

														<tr>
															<td colspan="3" id="contents${cQnAList.cQnACode}"
																style="display: none; width: 50px; background-color : #EFEFEF;">
																문의내용 : 
																<br><br>${cQnAList.cQnAContents} <br> <br> 
																<span style="color: #8F8F8F">(${cQnAList.cQnADate})</span> 
																
																<c:if test="${not empty cQnAList.cQnAAnswer}">
																	<br>
																	<hr>
																	문의 답변 : 
																	<br><br>${cQnAList.cQnAAnswer}<br><br>
																	<span style="color: #8F8F8F">(${cQnAList.cQnADate2})</span>
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
	function cModify(){
		console.log ("test");
		
		var cModify = document.getElementById("cModify");
		output = "";
		
		output +="<form action='cModify' method='POST'>";
		output +="	<div class='col-lg-8 col-md-8' >				";
		output +="		<div class='member_profile_main'>			";
		output +="			<!-- 아이디 -->		";
		output +="			<div class='member_profile'>		";
		output +="				아이디:<span>${cmember.cId}</span> <input type='hidden' value='${cmember.cId}' name='cId'>";
		output +="					";
		output +="			</div>		";
		output +="			<!-- 이름 -->		";
		output +="			<div class='member_profile'>		";
		output +="				이름: <span><input tyep='text' name='cName'></span>	";
		output +="			</div>		";
		output +="			<!-- 전화번호 -->		";
		output +="			<div class='member_profile'>		";
		output +="				전화번호: <span><input tyep='text' name='cPhone'></span>	";
		output +="			</div>		";
		output +="			<!-- 이메일 -->		";
		output +="			<div class='member_profile'>		";
		output +="				이메일: <span><input type='text' name='cEmail'></span>	";
		output +="			</div>		";
		output +="			<button type='submit' class='site-btn'>수정</button>		";
		output +="					";
		output +="		</div>			";
		output +="	</div>				";
		output +="</form>"
		
		
		cModify.innerHTML = output;
	}
</script>


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

<!-- <!-- jquery를 사용하기 위해 작성 -->
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
	<script>
			var del = false;
	
		function cDel(){
			console.log("테스트");
			 var cId = document.getElementById("cId").value;
			console.log("cId"+cId);
		    if (confirm('점주님 탈퇴를하시겠습니까?')==true) {
		    	
		    	$.ajax({
					type : "GET",
					url :"cDel",
					data :{"cId":cId},
					dataType :"text",
					
					success : function(data){
						if(data=="OK"){
						alert('삭제되었습니다.');
						location.href="index";
						}
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


</html>