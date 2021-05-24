<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
pageContext.setAttribute("br", "<br/>");
pageContext.setAttribute("cn", "\n");
%>
<!DOCTYPE html>
<html lang="ko">
<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">

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
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
<script src="resources/js/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/CS_css2.css">
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
                            <li><a href="#">업체 관리</a>
                                <ul class="dropdown">
                                    <li><a href="./search.jsp">회원정보</a></li>
                                    <li><a href="./search.jsp">업체 관리</a></li>
                                    <li><a href="upform">업체 등록</a></li>
                                    <li><a href="./checkout.jsp">나의 문의</a></li>
                                </ul>
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

    <section class="mid_menu_bar">
        <div class="container">
            <div class="row">
                <div class="col-sm-offset-3 col-sm-7 col-md-offset-0 col-md-1"></div>
                <div class="col-md-10">            <div class="FAQleft">
            <button onclick="location.href='cs_Index'" class="faqbtn">자주 묻는 질문</button>
            </div>
            <div class="FAQright">
            <button onclick="location.href='cs_inquiry'" class="faqbtn">1:1문의</button>
            </div>

                </div>

            </div>
        </div>
    </section>
    
       <section class="blog spad">
        <div class="container">
            <div class="row">
     		<div>
                    <div class="blog__item">
                        <div class="blog__item__text">
            <div class="FAQselCat">
            <h2>1:1 문의</h2>
            </div>
		<c:if test="${sessionScope.mloginId != null || sessionScope.cloginId != null}">
			<div style="width:900px;">
			<form action="cs_inquiryReg" method="POST">
			<table style="width:900px;">
				<tr>
					<th style="text-align:center;">회원구분</th>
					<td>
					<select name="mc">
							<optgroup label="회원구분" >
								<option value="1" ${not empty sessionScope.mloginId ? 'selected="selected"' : '' }>회원</option>
								<option value="0" ${not empty sessionScope.cloginId ? 'selected="selected"' : '' }>점주</option>
							</optgroup>
						</select>
					</td>
					
					<th style="text-align:center;">카테고리</th>
					<td><select name="mQnACat">
							<optgroup label="카테고리">
								<option value="예약관련">예약관련</option>
								<option value="사이트 이용">사이트 이용</option>
								<option value="결제">결제</option>
								<option value="기타">기타</option>
							</optgroup>
						</select>
					</td>
				</tr>
					
				<tr>
					<input type="hidden" name="mQnAmId" value="${sessionScope.mloginId}">
					<input type="hidden" name="mQnAcId" value="${sessionScope.cloginId}">
					<th style="text-align:center;">아이디</th>
					<td>${sessionScope.mloginId}${sessionScope.cloginId}</td>
				</tr>
				
				<br>
				
				<tr>
					<th style="width: 10%; text-align:center;">제목</th>
					<td colspan="3"><input type="text" name="mQnATitle"
						style="width: 100%;"></td>
				</tr>
				
				

				<tr>
					<th style="text-align:center; width: 10%;">내용</th>
					<td colspan="3"><textarea style="width: 100%; height: 300px;"
							name="mQnAContents"></textarea></td>
				</tr>
				
				<br>
				
				<tr>
					<td colspan="4"><input type="submit" value="등록" style="width:900px;" class="primary-btn"></td>
				</tr>
			</table>	
			</form>
</div>
	</div>
	</c:if>
	
	<c:if test="${sessionScope.mloginId == null && sessionScope.cloginId == null}">
		<h2 style="text-align : center; width:900px;"><br><br>1:1문의 작성은 먼저 로그인을 하시고 이용해 주세요! </h2>
	</c:if>
                        </div>
                    </div>
                </div>
             </div>
      </section>
    <!-- Header Section End -->

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
</html>
