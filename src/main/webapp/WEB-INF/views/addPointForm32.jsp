<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    </style>



</head>
<body>
<br>
<div style="border: 2pt groove skyblue; width:500px; margin:auto; text-align:center; padding:50px 20px 20px 20px; " >
   <h2 style="color:skyblue; ">포인트 충전</h2>
   <h4 style=" color:skyblue; text-decoration: underline;">__________________________ </h4>
   <div id="addpoint">
   <input type="hidden" value="${sessionScope.mloginCode}" id="mCode">
   </div>
   
   
                         <div>
                                    <div>
                                        <p style="font-weight:bold;">포인트 충전</p>
                                        <div>
                                        <div>
                                            <div class="row">
                                                <div style="text-align:center; margin:auto;">
                                                    <div>
                                                       <p class="note" style="font-weight: bold; color:gray;">충전할 금액을 선택해주세요.</p>
                                                    </div>
                                                    <div>
                                                        <div class="topup_point_button"><button type="button" onclick="addPoint1()" id="Point1" value="1000"
                                                                class="topup_point_cost" style="background-color:#2ECCFA; border-radius:6px;border-color:skyblue; color:white; font-weight: 600; width:120px; height:30;">+ 1,000 <span>원</span></button>
                                                                
                                                        </div>
                                                        <br>
                                                        <div>
                                                           <button type="button" onclick="addPoint2()" id="Point2" value="5000"
                                                                class="topup_point_cost" style="background-color:#2ECCFA; border-radius:6px;border-color:skyblue; color:white; font-weight: 600; width:120px; height:30;">+ 5,000 <span>원</span>
                                                            </button>
                                                        </div>
                                                        <br>
                                                        <div>
                                                           <button type="button" onclick="addPoint3()" id="Point3" value="10000"
                                                                class="topup_point_cost" style="background-color:#2ECCFA; border-radius:6px;border-color:skyblue; color:white; font-weight: 600; width:120px; height:30;">+ 10,000
                                                                <span>원</span>
                                                            </button>
                                                            <br><br>
                                                             <p style="font-style:italic; color:#9ecb6b; font-weight: bold;">먹는 줄거움, 쏟아지는 혜택 </p>
                                                     <h1 style="font-style:italic; color:#9ecb6b; font-weight: bold;">Let's Eat!</h1>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
      
                                    </div>

                                    
                                </div>
                                </div><!--  -->
                        
   </div>
   
   <br>
</body>
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

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>


<!-- 포인트 충전을 위한 script  -->
<script>
function addPoint1(){
   var mCode = document.getElementById("mCode").value;
   var mPoint = document.getElementById("Point1").value;
   var confirmId = document.getElementById("save");
   console.log("mCode : " + mCode);
   console.log("mPoint : " + mPoint);
   
    var IMP = window.IMP; // 생략가능
    IMP.init('imp57676584'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
   IMP.request_pay({
   pg : 'inicis', // version 1.1.0부터 지원.
   pay_method : 'card',
   merchant_uid : '레츠잇!' + new Date().getTime(),
   name : mPoint + '원 충전',
   amount : 100,
   buyer_name : '구매자 코드:' + '${sessionScope.mloginId}',
   m_redirect_url : 'https://www.yourdomain.com/payments/complete'
}, function(rsp) {
   if ( rsp.success ) {
       var msg = '결제가 완료되었습니다.';
       msg += '거래ID : ' + rsp.merchant_uid + '\n';
       msg += '결제 금액 : ' + mPoint + '원';
       
       $
       .ajax({
         type : "GET",
         url : "addPoint",
         data : {
            "mPoint" : mPoint,
            "mCode" : mCode

         },
         dataType : "text",

         success : function(data) {
            if (data == "OK") {
               output = "";

               output += mPoint + "원 충전 완료";
               output +="<br>";
               output +="<input type='button' value='메인페이지로' onclick='location.href=`main`'>"

               document.getElementById("addpoint").innerHTML = output;
            } else {

               output = "";
               output += "충전이 실패하였습니다.";

               document.getElementById("addpoint").innerHTML = output;

            }//end if
         }, // end success

         error : function() {
            alert('함수 통신 실패!');
         }//end error

      });//end ajax
       
       
       
   } else {
       var msg = '결제에 실패하였습니다.';
       msg += '에러내용 : ' + rsp.error_msg;
   }
   alert(msg);
});
}
</script>
<script>
function addPoint2(){
   var mCode = document.getElementById("mCode").value;
   var mPoint = document.getElementById("Point2").value;
   var confirmId = document.getElementById("save");
   console.log("mCode : " + mCode);
   console.log("mPoint : " + mPoint);
   
    var IMP = window.IMP; // 생략가능
    IMP.init('imp57676584'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
   IMP.request_pay({
   pg : 'inicis', // version 1.1.0부터 지원.
   pay_method : 'card',
   merchant_uid : '레츠잇!' + new Date().getTime(),
   name : mPoint + '원 충전',
   amount : 100,
   buyer_name : '${sessionScope.mloginId}',
   m_redirect_url : 'https://www.yourdomain.com/payments/complete'
}, function(rsp) {
   if ( rsp.success ) {
       var msg = '결제가 완료되었습니다.';
       msg += '거래ID : ' + rsp.merchant_uid + '\n';
       msg += '결제 금액 : ' + mPoint + '원';
       
       $
       .ajax({
         type : "GET",
         url : "addPoint",
         data : {
            "mPoint" : mPoint,
            "mCode" : mCode

         },
         dataType : "text",

         success : function(data) {
            if (data == "OK") {
               output = "";

               output += mPoint + "원 충전 완료";
               output +="<br>";
               output +="<input type='button' value='메인페이지로' onclick='location.href=`main`'>"

               document.getElementById("addpoint").innerHTML = output;
            } else {

               output = "";
               output += "충전이 실패하였습니다.";

               document.getElementById("addpoint").innerHTML = output;

            }//end if
         }, // end success

         error : function() {
            alert('함수 통신 실패!');
         }//end error

      });//end ajax
       
       
       
   } else {
       var msg = '결제에 실패하였습니다.';
       msg += '에러내용 : ' + rsp.error_msg;
   }
   alert(msg);
});
}
</script>
<script>
function addPoint3(){
   var mCode = document.getElementById("mCode").value;
   var mPoint = document.getElementById("Point3").value;
   var confirmId = document.getElementById("save");
   console.log("mCode : " + mCode);
   console.log("mPoint : " + mPoint);
   
    var IMP = window.IMP; // 생략가능
    IMP.init('imp57676584'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
   IMP.request_pay({
   pg : 'inicis', // version 1.1.0부터 지원.
   pay_method : 'card',
   merchant_uid : '레츠잇!' + new Date().getTime(),
   name : mPoint + '원 충전',
   amount : 100,
   buyer_name : '${sessionScope.mloginId}',
   m_redirect_url : 'https://www.yourdomain.com/payments/complete'
}, function(rsp) {
   if ( rsp.success ) {
       var msg = '결제가 완료되었습니다.';
       msg += '거래ID : ' + rsp.merchant_uid + '\n';
       msg += '결제 금액 : ' + mPoint + '원';
       
       $
       .ajax({
         type : "GET",
         url : "addPoint",
         data : {
            "mPoint" : mPoint,
            "mCode" : mCode

         },
         dataType : "text",

         success : function(data) {
            if (data == "OK") {
               output = "";

               output += mPoint + "원 충전 완료";
               output +="<br>";
               output +="<input type='button' value='메인페이지로' onclick='location.href=`main`'>"
               document.getElementById("addpoint").innerHTML = output;
            } else {

               output = "";
               output += "충전이 실패하였습니다.";

               document.getElementById("addpoint").innerHTML = output;

            }//end if
         }, // end success

         error : function() {
            alert('함수 통신 실패!');
         }//end error

      });//end ajax
       
       
       
   } else {
       var msg = '결제에 실패하였습니다.';
       msg += '에러내용 : ' + rsp.error_msg;
   }
   alert(msg);
});
}
</script>


</html>