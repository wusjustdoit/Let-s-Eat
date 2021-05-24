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
            <h2>자주 묻는 질문</h2>
			<form action="cs_selCat">
			<select name="FAQCat">
					<optgroup label="카테고리">
						<option value="예약" ${FAQCat == '예약' ? 'selected="selected"' : '' }>예약</option>
						<option value="사이트 이용" ${FAQCat == '사이트 이용' ? 'selected="selected"' : '' }>사이트 이용</option>
						<option value="결제" ${FAQCat == '결제' ? 'selected="selected"' : '' }>결제</option>
						<option value="기타" ${FAQCat == '기타' ? 'selected="selected"' : '' }>기타</option>
					</optgroup>
				</select>
				
				<input type="submit" value="검색" style="height: 42px;">
			
			</form>
			</div>
			<br><br>
			<table style="width:900px; font-size:15px;">
			<c:forEach var="cl" items="${CSList}">
				
						<tr>
							<th style="text-align:center;">${cl.FAQCat}</th>
							<td class="FAQtd"><a href="javascript:viewContents('${cl.FAQCode}');" class="FAQtd">
									${cl.FAQTitle}</a></td>
						</tr>
						
						<tr>
							<td colspan="2" id="contents${cl.FAQCode}" style="display: none; text-align: left;">
								${fn:replace(cl.FAQContents, cn, br)}</td>
						</tr>
					</c:forEach>
			</table>
                        </div>
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

<script>
	// 자주묻는 질문 내용 보이거나 안보이게 하는 함수
	function viewContents(val) {
		if (document.all("contents" + val).style.display == "none") {
			$('#contents' + val).fadeIn('fast');
			//document.all("list"+val).style.display='';
			//document.all("listBtn"+val).src='/images/sub/btn_fold_on.gif';
		} else {
			$('#contents' + val).fadeOut('fast');
			//document.all("list"+val).style.display='none';
			//document.all("listBtn"+val).src='/images/sub/btn_fold_off.gif';
		}
	}
</script>
</html>

