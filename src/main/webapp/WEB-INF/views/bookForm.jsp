<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

 <!--datepicker  -->
     	 
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
 	 <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
 	 
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
    
     

<style>
	.div1 {
		margin: 0px auto;
	}

	.d1 {
		width : 200px;
		margin:0 auto;
	}

	.reviewdiv {
		border : 2px solid black;
		border-radius : 10px;
		width : 40%;
		padding : 10px;
		padding-left : 20px;
		margin : auto;
	}
	.star {
		width : 90px;
	}




	
	.reserbody {
  		width: 960px;
  		margin: 20px auto;
 		float: right;
	}
	.calandiv {
		float: left;
		margin-left: 150px;
	}
	.slot {
	
		  width: 200px;
		  height: 120px;
		  float: left;
		  margin-right: 2px;
		  display: table;
 		 position: relative;
 		 box-shadow: inset 0 0px 1px #222;
	}
	.slot:before {
 		 content: "";
 		 position: absolute;
		  top: 0;
 		 right: 0;
 		 bottom: 0;
 		 left: 0;
 		 box-shadow: inset 0 0px 1px #222;
	}
	.slot:hover {
 		 color: #fff;
	}
	.slot:hover:before {
		  background-color: #333;
		  box-shadow: inset 0 0px 1px #222;
	}
	.slot.disabled, .slot.disabled:hover {
		  color: #ccc;
		  cursor: not-allowed;
	}
	.slot.disabled:before, .slot.disabled:hover:before {
  		background-color: #eee;
  		box-shadow: none;
	}
	.slot span {
 		 position: relative;
 		 display: table-cell;
 		 vertical-align: middle;
 		 text-align: center;
 		 z-index: 1;
	}
	.slot span b {
		  display: block;
		}

	.slot input[type=radio]:after {
 		 content: "";
 		 width: 100%;
 		 height: 100%;
 		 position: absolute;
 		 left: 0;
 		 top: 0;
 		 box-shadow: none;
	}
	.slot input[type=radio]:checked:after {
		  color: #fff;
 		 background-color: #81F79F;
 		 box-shadow: none;
	}
	.slot input[type=radio]:disabled:after {
		  background-color: #eee;
 		 box-shadow: none;
	}
	.slot:hover input[type=radio] {
 		 display: none;
	}	
</style>


 <style>
    * {
      box-sizing: border-box;
      font-family: 'NanumGothic, sans-serif';
    }

    /* placeholder color */
    input:-ms-input-placeholder {
      color: #000;
    }
    input::-webkit-input-placeholder {
      color: #000;
    }
    input::-moz-placeholder {
      color: #000;
    }
    input::-moz-placeholder {
      color: #000;
    }
    .wrapper {
      position: relative;
      width: 445px;
      height: 45px;
      margin: 10px;
    }
    .ion-calendar {
      position: absolute;
      right: 20px;
      top: 14px;
    }
    /* input */
    #datepicker {
      border: 1px solid #c6e2f7;
      border-radius: 5px;
      width: 100%;
      height: 100%;
      font-size: 16px;
      text-align: center;
      cursor: pointer;
    }
    #datepicker:hover {
      background-color: #eaf7ff;
    }
    #datepicker:focus {
      outline: none;
    }
    /* calendar table */
    .ui-datepicker {
      display: none;
      background-color: #fff;
      border-radius: 5px;
      border: 3px solid #c6e2f7;
      margin-top: 10px;
      margin-left: 42.5px;
      margin-right: 42.5px;
      padding: 20px;
      width: 360px;
    }
    #datepicker:focus>.ui-datepicker {
      display: block;
    }
    .ui-datepicker-prev,
    .ui-datepicker-next {
      cursor: pointer;
    }
    .ui-datepicker-next {
      float: right;
    }
    .ui-state-disabled {
      cursor: auto;
      color: hsla(0, 0%, 80%, 1);
    }
    .ui-datepicker-title {
      text-align: center;
      padding: 10px;
      font-weight: 100;
      font-size: 20px;
    }
    .ui-datepicker-calendar {
      width: 100%;
    }
    /* day of week cell */
    .ui-datepicker-calendar>thead>tr>th {
      padding: 5px;
      font-size: 20px;
      font-weight: 400;
    }
    /* day cell */
    .ui-datepicker-calendar>tbody>tr>td {
      border-radius: 100%;
      width: 44px;
      height: 44px;
      cursor: pointer;
      padding: 5px;
      font-weight: 100;
      text-align: center;
    }
    .ui-datepicker-calendar>tbody>tr>td:hover {
      background-color: #c6e2f7;
    }
    .ui-datepicker-calendar>tbody>tr>td>a {
      color: #000;
      font-size: 18px;
      font-weight: 400;
      text-decoration: none;
    }
    /* past days */
    .ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
      cursor: auto;
      background-color: #fff;
    }
    
    /*  주말 색깔 바꾸기 */
    .ui-datepicker-calendar > tbody td.ui-datepicker-week-end:first-child a { color: #F5A9BC; }
	.ui-datepicker-calendar > tbody td.ui-datepicker-week-end:last-child a { color: #8181F7; }



    
    /* media */
    @media(max-width: 445px) {
      .wrapper {
        width: calc(100vw - 20px);
      }
      .ui-datepicker {
        margin-right: 0;
        margin-left: 0;
        padding: 10px;
        width: calc(100vw - 20px);
        margin: 10px auto;
      }
      .ui-datepicker-calendar>tbody>tr>td {
        width: 38px;
        height: 38px;
      }
    }


</style>
 	 
</head>
<body>

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
					
					
					
					
					
					<div id="table">
		
	<div class="calandiv">
	<!--  캘랜더  시작-->
		<form action="storeViewD"  name="dateForm" method="GET">
	 		${storeView.storeCode} ${sessionScope.mCode}
	 		<input type="hidden" value="${storeView.storeCode}" name="storeCode">
	 		<input type="hidden" name="mCode" value="${sessionScope.mCode}">
	 								
	 								
			<%-- 예약날짜<input type="date" name="bookDate" id="date1">  --%>
	 		
			<div class="wrapper">
   				<input type="text" id="datepicker" placeholder="예약하실 날짜를 선택해주세요." name="bookDate" readonly="true" />
    			<i class="ion-calendar"></i>
  			</div>

	 	</form>
	 	
	 		<br><br><br><br><br><br><br>
	 		
	 		
	 	
	 		
	 </div>
	 	
	 	
	 <div class="reserbody">
	 <!-- 예약 폼 시작  -->
	 <div style="text-align:center;">
	 <c:if test="${reservation.book9 != null}">
	 	
	 		<div style="text-align:center; "><h1>${reservation.bookDate}</h1> 날짜에 예약합니다!</div>
	 		
	 		<c:if test="${sessionScope.mloginPoint != 0 && not empty sessionScope.mloginId}">
	 			<h3 style="text-align:center;">현재 잔여 포인트는 ${sessionScope.mloginPoint} 원 입니다!</h3>
	 		</c:if>
	 		
	 		<c:if test="${sessionScope.mloginPoint == 0 && not empty sessionScope.mloginId}">
	 			<h3 style="text-align:center;">현재 잔여 포인트는 0원 입니다!</h3>
	 		</c:if>
	 		
	 		<c:if test="${empty sessionScope.mloginId}">
      			 <h3 style="text-align:center; color:red;">로그인 후 이용해주세요</h3>
      		 </c:if>
      		 
      	</c:if>
      	</div>
	 <c:if test="${reservation.book9 == null}">
	 	<h1 style="color:red;">해당 날짜에 예약이 불가능 합니다.</h1> 
	 </c:if>
	 
	 	
	<c:if test="${reservation.book9 != null}">
		
		<form action="reser" method="GET" name="reser">
		
		<input type="hidden" value="${reservation.bookDate}" name="bDate">
		<br><br>
		
	 	
		<label class="slot">
  			<c:if test="${reservation.book9 !='0'}">
 				<span style="color:#5FB404;"><b style="color:black;">9:00</b><br> 예약가능 : ${reservation.book9} 개</span>
 				<input type="radio" value="9:00" name="bTime"/>
 			</c:if>
 		 
  			<c:if test="${reservation.book9=='0'}">
  				<span><b>9:00</b><br> <a style="color:red;">예약마감!</a></span>
 				<input type="radio" value="9:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
 			<c:if test="${reservation.book10 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">10:00</b><br> 예약가능 : ${reservation.book10} 개</span>
  				<input type="radio" value="10:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book10=='0'}">
  				<span><b>10:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="10:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
			 <c:if test="${reservation.book11 !='0'}">
 				<span style="color:#5FB404;"><b style="color:black;">11:00</b><br> 예약가능 : ${reservation.book11} 개</span>
  				<input type="radio" value="11:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book11=='0'}">
  				<span ><b>11:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="11:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
	 		<c:if test="${reservation.book12 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">12:00</b><br> 예약가능 : ${reservation.book12} 개</span>
  				<input type="radio" value="12:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book12=='0'}">
  				<span><b>12:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="12:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
			<c:if test="${reservation.book13 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">13:00</b><br> 예약가능 : ${reservation.book13} 개</span>
  				<input type="radio" value="13:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book13=='0'}">
  				<span><b>13:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="13:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
			<c:if test="${reservation.book14 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">14:00</b><br> 예약가능 : ${reservation.book14} 개</span>
  				<input type="radio" value="14:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book14=='0'}">
  				<span><b>14:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="14:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
  			<c:if test="${reservation.book15 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">15:00</b><br> 예약가능 : ${reservation.book15} 개</span>
  				<input type="radio" value="15:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book15=='0'}">
  				<span><b>15:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="15:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
  			<c:if test="${reservation.book16 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">16:00</b><br> 예약가능 : ${reservation.book16} 개</span>
  				<input type="radio" value="16:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book16=='0'}">
  				<span><b>16:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="16:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
  			<c:if test="${reservation.book17 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">17:00</b><br> 예약가능 : ${reservation.book17} 개</span>
  				<input type="radio" value="17:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book17=='0'}">
  				<span><b>17:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="17:00" name="bTime" disabled/>
 			</c:if>
		</label>

		<label class="slot">
  			<c:if test="${reservation.book18 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">18:00</b><br> 예약가능 : ${reservation.book18} 개</span>
  				<input type="radio" value="18:00" name="bTime"/>
 			</c:if>
  
  			<c:if test="${reservation.book18=='0'}">
  				<span><b>18:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="18:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
 			<c:if test="${reservation.book19 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">19:00</b><br> 예약가능 : ${reservation.book19} 개</span>
  				<input type="radio" value="19:00" name="bTime"/>
 			</c:if>
  
  			<c:if test="${reservation.book19=='0'}">
  				<span><b>19:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="19:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
 			<c:if test="${reservation.book20 !='0'}">
 				<span style="color:#5FB404;"><b style="color:black;">20:00</b><br> 예약가능 : ${reservation.book20} 개</span>
  				<input type="radio" value="20:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book20=='0'}">
  				<span><b>20:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="20:00" name="bTime" disabled/>
  			</c:if>
		</label>

		<label class="slot">
  			<c:if test="${reservation.book21 !='0'}">
  				<span style="color:#5FB404;"><b style="color:black;">21:00</b><br> 예약가능 : ${reservation.book21} 개</span>
  				<input type="radio" value="21:00" name="bTime"/>
  			</c:if>
  
  			<c:if test="${reservation.book21=='0'}">
  				<span><b>21:00</b><br> <a style="color:red;">예약마감!</a></span>
  				<input type="radio" value="21:00" name="bTime" disabled/>
  			</c:if>
		</label>
		

		<br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br>	
			
			<div style="width:100%;">
			<span style="width:100%;">
			<table>
			<tr>
			<td style="border:1px;">
			인원수 : </td><td style="width:50px;"><select name="bmCount" class="nice-select">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select><br>
				</td>
			</tr>
			</table>
			</span>
			</div>
		
		<input type="hidden" name="bmCode" id="bmCode" value="${sessionScope.mloginCode}">
		
		<input type="hidden" name="bsCode" value="${storeView.storeCode}">
	
		<input type="hidden" name="bmPhone" value="${sessionScope.mloginPhone}">
		
		<input type="hidden" id="point" value="${sessionScope.mloginPoint}">
		
		<input type="hidden" id="mngBook9" value="${reservation.book9}">
		
		<input type="hidden" id="mloginId" value="${sessionScope.mloginId}">
		
		<br>
		<div style="text-align:center;">
		<c:if test="${not empty sessionScope.mloginId}">
			<input type="button" class="site-btn" onclick="reser1()" value="예약하기">
		</c:if>
		
		<c:if test="${empty sessionScope.mloginId}">
			<input type="button" class="site-btn" onclick="reser2()" value="예약하기">
		</c:if>
		
		<input type="reset"  value="리셋" class="site-btn" >
		</div>
		</form>
	</c:if>
		
	</div>
	
</div>
		
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
					
					
					
</body>

<script>
 // 예약하기 함수
 function reser1(){
	 
	 var point = document.getElementById("point").value;
	 
	 var bTimeArray = document.getElementsByName("bTime");
	 
	 var bTime = "";

		for(var i=0; i<bTimeArray.length; i++){
			if(bTimeArray[i].checked==true){
				bTime = bTimeArray[i].value;
			}
		}
	 
	 console.log(bTime);
	
	 
	if(bTime != "" && point >= 1000){
		
		 reser.submit();
		 
	} else if(bTime == ""){
		alert("시간을 선택해주세요!");
		
	} else {
		 alert("포인트 충전 후 이용해 주세요.");
	} 
	 
 } // end reser1()
 
 
 // 예약하기 전 로그인 확인
 function reser2(){
	 alert("로그인 후 이용해주세요!");
 } // end reser2()
 
</script>



 <script>
    $.datepicker.setDefaults({
      closeText: "닫기",
      prevText: "이전달",
      nextText: "다음달",
      currentText: "오늘",
      monthNames: ["1월", "2월", "3월", "4월", "5월", "6월",
        "7월", "8월", "9월", "10월", "11월", "12월"
      ],
      monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월",
        "7월", "8월", "9월", "10월", "11월", "12월"
      ],
      dayNames: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
      dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
      dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
      weekHeader: "주",
      dateFormat: "yy-mm-dd",
      firstDay: 0,
      isRTL: false,
      showMonthAfterYear: true,
      yearSuffix: "년"
    })
    $("#datepicker").datepicker({
    	minDate : "bDate", //당일 부터 예약(선택) 가능
		maxDate : "+14", // 100일 까지 예약 가능 (선택가능)
      
      /* to use in wix */
      onSelect: function (selected, event) {
        console.log(selected);
        
        
        dateForm.submit();
        

        /*
         * wix-send-messages from html component
         * https://support.wix.com/en/article/working-with-the-html-component-in-wix-code
         *
         *        
         
         
         */
        window.parent.postMessage(selected, "*");
      }
    })
  </script>

</html>