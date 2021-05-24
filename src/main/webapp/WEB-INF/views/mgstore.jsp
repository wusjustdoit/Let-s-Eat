<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상세보기 | 페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
        rel="stylesheet">


<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    <!-- 스타일 -->
    <style>
        .maintxt {
            color: #ffffff;
        }
        .reviewdiv {
			border : 2px solid black;
			border-radius : 10px;
			width : 60%;
			padding : 10px;
			padding-left : 20px;
			margin : auto;
		}
		.star {
			width : 100px;
		}
		.fixed {
			position: fixed;	text-align: center;	
    		width :40px;		height : 40px;	line-height: 40px;	
    		top : 90%;	left : 90%;
    		background-color: yellow;
    		border-radius : 50px;
		}
    </style>

</head>

<body>
   

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="#">회원가입</a>
                <a href="#">자주 묻는 질문</a>
            </div>
            <div class="offcanvas__top__hover">

            </div>
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
								href="cview?cId=${sessionScope.cloginId}&cCode=${sessionScope.cloginCode}">업체 관리</a>

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



    <!-- Shop Details Section Begin -->
    <section class="shop-details">
        <div class="product__details__pic">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__details__breadcrumb">
                            <a href="index">메인페이지</a>
                            <span>상세 정보</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="resources/fileUpload/${storeView.sFileName1}">
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="resources/fileUpload/${storeView.sFileName2}">
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="resources/fileUpload/${storeView.sFileName3}">
                                   
                                    </div>
                                   
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-6">
                    <input type="hidden" value="${storeView.storeCode}" name="storeCode" id="storeCode">
					<input type="hidden" value="${sessionScope.mloginCode}" name="mCode" id="mCode"> 
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="resources/fileUpload/${storeView.sFileName1}" alt="">
                                     
                                            
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="resources/fileUpload/${storeView.sFileName2}" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="resources/fileUpload/${storeView.sFileName3}" alt="">
                                </div>
                            </div>
                            
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3">
                        <div class="checkout__order">
                            <h4 class="order__title" style="font-size: 45px">${storeView.sName}</h4>
                            <div class="product__details__content">
                                <div class="product__details__text">
                                    <h4>평점/리뷰</h4>
                                    <div class="rating">
											<c:if test="${not empty resaView.rStarAVG}">
                                       <span><img src="resources/img/staravg2.png" style="width : 30px; padding-bottom : 5px;"></span><span ><strong>${resaView.rStarAVG}</strong></span>
                                        </c:if>
                                        <c:if test="${empty resaView.rStarAVG}">
                                        작성된 리뷰가 없습니다
                                        </c:if>
                                    </div><br>

                                    
										
									<!-- 카테고리 -->
                                    <div class="product__details__tab__content__item">
                                        <h4>카테고리</h4>
                                        ${storeView.sFood} 
                                    </div>
                                    
                                    <!-- 키워드 -->
                                    <div class="product__details__tab__content__item">
                                        <h4>키워드</h4>
                                        ${storeView.sKeyword} 
                                    </div>
                                    
                                    <!-- 찜하기 버튼 -->
                                     <div class="product__details__tab__content__item">
                                       
                                     
                                  		<c:choose>
											<c:when test="${not empty sessionScope.mloginCode}">
												<h4>찜하기</h4>
                                    			<c:if test="${not empty resaView1.ssCode}">
													<div id="save">
													<img src="resources/img/like.png" width="30px"
														onclick="likexbutton()"><br>
													</div>
	
												</c:if>

												<c:if test="${empty resaView1.ssCode}">
													<div id="save">
													<img src="resources/img/likex.png" width="30px"
														onclick="likebutton()"><br>
													</div>
												</c:if>
										
										</c:when>
										
										</c:choose><br><br>
									</div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        
        
        
            <div class="container">
                
                <div class="row">
                    <div class="col-lg-12">
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                
                                    <a class="nav-link" data-toggle="tab" href="#" onclick="">예약하러 가기</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#" onclick="review()">리뷰 보기</a>
                                </li>
                                
                                
                                
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#" onclick="sDetail(),map_1()">정보 상세보기</a>
                                </li>
                            </ul>
                       
                                
                                <!-- 정보 상세보기 -->
                                <div class="tab-pane" id="tabs7" role="tabpanel">
                                   
                                </div><!--end 상세보기  -->
                                
                            </div>
                        </div>
                    </div>
    </section>
    <!-- Shop Details Section End -->
<br><br><br><br>
   
	
	<div class="fixed">
		<a href="#top">↑</a>
	</div>
	
	 
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
                        <p>문의사항이 있으면 고객센터로 문의 하세요. 
                        <br><br>tel)02-0000-0000</p>
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
                    <p>Copyright ©
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


<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script>

	// 좋아요 버튼
	function likebutton() {
		console.log("test");

		var storeCode = document.getElementById("storeCode").value;
		var mCode = document.getElementById("mCode").value;
		var confirmId = document.getElementById("save");
		console.log("storeCode : " + storeCode);
		console.log("mCode : " + mCode);
		$
				.ajax({
					type : "GET",
					url : "storesave",
					data : {
						"storeCode" : storeCode,
						"mCode" : mCode

					},
					dataType : "text",

					success : function(data) {
						if (data == "OK") {
							output = "";

							output += "<img src='resources/img/like.png' width='30px' onclick='likexbutton()'>";

							document.getElementById("save").innerHTML = output;
						} else {

							output = "";
							output += "<img src='resources/img/likex.png' width='30px' onclick='likebutton()'>";

							document.getElementById("save").innerHTML = output;

						}//end if
					}, // end success

					error : function() {
						alert('함수 통신 실패!');
					}//end error

				});//end ajax

	}

	// 좋아요 X 버튼
	function likexbutton() {
		console.log("test");

		var storeCode = document.getElementById("storeCode").value;
		var mCode = document.getElementById("mCode").value;
		var confirmId = document.getElementById("save");
		console.log("storeCode : " + storeCode);
		console.log("mCode : " + mCode);
		$
				.ajax({
					type : "GET",
					url : "storesavex",
					data : {
						"storeCode" : storeCode,
						"mCode" : mCode

					},
					dataType : "text",

					success : function(data) {
						if (data == "OK") {
							output = "";

							output += "<img src='resources/img/likex.png' width='30px' onclick='likebutton()'>";

							document.getElementById("save").innerHTML = output;
						} else {

							output = "";
							output += "<img src='resources/img/likex.png' width='30px' onclick='likebutton()'>";

							document.getElementById("save").innerHTML = output;

						}//end if
					}, // end success

					error : function() {
						alert('함수 통신 실패!');
					}//end error

				});//end ajax

	}
</script>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7079bba1dd97a6de15f366a1524f4ad5&libraries=services"></script>
<script>
	// 다음지도 API
	function map_1(){
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 2
	// 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder
			.addressSearch(
					'${storeView.sAddr}',
					function(result, status) {

						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {

							var coords = new kakao.maps.LatLng(result[0].y,
									result[0].x);

							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : coords
							});

							// 인포윈도우로 장소에 대한 설명을 표시합니다
							var infowindow = new kakao.maps.InfoWindow(
									{
										content : '<div style="width:150px;text-align:center;padding:6px 0;">${storeView.sName}</div>'
									});
							infowindow.open(map, marker);

							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coords);
						}
					});
	}
</script>
<script>

	// 업체 상세보기
	function sDetail(){
		console.log("test");
		console.log("test");
		
		var tabs7 = document.getElementById("tabs7");
		
		var output1 = "";
		
		
		output1 += "	<div class='product__details__tab__content'>	";
		output1 += "	                                        <p class='note'>업체 상세정보</p>	";
		output1 += "	                                        <div class='product__details__tab__content__item'>	";
		output1 += "	                                            <h6>연락처</h6>	";
		output1 += "	                                            <i class='fa fa-phone'>  ${storeView.sPhone}</i>	";
		output1 += "	                                        </div>	";
		output1 += "	                                        <div class='product__details__tab__content__item'>	";
		output1 += "	                                            <h6>주소</h6>	";
		output1 += "	                                            <i class='fa fa-map'>  ${storeView.sAddr}</i>	";
		
		output1 += "	                                            <em class='link'> </em>	";
		output1 += "												<div id='map' style='width: 50%; height: 350px;' class='div1'></div>	";
		
		output1 += "	                                        </div>	";
		output1 += "	                                        <div class='product__details__tab__content__item'>	";
		output1 += "	                                            <h6>영업시간</h6>	";
		output1 += "	                                            <i class='fa fa-clock-o'>  ${storeView.sTime}</i>	";
		output1 += "	                                        </div>	";
		output1 += "	                                        <div class='product__details__tab__content__item'>	";
		output1 += "	                                            <h6>단체석유무</h6>	";
		output1 += "	                                            <i class='fa fa-male'>  ${storeView.sSeat}</i>	";
		output1 += "	                                        </div>	";
		output1 += "	                                        <div class='product__details__tab__content__item'>	";
		output1 += "	                                            <h6>주차 유무</h6>	";
		output1 += "	                                            <i class='fa fa-car'>  ${storeView.sPark}</i>	";
		output1 += "	                                        </div>	";
		output1 += "	                                        <div class='product__details__tab__content__item'>	";
		output1 += "	                                            <h6>소개글</h6>	";
		output1 += "	                                            <i class='fa fa-pencil'>  <p>${storeView.sContents}</p></i>	";
		output1 += "	                                        </div>	";
		
		
		document.getElementById("tabs7").innerHTML = output1;
	
	
	}

</script>


<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script>


// 리뷰 보기 
function review(){
	var tabs7 = document.getElementById("tabs7");
	
	var storeCode = document.getElementById("storeCode").value;
	console.log("storeCode : " + storeCode);
	
	$.ajax({
				type : "GET",
				url : "storeRList",
				data : {
					"storeCode" : storeCode

				},
				
				dataType : "json",

				success :  function(data){
					
					var loginId = '${sessionScope.mloginId}';
					var output = "";
					
					
					output +="  <br><br><div class='birth_yy'>";
					output +="  <span class='box'>";
					output +="		<select onchange='sort()' name='reviewSort' id='reviewSort'>			";
					output +="			<option value='최신순' selected>최신순</option>		";
					output +="			<option value='평점 높은순'>평점 높은순</option>		";
					output +="			<option value='평점 낮은순'>평점 낮은순</option>		";
					output +="		</select>			";
					output +="</span>";
					output +="</div>";
					
					for(var i in data){
						
						 var rmId = data[i].rmId;
					
						output +="			<div class='reviewdiv'>		";
						output +="				<b style='font-size: 28px'>" + data[i].rsName + "</b><br>";
						output +="				<div><img src='resources/img/"+ data[i].rStar + ".png' class='star' style=' padding-bottom : 5px;'>&nbsp;&nbsp;<b>" + data[i].rStar + "</b></div><br>	";
						output +="				<div style='word-break:break-all'>" + data[i].rContents + "</div><br>	";
						output +="				<span style='color:#8F8F8F'>" + data[i].rBook + "&nbsp;&nbsp;|&nbsp;&nbsp;" + data[i].rmId + "</span> 	";
						
						
						if(rmId==loginId){
							output +="				<span style='position: absolute; left : 75%;'><img src='resources/img/trash1.png'><a href='storeReviewDel(`"+data[i].rmId+"`,`"+ data[i].rCode + "`)'></a></span>	";
						}
						
						output +="			</div><br>		";
						output +="					";
						output +="			<input type='hidden' id='mloginId' value='${sessionScope.mloginId}'>		";
						output +="			<input type='hidden' id='storeCode' value='${storeRList.rsCode}'>		";
						
					}

					document.getElementById("tabs7").innerHTML = output;


				},// end success

				error : function() {
					alert('함수 통신 실패!');
				}//end error

			});//end ajax
			
}

</script>




</html>