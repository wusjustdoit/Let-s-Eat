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
    <title>렛츠잇 | 로그인</title>

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
                                <a href="joinform">회원가입</a>
                                <a href="#">사이트맵</a>
                            </div>
                            <div class="header__top__hover">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</header>
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="header__logo">
                            <a href="./index.jsp"><img src="" alt=""></a>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4">
                        <div class="header__logo_join">
                            <a href="index"><img src="resources/img/logo_1.png" alt=""></a>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4">
                        <div class="header__logo">
                            <a href="./index.jsp"><img src="" alt=""></a>
                        </div>
                    </div>
                 </div>
              </div>
        </header>

        <div class="canvas__open"><i class="fa fa-bars"></i></div>
        <div class="main-container">
            <div class="main-wrap">
            
				<form action="mlogin" method="POST">
                <section class="login-input-section-wrap">
                    <div class="login-input-wrap">
                        <input placeholder="아이디를 입력해주세요." type="text" name="mId" id="mId"></input>
                    </div>
                    <div class="login-input-wrap password-wrap">
                        <input placeholder="비밀번호를 입력해주세요." type="password" name="mPw" id="mPw"></input>
                    </div>
                    
                    
                 <c:choose>
                 	<c:when test="${mChkey == 'NG'}">
                 		<div>아이디와 비밀번호가 일치하지 않습니다.</div>
                 	</c:when>
                 	<c:when test="${mChkey == 'NO'}">
                 		<div>탈퇴한 아이디 입니다</div>
                 	</c:when>
                 	<c:when test="${mChkey == 'none'}">
                 		<div>아이디가 없습니다 회원가입 후 이용해 주세요</div>
                 	</c:when>
                 </c:choose>
                 
                 
                    <div class="login-button-wrap">
                    	
                        <button type="submit">로그인</button>
                    </div>
					
                   <!--  <div class="login-button-wrap" >
                        <button >네이버 아이디로 로그인</button>
                    </div> -->

                </section>
                </form>
                </div></div>
                
                <section class="Easy-sgin-in-wrap">


                    <div class="forget-msg">
                        <a target="_blank" href="joinform">회원가입</a>
                        <span class="bar" aria-hidden="true">|</span>
                        <a target="_blank" href="findmId">아이디</a>/<a target="_blank" href="findmPw">비밀번호 찾기</a>
                    </div>
                </section>
                <br><br><br><br>



                <!-- Footer Section Begin -->
                <footer>
                
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
                   
                </footer>
                <!-- Footer Section End -->
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