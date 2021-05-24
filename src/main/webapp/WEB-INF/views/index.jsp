<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>  
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <script src="resources/js/jquery-3.6.0.js"></script>
	<!-- Google Charts -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>렛츠잇 | 메인페이지</title>


	<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

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
        .maintxt{
           color: #000000; 
           
        }
        .fixed {
			position: fixed;	text-align: center;	
    		width :40px;		height : 40px;	line-height: 40px;	
    		top : 90%;	left : 90%;
    		border-radius : 50px;
		}
		
#local {
  -webkit-tap-highlight-color: transparent;
  background-color: #fff;
  border-radius: 5px;
  border: solid 1px #e8e8e8;
  box-sizing: border-box;
  clear: both;
  cursor: pointer;
  display: block;
  float: left;
  font-family: inherit;
  font-size: 14px;
  font-weight: normal;
  height: 42px;
  line-height: 40px;
  outline: none;
  padding-left: 18px;
  padding-right: 30px;
  position: relative;
  text-align: left !important;
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  white-space: nowrap;
  width: 230px; }
  
  .local1 {
  -webkit-tap-highlight-color: transparent;
  background-color: #fff;
  border-radius: 5px;
  border: solid 1px #e8e8e8;
  box-sizing: border-box;
  clear: both;
  cursor: pointer;
  display: block;
  float: left;
  font-family: inherit;
  font-size: 14px;
  font-weight: normal;
  height: 42px;
  line-height: 40px;
  outline: none;
  padding-left: 18px;
  padding-right: 30px;
  position: relative;
  text-align: left !important;
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  white-space: nowrap;
  width: 230px; }
    </style>
    <link rel="stylesheet" type="text/css" href="resources/css/SA_css.css">

    

</head>

<body>

<c:if test="${sessionScope.cloginId ne 'admin'}">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="joinform">회원가입</a>
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
    <header class="header" id="top">
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
                            
                         <c:if test="${not empty sessionScope.mloginId}">
                                <a href="#">${sessionScope.mloginName} 님 환영합니다!</a>
                                
                           </c:if>
                           <c:if test="${not empty sessionScope.cloginId}">
                                <a href="#">${sessionScope.cloginName} 님 환영합니다!</a>
                                
                           </c:if>
                           <a href="#">사이트맵</a>
                            </div>


                            
                            <div class="header__top__hover">
                              
                            </div>
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
                        <a href="#" class="search-switch"><img src="" alt=""></a>
                        <a href="#"><img src="" alt=""></a>
                        <a href="#"><img src="" alt=""> <span></span></a>
                        <div class="price"></div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="index">홈</a></li>
                            <c:if test="${empty sessionScope}">
                            <li><a href="#">로그인</a>
                                <ul class="dropdown">
                                    <li><a href="mloginp">일반 로그인</a></li>
                                    <li><a href="cloginp">점주 로그인</a></li>

                                </ul>
                            </li>
                            
                            <li><a href="joinform">회원가입</a>
                            </li>
                            </c:if>
                            <c:if test="${not empty sessionScope.mloginId}">
                            <li><a href="mview?mId=${sessionScope.mloginId}&mCode=${sessionScope.mloginCode}">마이페이지</a>
                             
                            </li>
                            <li><a href="logout">로그아웃</a>
                            </li>
                            </c:if>
                            <c:if test="${not empty sessionScope.cloginId}">
                            <li><a href="cview?cId=${sessionScope.cloginId}&scCode=${sessionScope.cloginCode}">업체 관리</a>
                            </li>
                            <li><a href="logout">로그아웃</a>
                            </li>
                            </c:if>
                            <li><a href="cs_Index">문의사항</a></li>
                        </ul>
                    </nav>
                </div>

            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- 메인페이지 사진 슬라이드 -->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__items set-bg" data-setbg="resources/img/CO/cafe_2.png">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                                <h6>레츠잇</h6>
                                <h2></h2>
                                <p class="maintxt">업체등록과 핫플레이스 검색을 동시에 간편한 회원가입으로 "" 이용해 보세요</p>
                                <a href="joinform" class="primary-btn">회원가입 <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="hero__items set-bg" data-setbg="resources/img/CO/cafe_2.png">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                                <h6>레츠잇</h6>
                                <h2></h2>
                                <p class="maintxt">업체등록과 핫플레이스 검색을 동시에 간편한 회원가입으로 "" 이용해 보세요</p>
                                <a href="#" class="primary-btn">점주 회원가입 <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div>


        </div>


    </section>
    <!-- 메인페이지 사진 슬라이드 끝 -->


    <!-- 중앙 메뉴 바 카테고리 -->
    <section class="mid_menu_bar">
        <div class="container">
        <div class= "row">
            <div class="col-sm-offset-3 col-sm-7 col-md-offset-0 col-md-1"></div>
            <div class="col-md-10">
              <form action="search">
							<div>
  							<strong>지역 선택</strong>
                            <div class="birth">
                            
                                <div class="aaaaa">
                                    <span>
                                        <select onchange="sido()" id="city" name="city">
                                        <option value=" ">시/도 선택</option>
										<option value="서울">서울특별시</option>
										<option value="부산">부산광역시</option>
										<option value="대구">대구광역시</option>
										<option value="인천">인천광역시</option>
										<option value="광주">광주광역시</option>
										<option value="대전">대전광역시</option>
										<option value="울산">울산광역시</option>
										<option value="경기">경기도</option>
										<option value="강원">강원도</option>
										<option value="충북">충청북도</option>
										<option value="충남">충청남도</option>
										<option value="전북">전라북도</option>
										<option value="전남">전라남도</option>
										<option value="경북">경상북도</option>
										<option value="경남">경상남도</option>
										<option value="세종특별자치시">세종특별자치시</option>
										<option value="제주특별자치도">제주특별자치도</option>
                                        </select>
                                    </span>
                                </div>
                                
                                <div class="aaaaa2">
                                    <span id="div1">
                                        <select id="local" name="local" class="aaaaa2">
                                            <option value=" " id="local">구/군 선택</option>
                                        </select>
                                    </span>
                                </div>
                                
                                <div class="aaaaa3">
                                    <span>
                                        <select name="food">
                                        <option value="">음식 분류</option>
										<option value="양식">양식</option>
										<option value="한식">한식</option>
										<option value="일식">일식</option>
										<option value="중식">중식</option>
										<option value="분식">분식</option>
										<option value="카페">카페</option>
										<option value="패스트푸드">패스트푸드</option>
										<option value="기타">기타</option>

                                        </select>
                                    </span>
                                </div>
							<input type="text" name="keyword" placeholder="키워드로 검색하기" class="selectButton">
					<input type="submit" value="검색" class="selectButton2">
                            </div>
                            <span class="error_box"></span>
                        </div>
									
						</form>

            </div>
            <div class="col-md-1"></div>
        </div>
        </div>
    </section>
    <br><br><br><br><br><br>


   <section class="blog spad">
        <div class="container">
            <div class="row">
            
                <c:forEach var="slist" items="${slist}" varStatus="status">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="resources/fileUpload/${slist.sFileName1}" ></div>
                        <div class="blog__item__text">
                            <h5>${slist.sName}</h5>
                            
                            <c:if test="${not empty sessionScope.mloginCode}">
                            <a href="storeView?storeCode=${slist.storeCode}&mCode=${sessionScope.mloginCode}">상세보기</a>
                            </c:if>
                            <c:if test="${not empty sessionScope.cloginCode}">
                            <a href="storeView?storeCode=${slist.storeCode}&mCode=${sessionScope.cloginCode}">상세보기</a>
                            </c:if>
                            <c:if test="${empty sessionScope}">
                            <a href="storeView?storeCode=${slist.storeCode}&mCode=${sessionScope.cloginCode}">상세보기</a>
                            </c:if>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
                
                
            </div>
        </div>
    </section>
    <br><br><br><br><br><br>
<div class="fixed">
		<a href="#top"><img src="resources/img/fixed.png"></a>
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
                       <h6><a href="cs_Index">고객센터</a></h6>
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
    </c:if>
    
    
    
    <!-- 관리자 모드 -->
<c:if test="${sessionScope.cloginId eq 'admin'}">
	
	<div class="SA_leftHome">
		<button class="SA_homeButton" onclick="location.href='sa_index'"
			style='cursor: pointer'>홈 로고(관리자 인덱스로)</button>	
	</div>
	
	<div class="SA_loginStatus">
			관리자 모드 접속 중 <button onclick="location.href='logout'">로그아웃</button>
	</div>
	
	<div class="SA_leftMenu">
		<button class="SA_leftMenuButton" onclick="location.href='sa_mMgt'" style='cursor: pointer'>회원 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_sMgt'" style='cursor: pointer'>업체 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_sCfmList'" style='cursor: pointer'>업체 가입승인</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_reviewMgt'" style='cursor: pointer'>리뷰 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_inquiryList'" style='cursor: pointer'>1:1문의 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_writeFAQForm'" style='cursor: pointer'>자주 묻는 질문 작성</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_FAQList'" style='cursor: pointer'>자주 묻는 질문 관리</button>
	</div>
	
	<div class="SA_MainBody">
		<h2><%=sf.format(nowTime)%>&nbsp;<span id="dpTime"></span></h2>
		
		<table width="100%" >
			<tr>
				<th class="SA_FAQViewTh" colspan="2" style="width:33%;">금일 가입 수</th>
				<th class="SA_FAQViewTh">승인 대기중 업체 수</th>
				<th class="SA_FAQViewTh">답변 대기 문의</th>
			</tr>
			<tr>
				<td class="SA_FAQViewTdLong">회원 : ${todayJoinMember}</td>
				<td class="SA_FAQViewTdLong">점주 : ${todayJoinCMember}</td>
				<td class="SA_FAQViewTdLong">${watingStoreNum}</td>
				<td class="SA_FAQViewTdLong">${inquiryWatingNum}</td>
			</tr>
		</table>
		
		<div>
			<div id="column_chart_div1" style="width: 50%; height: 400px; float:left;"></div>
			<div id="column_chart_div2" style="width: 50%; height: 400px; float:right;"></div>
		</div>
	</div>
	
	
	
</c:if>
    
    

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
	// 지역 선택
	function sido() {
		
		 
		
		
		var city = document.getElementById("city").value;
		console.log(city);
		
		var local_seoul = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
		var local_busan = ["강서구","금정구","기장군","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구"];
		var local_daegu = ["남구","달서구","달성군","동구","북구","서구","수성구","중구"];
		var local_incheon = ["강화군","계양구","남동구","동구","미추홀구","부평구","서구","연수구","옹진군","중구"];
		var local_gwangju = ["광산구","남구","동구","북구","서구"];
		var local_daejeon = ["대덕구","동구","서구","유성구","중구"];
		var local_ulsan = ["남구","동구","북구","울주군","중구"];
		var local_gyeonggi = ["가평군","고양시 덕양구","고양시 일산동구","고양시 일산서구","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시 분당구","성남시 수정구","성남시 중원구","수원시 권선구","수원시 영통구","수원시 장안구","수원시 팔달구","시흥시","안산시 단원구","안산시 상록구","안성시","안양시 동안구","안양시 만안구","양주시","양평군","여주시","연천군","오산시","용인시 기흥구","용인시 수지구","용인시 처인구","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시"];
		var local_gangwon = ["강릉시","고성군","동해시","삼척시","속초시","양구군","양양군","영월군","원주시","인제군","정선군","철원군","춘천시","태백시","평창군","홍천군","화천군","횡성군"];
		var local_chungbuk = ["괴산군","단양군","보은군","영동군","옥천군","음성군","제천시","증평군","진천군","청주시 상당구","청주시 서원구","청주시 청원구","청주시 흥덕구","충주시"];
		var local_chungnam = ["계룡시","공주시","금산군","논산시","당진시","보령시","부여군","서산시","서천군","아산시","예산군","천안시 동남구","천안시 서북구","청양군","태안군","홍성군"];
		var local_jeonbuk = ["고창군","군산시","김제시","남원시","무주군","부안군","순창군","완주군","익산시","임실군","장수군","전주시 덕진구","전주시 완산구","정읍시","진안군"];
		var local_jeonnam = ["강진군","고흥군","곡성군","광양시","구례군","나주시","담양군","목포시","무안군","보성군","순천시","신안군","여주시","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
		var local_gyeongbuk = ["경상시","경주시","고령군","구미시","군위군","김천시","문경시","봉화군","상주시","성주군","안동시","영덕군","영양군","영주시","영천시","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군","포항시 남구","포항시 북구"];
		var local_gyeongnam = ["거제시","거창군","고성군","김해시","남해군","밀양시","사천시","산청군","양산시","의령군","진주시","창녕군","창원시 마산합포구","창원시 마산회원구","창원시 성산구","창원시 의창구","창원시 진해구","통영시","하동군","함안군","함양군","합천군"];
		var local_sejong = ["세종특별자치시"];
		var local_jeju = ["서귀포시","제주시"];
		
		var localSel = document.getElementById("local");
		
		var div1 = document.getElementById("div1");
		
		// 서울
		if(city == "서울"){
			localSel = local_seoul;
			console.log("local_seoul :" + local_seoul);
			var output1 = "";
			output1 += "<select id='local' name='local'>";
			output1 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					console.log(i + " : " + localSel[i]);
				
					output1 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
					
				}
			output1 += "</select>";
			
			div1.innerHTML = output1;
		// 부산
		} else if(city == "부산"){
			localSel = local_busan;
			
			var output2 = "";
			output2 += "<select id='local' name='local' class='aaaaa2'>";
			output2 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output2 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output2 += "</select>";
			
			div1.innerHTML = output2;
		// 대구	
		} else if(city == "대구"){
			localSel = local_daegu;
			
			var output3 = "";
			output3 += "<select id='local' name='local'>";
			output3 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output3 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output3 += "</select>";
			
			div1.innerHTML = output3;
		// 인천	
		} else if(city == "인천"){
			localSel = local_incheon;
			
			var output4 = "";
			output4 += "<select id='local' name='local'>";
			output4 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output4 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output4 += "</select>";
			
			div1.innerHTML = output4;
		// 광주	
		} else if(city == "광주"){
			localSel = local_gwangju;
			
			var output5 = "";
			output5 += "<select id='local' name='local'>";
			output5 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output5 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output5 += "</select>";
			
			div1.innerHTML = output5;
		// 대전	
		} else if(city == "대전"){
			localSel = local_daejeon;
			
			var output6 = "";
			output6 += "<select id='local' name='local'>";
			output6 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output6 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output6 += "</select>";
			
			div1.innerHTML = output6;
		// 울산	
		} else if(city == "울산"){
			localSel = local_ulsan;
			
			var output7 = "";
			output7 += "<select id='local' name='local'>";
			output7 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output7 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output7 += "</select>";
			
			div1.innerHTML = output7;
		// 경기
		} else if(city == "경기"){
			localSel = local_gyeonggi;
			
			var output8 = "";
			output8 += "<select id='local' name='local'>";
			output8 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output8 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output8 += "</select>";
			
			div1.innerHTML = output8;
		// 강원
		} else if(city == "강원"){
			localSel = local_gangwon;
			
			var output9 = "";
			output9 += "<select id='local' name='local'>";
			output9 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output9 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output9 += "</select>";
			
			div1.innerHTML = output9;
		// 충북	
		} else if(city == "충북"){
			localSel = local_chungbuk;
			
			var output10 = "";
			output10 += "<select id='local' name='local'>";
			output10 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output10 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output10 += "</select>";
			
			div1.innerHTML = output10;
		// 충남	
		} else if(city == "충남"){
			localSel = local_chungnam;
			
			var output11 = "";
			output11 += "<select id='local' name='local'>";
			output11 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output11 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output11 += "</select>";
			
			div1.innerHTML = output11;
		// 전북	
		} else if(city == "전북"){
			localSel = local_jeonbuk;
			
			var output12 = "";
			output12 += "<select id='local' name='local'>";
			output12 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output12 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output12 += "</select>";
			
			div1.innerHTML = output12;
		// 전남	
		} else if(city =="전남"){
			localSel = local_jeonnam;
			
			var output13 = "";
			output13 += "<select id='local' name='local'>";
			output13 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output13 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output13 += "</select>";
			
			div1.innerHTML = output13;
		// 경북	
		} else if(city == "경북"){
			localSel = local_gyeongbuk;
			
			var output14 = "";
			output14 += "<select id='local' name='local'>";
			output14 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output14 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output14 += "</select>";
			
			div1.innerHTML = output14;
		// 경남	
		} else if(city == "경남"){
			localSel = local_gyeongnam;
			
			var output15 = "";
			output15 += "<select id='local' name='local'>";
			output15 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output15 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output15 += "</select>";
			
			div1.innerHTML = output15;
		// 세종	
		} else if(city =="세종특별자치시"){
			localSel = local_sejong;
			
			var output16 = "";
			output16 += "<select id='local' name='local'>";
			output16 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output16 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output16 += "</select>";
			
			div1.innerHTML = output16;
		// 제주	
		} else if(city =="제주특별자치도"){
			localSel = local_jeju;
			
			var output17 = "";
			output17 += "<select id='local' name='local'>";
			output17 += "<option value=' '>구/군 선택</option>";
				for(i=0; i < localSel.length; i++){
				
					output17 += "<option value='" + localSel[i] + "'>" + localSel[i] + "</option>";
				
				}
			output17 += "</select>";
			
			div1.innerHTML = output17;
		// 그 외는 빈칸
		} else {
			var output18 = "";
			output18 += "<select id='local' name='local'>";
			output18 += "<option value=' '>구/군 선택</option>";
			output18 += "</select>";
			
			div1.innerHTML = output18;
		}
		
		
	} // end sido() 지역 선택
	
	
	
	
</script>

	<script>
//구글 시각화 API를 로딩하는 메소드
google.charts.load('current', {packages: ['corechart']});
google.charts.setOnLoadCallback(columnChart1);
google.charts.setOnLoadCallback(columnChart2);
//구글 시각화 API가 로딩이 완료되면,
//인자로 전달된 콜백함수를 내부적으로 호출하여 차트를 그리는 메소드
//화면이 실행될때 함께 실행된다.
//google.charts.setOnLoadCallback(columnChart1);

	// 묶은 세로 막대형 차트 1
	function columnChart1() {
		// 버튼 클릭 시 ajax를 사용하여 서버로부터 json 배열 객체를 가져왔다고 가정함
		var arr = [
		['날짜', '회원', '점주'],
		['${dateResult[9]}', ${memberSumDateNum.day10MNumSum}, ${cmemberSumDateNum.day10CNumSum}],
		['${dateResult[8]}', ${memberSumDateNum.day9MNumSum}, ${cmemberSumDateNum.day9CNumSum}],
		['${dateResult[7]}', ${memberSumDateNum.day8MNumSum}, ${cmemberSumDateNum.day8CNumSum}],
		['${dateResult[6]}', ${memberSumDateNum.day7MNumSum}, ${cmemberSumDateNum.day7CNumSum}],
		['${dateResult[5]}', ${memberSumDateNum.day6MNumSum}, ${cmemberSumDateNum.day6CNumSum}],
		['${dateResult[4]}', ${memberSumDateNum.day5MNumSum}, ${cmemberSumDateNum.day5CNumSum}],
		['${dateResult[3]}', ${memberSumDateNum.day4MNumSum}, ${cmemberSumDateNum.day4CNumSum}],
		['${dateResult[2]}', ${memberSumDateNum.day3MNumSum}, ${cmemberSumDateNum.day3CNumSum}],
		['${dateResult[1]}', ${memberSumDateNum.day2MNumSum}, ${cmemberSumDateNum.day2CNumSum}],
		['${dateResult[0]}', ${memberSumDateNum.day1MNumSum}, ${cmemberSumDateNum.day1CNumSum}]
		];
		// 실 데이터를 가진 데이터테이블 객체를 반환하는 메소드
		var dataTable = google.visualization.arrayToDataTable(arr);
		// 옵션객체 준비
		var options = {
			title: '회원/점주 회원 수 추이',
			hAxis: {
				title: '일자별 회원 수 추이',
				titleTextStyle: {color: 'blue'}
			}
		};

		// 차트를 그릴 영역인 div 객체를 가져옴

		var objDiv = document.getElementById('column_chart_div1');

		// 인자로 전달한 div 객체의 영역에 컬럼차트를 그릴수 있는 차트객체를 반환

		var chart = new google.visualization.ColumnChart(objDiv);

		// 차트객체에 데이터테이블과 옵션 객체를 인자로 전달하여 차트 그리는 메소드

		chart.draw(dataTable, options);

	} // drawColumnChart1()의 끝
	
	// 묶은 세로 막대형 차트 1
	function columnChart2() {
		// 버튼 클릭 시 ajax를 사용하여 서버로부터 json 배열 객체를 가져왔다고 가정함
		var arr = [
		['날짜', '승인 업체 수'],
		['${dateResult[9]}', ${storeConfirmDateNum.day10SNum}],
		['${dateResult[8]}', ${storeConfirmDateNum.day9SNum}],
		['${dateResult[7]}', ${storeConfirmDateNum.day8SNum}],
		['${dateResult[6]}', ${storeConfirmDateNum.day7SNum}],
		['${dateResult[5]}', ${storeConfirmDateNum.day6SNum}],
		['${dateResult[4]}', ${storeConfirmDateNum.day5SNum}],
		['${dateResult[3]}', ${storeConfirmDateNum.day4SNum}],
		['${dateResult[2]}', ${storeConfirmDateNum.day3SNum}],
		['${dateResult[1]}', ${storeConfirmDateNum.day2SNum}],
		['${dateResult[0]}', ${storeConfirmDateNum.day1SNum}]
		];
		// 실 데이터를 가진 데이터테이블 객체를 반환하는 메소드
		var dataTable = google.visualization.arrayToDataTable(arr);
		// 옵션객체 준비
		var options = {
			title: '업체 수 추이',
			hAxis: {
				title: '업체 승인 수 추이',
				titleTextStyle: {color: 'blue'}
			}
		};

		// 차트를 그릴 영역인 div 객체를 가져옴
		var objDiv = document.getElementById('column_chart_div2');

		// 인자로 전달한 div 객체의 영역에 컬럼차트를 그릴수 있는 차트객체를 반환
		var chart = new google.visualization.ColumnChart(objDiv);

		// 차트객체에 데이터테이블과 옵션 객체를 인자로 전달하여 차트 그리는 메소드
		chart.draw(dataTable, options);

	} // drawColumnChart2()의 끝
		
		 
		// 버튼 동작
		/* 
		$(document).ready(function(){
		$('button').on('click', function(){
		columnChart1();
		});
		}); */

</script>

<script type="text/javascript">
	setInterval("dpTime()", 1000);
	function dpTime() {
		var now = new Date();
		hours = now.getHours();
		minutes = now.getMinutes();
		seconds = now.getSeconds();

		if (hours > 12) {
			hours -= 12;
			ampm = "오후 ";
		} else {
			ampm = "오전 ";
		}
		if (hours < 10) {
			hours = "0" + hours;
		}
		if (minutes < 10) {
			minutes = "0" + minutes;
		}
		if (seconds < 10) {
			seconds = "0" + seconds;
		}
		document.getElementById("dpTime").innerHTML = ampm + hours + ":"
				+ minutes + ":" + seconds;
	}
</script>


</html>