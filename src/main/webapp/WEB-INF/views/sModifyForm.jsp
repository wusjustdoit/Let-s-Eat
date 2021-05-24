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
    <title>업체정보 수정페이지</title>
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
								href="cview?cId=${sessionScope.cloginId}&scCode=${sessionScope.cloginCode}">업체
									관리</a></li>
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

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>가게등록</h4>
                        <div class="breadcrumb__links">
                            <a href="index">메인페이지</a>
                            <a href="cview?cId=${sessionScope.cloginId}&scCode=${sessionScope.cloginCode}">업체 관리</a>
                            <span>수정</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form action="sModify" method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <h4 class="checkout__title">업체 정보 변경</h4>
							
                            <div class="checkout__input">
                                <p>업체명<span>*</span></p>
                                <h1>${sName}</h1>
                            </div>
                            <div class="checkout__input">
                                <p>홈페이지</p>
                                <input type="text" placeholder="홈페이지를 입력해주세요(선택사항)." name="sUrl">
                                <input type="hidden" value="${storeCode}" name="storeCode">
                                <input type="hidden" value="${sessionScope.cloginCode}" name="scCode">
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>우편번호<span>*</span></p>
                                        <input type="text" id="sample6_postcode" placeholder="우편번호" name="postcode" class="form-control form-control-user">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>우편번호 검색</p>
                                        <input type="button" onclick="sample6_execDaumPostcode()"  value="우편번호 찾기" class="form-control form-control-user">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>주소<span>*</span></p>
                                        <input type="text" id="sample6_address" placeholder="주소" name="addr1" class="form-control form-control-user">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>참고사항<span>*</span></p>
                                        <input type="text" id="sample6_extraAddress" placeholder="참고항목" name="addr3" class="form-control form-control-user">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>상세주소<span>*</span></p>
                                <input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addr2" class="form-control form-control-user"> 
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>업체 전화번호<span>*</span></p>
                                        <input type="text" placeholder="업체 전화번호를 입력해주세요(필수사항)." name="sPhone">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>사업자 번호<span>*</span></p>
                                        <input type="text" placeholder="사업자번호 10자리를 입력해 주세요(필수사항)." name="sbNum">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>업체 소개<span>*</span></p>
                                <textarea cols="1000" class="c_content"  name="sContents" placeholder="※불이익이 가지않게 정확한 정보를 입력해주세요.
잘못된 정보로인한 피해는 책임지지 않습니다.(1000자)"></textarea>
                            </div>

                        </div>
                        <!-- 우측박스 -->
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4 class="order__title">세부 추가사항</h4>
                                <div class="checkout__order__products"><strong>키워드</strong></div>
                                <ul class="checkout__total__products">
                                    <li>
                                        <div><input type="text" class="checkout_kw" name="keyword1" placeholder="#키워드를 입력해주세요."></div>
                                    </li>
                                    <li>
                                        <div><input type="text" class="checkout_kw" name="keyword2" placeholder="#키워드를 입력해주세요."></div>
                                    </li>
                                    <li>
                                        <div><input type="text" class="checkout_kw" name="keyword3" placeholder="#키워드를 입력해주세요."></div>
                                    </li>
                                    <li>
                                        <div><input type="text" class="checkout_kw" name="keyword4" placeholder="#키워드를 입력해주세요."></div>
                                    </li>
                                    <li>
                                        <div><input type="text" class="checkout_kw" name="keyword5" placeholder="#키워드를 입력해주세요."></div>
                                    </li>
                                </ul>

                                
                                   
                                <div class="checkout__cat">
                                    <p><strong>카테고리</strong></p>
                                    <div class="c_cat">
                                        <span class="cat_box">
                                            <select class="cc" name="sFood">
                                                <option value="">음식분류</option>
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
                                    <br>
                                </div>
                                
                                
                                
                                <div class="checkout__cat">
                                    <p><strong>영업시간</strong></p>
                                    <div class="c_cat">
                                  		
                                        <div><input type="text" class="checkout_kw" placeholder="ex) 12:00~20:00" name="sTime"></div>
                                    	
                                   
                                    </div>
                                    <br>
                                </div>


                                 <p><strong>단체석 여부(선택사항)</strong></p>
                                <div class="checkout__input__checkbox">
                                    <label for="acc-or">
                                        단체석 있음
                                        <input type="checkbox" id="acc-or" name="sSeat" value="o">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <p><strong>주차여부(선택사항)</strong></p>
                                <div class="checkout__input__checkbox">
                                    <label for="payment">
                                        주차가능
                                        <input type="checkbox" id="payment" name="sPark" value="o">
                                        <span class="checkmark"></span>

                                    </label>
                                </div>
                                <ul class="checkout__total__fileupload">
                                    <p><strong>사진을 등록해주세요.</strong></p>
                                    <li>외부 <input type="file" name="sFile1"></li>
                                    <li>내부 <input type="file" name="sFile2"></li>
                                    <li>메뉴 <input type="file" name="sFile3"></li>
                                </ul>

                                <button type="submit" class="site-btn" >업체 등록하기</button>

                            </div>
                            
                        </div>
                        
                    </div>
                   
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->

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
                                <br><br>tel)02-0000-0000
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