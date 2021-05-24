<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
<title>Insert title here</title>
<style>
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 1px;
	text-align: center;
}



</style>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>

<!--spinner  -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<!--dialog  -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#dialog" ).dialog({
      autoOpen: false,
      show: {
        effect: "fade",
        duration: 500
      },
      hide: {
        effect: "fade",
        duration: 500
      }
    });
 
    $( "#opener" ).on( "click", function() {
      $( "#dialog" ).dialog( "open" );
    });
  } );

  

  
  </script>


</head>
<body>



<form action="dateMngB" name="dateForm">

날짜선택하기 <input type="date" name="bookDate" id="date1">
<input type="button" value="선택" onclick="datee()">
<input type="hidden" value="${storeCode}" name="booksCode">

</form>
<div id="divv"></div>

<%-- <c:if test="${empty bookDate}"><!--날짜선택 안할시 현재날짜 --> --%>

	<c:if test="${empty mngbook}">
	
	<!-- 비어있으면 insert, 이미 있으면 update  -->
	<form action="addmngbook" method="GET">
		<input type="hidden" value="${bookDate}" name="bookDate">
		<input type="hidden" value="${storeCode}" name="booksCode">
		
		
		<table>
			<tr>
				<th>시간</th>
				<th>현재 예약 수</th>
				
				<th>예약가능 건수</th>
				<th>예약가능 건수설정</th>

			</tr>

			<tr>
				<td>9:00</td>
				<td>${bookCount9}</td>
				
				<td>${mngbook.book9}</td>
				<td><p>
						<input type="text" id="spinner9" name="book9"
							placeholder="${mngbook.book9}">
					</p></td>
			</tr>
			
			<tr>
				<td>10:00</td>
				<td>${bookCount10}</td>
				
				<td>${mngbook.book10}</td>
				<td><p>
						<input type="text" id="spinner10" name="book10"
							placeholder="${mngbook.book10}">
					</p></td>
			</tr>
			
			<tr>
				<td>11:00</td>
				<td>${bookCount11}</td>
				
				<td>${mngbook.book11}</td>
				<td><p>
						<input type="text" id="spinner11" name="book11"
							placeholder="${mngbook.book11}">
					</p></td>
			</tr>
			<tr>
				<td>12:00</td>
				<td>${bookCount12}</td>
				
				<td>${mngbook.book12}</td>
				<td><p>
						<input type="text" id="spinner12" name="book12"
							placeholder="${mngbook.book12}">
					</p></td>
			</tr>

			<tr>
				<td>13:00</td>
				<td>${bookCount13}</td>
				
				<td>${mngbook.book13}</td>
				<td><p>
						<input id="spinner13" name="book13"
							placeholder="${mngbook.book13}">
					</p></td>
			</tr>

			<tr>
				<td>14:00</td>
				<td>${bookCount14}</td>
				
				<td>${mngbook.book14}</td>
				<td><p>
						<input id="spinner14" name="book14"
							placeholder="${mngbook.book14}">
					</p></td>
			</tr>

			<tr>
				<td>15:00</td>
				<td>${bookCount15}</td>
			
				<td>${mngbook.book15}</td>
				<td><p>
						<input id="spinner15" name="book15"
							placeholder="${mngbook.book15}">
					</p></td>
			</tr>

			<tr>
				<td>16:00</td>
				<td>${bookCount16}</td>
			
				<td>${mngbook.book16}</td>
				<td><p>
						<input type="text" id="spinner16" name="book16"
							placeholder="${mngbook.book16}">
					</p></td>
			</tr>
			<tr>
				<td>17:00</td>
				<td>${bookCount17}</td>
			
				<td>${mngbook.book17}</td>
				<td><p>
						<input type="text" id="spinner17" name="book17"
							placeholder="${mngbook.book17}">
					</p></td>
			</tr>
			
			<tr>
				<td>18:00</td>
				<td>${bookCount18}</td>
				
				<td>${mngbook.book18}</td>
				<td><p>
						<input type="text" id="spinner18" name="book18"
							placeholder="${mngbook.book18}">
					</p></td>
			</tr>
			
			<tr>
				<td>19:00</td>
				<td>${bookCount19}</td>
				
				<td>${mngbook.book19}</td>
				<td><p>
						<input type="text" id="spinner19" name="book19"
							placeholder="${mngbook.book19}">
					</p></td>
			</tr>
			
			<tr>
				<td>20:00</td>
				<td>${bookCount20}</td>
			
				<td>${mngbook.book20}</td>
				<td><p>
						<input type="text" id="spinner20" name="book20"
							placeholder="${mngbook.book20}">
					</p></td>
			</tr>
			
			<tr>
				<td>21:00</td>
				<td>${bookCount21}</td>
				
				<td>${mngbook.book21}</td>
				<td><p>
						<input type="text" id="spinner21" name="book21"
							placeholder="${mngbook.book21}">
					</p></td>
			</tr>
		</table>

		<input type="submit" value="적용">
		<!-- <button onclick="submit">적용</button> -->
	</form>
	
	</c:if>
	
	<c:if test="${not empty mngbook}">
	
	<!-- 비어있으면 insert, 이미 있으면 update  -->
	<form action="changemngbook" method="GET">

	<input type="hidden" value="${bookDate}" name="bookDate">
	<input type="hidden" value="${mngbook.booksCode}" name="booksCode">
	<h1>예약 설정</h1> 
		<table> 
			<tr>
				<th>시간</th>
				<th>현재 예약 수</th>
				
				<th>예약가능 건수</th>
				<th>예약가능 건수설정</th>

			</tr>

			<tr>
				<td>9:00</td>
				<td>${bookCount9}</td>
			
				<td>${mngbook.book9}</td>
				<td><p>
						<input type="text" id="spinner9" name="book9"
							placeholder="${mngbook.book9}">
					</p></td>
			</tr>
			
			<tr>
				<td>10:00</td>
				<td>${bookCount10}</td>
				
				<td>${mngbook.book10}</td>
				<td><p>
						<input type="text" id="spinner10" name="book10"
							placeholder="${mngbook.book10}">
					</p></td>
			</tr>
			
			<tr>
				<td>11:00</td>
				<td>${bookCount11}</td>
			
				<td>${mngbook.book11}</td>
				<td><p>
						<input type="text" id="spinner11" name="book11"
							placeholder="${mngbook.book11}">
					</p></td>
			</tr>
			<tr>
				<td>12:00</td>
				<td>${bookCount12}</td>
				
				<td>${mngbook.book12}</td>
				<td><p>
						<input type="text" id="spinner12" name="book12"
							placeholder="${mngbook.book12}">
					</p></td>
			</tr>

			<tr>
				<td>13:00</td>
				<td>${bookCount13}</td>
				
				<td>${mngbook.book13}</td>
				<td><p>
						<input id="spinner13" name="book13"
							placeholder="${mngbook.book13}">
					</p></td>
			</tr>

			<tr>
				<td>14:00</td>
				<td>${bookCount14}</td>
				
				<td>${mngbook.book14}</td>
				<td><p>
						<input id="spinner14" name="book14"
							placeholder="${mngbook.book14}">
					</p></td>
			</tr>

			<tr>
				<td>15:00</td>
				<td>${bookCount15}</td>
				
				<td>${mngbook.book15}</td>
				<td><p>
						<input id="spinner15" name="book15"
							placeholder="${mngbook.book15}">
					</p></td>
			</tr>

			<tr>
				<td>16:00</td>
				<td>${bookCount16}</td>
				
				<td>${mngbook.book16}</td>
				<td><p>
						<input type="text" id="spinner16" name="book16"
							placeholder="${mngbook.book16}">
					</p></td>
			</tr>
			<tr>
				<td>17:00</td>
				<td>${bookCount17}</td>
			
				<td>${mngbook.book17}</td>
				<td><p>
						<input type="text" id="spinner17" name="book17"
							placeholder="${mngbook.book17}">
					</p></td>
			</tr>
			
			<tr>
				<td>18:00</td>
				<td>${bookCount18}</td>
				
				<td>${mngbook.book18}</td>
				<td><p>
						<input type="text" id="spinner18" name="book18"
							placeholder="${mngbook.book18}">
					</p></td>
			</tr>
			
			<tr>
				<td>19:00</td>
				<td>${bookCount19}</td>
				
				<td>${mngbook.book19}</td>
				<td><p>
						<input type="text" id="spinner19" name="book19"
							placeholder="${mngbook.book19}">
					</p></td>
			</tr>
			
			<tr>
				<td>20:00</td>
				<td>${bookCount20}</td>
				
				<td>${mngbook.book20}</td>
				<td><p>
						<input type="text" id="spinner20" name="book20"
							placeholder="${mngbook.book20}">
					</p></td>
			</tr>
			
			<tr>
				<td>21:00</td>
				<td>${bookCount21}</td>
				
				<td>${mngbook.book21}</td>
				<td><p>
						<input type="text" id="spinner21" name="book21"
							placeholder="${mngbook.book21}">
					</p></td>
			</tr>
		</table>

		<input type="submit" value="적용">
		<!-- <button onclick="submit">적용</button> -->
	</form>
	
	</c:if>
	
	

	<div id="dialog" title="예약가능 건수 기본 설정하기" class="dialog">

		
			<form action="addmngbook2" method="POST">
			&nbsp;9:00&nbsp;&nbsp;<input type="text" name="book9"><br> <br>
			10:00&nbsp;<input type="text" name="book10"><br> <br>
			11:00&nbsp;<input type="text" name="book11"><br> <br>
			12:00&nbsp;<input type="text" name="book12"><br> <br>
			13:00&nbsp;<input type="text" name="book13"><br> <br>
			14:00&nbsp;<input type="text" name="book14"><br> <br>
			15:00&nbsp;<input type="text" name="book15"><br> <br>
			16:00&nbsp;<input type="text" name="book16"><br> <br>
			17:00&nbsp;<input type="text" name="book17"><br> <br>
			18:00&nbsp;<input type="text" name="book18"><br> <br>
			19:00&nbsp;<input type="text" name="book19"><br> <br>
			20:00&nbsp;<input type="text" name="book20"><br> <br>
			21:00&nbsp;<input type="text" name="book21"><br> <br>
			<input type="hidden" name="booksCode" value="${storeCode}">

			<button onclick="submit">적용</button>
			</form>
	
	</div>

	<button id="opener">기본값 설정하기</button>
	<button onclick="location.href='bringDefault?booksCode2=${storeCode}'">  ${storeCode} 기본값적용 </button>


</body>

<script>
$( function() {
    $( "#spinner9" ).spinner({
      spin: function( event, ui ) {
        if ( ui.value > 10 ) {
          $( this ).spinner( "value", 0 );
          return false;
        } else if ( ui.value < 0 ) {
          $( this ).spinner( "value", 10 );
          return false;
        }
      }
    });
  } );
  
  $( function() {
	    $( "#spinner10" ).spinner({
	      spin: function( event, ui ) {
	        if ( ui.value > 10 ) {
	          $( this ).spinner( "value", 0 );
	          return false;
	        } else if ( ui.value < 0 ) {
	          $( this ).spinner( "value", 10 );
	          return false;
	        }
	      }
	    });
	  } );
  
  
  $( function() {
	    $( "#spinner11" ).spinner({
	      spin: function( event, ui ) {
	        if ( ui.value > 10 ) {
	          $( this ).spinner( "value", 0 );
	          return false;
	        } else if ( ui.value < 0 ) {
	          $( this ).spinner( "value", 10 );
	          return false;
	        }
	      }
	    });
	  } );
  
  
  $( function() {
	    $( "#spinner12" ).spinner({
	      spin: function( event, ui ) {
	        if ( ui.value > 10 ) {
	          $( this ).spinner( "value", 0 );
	          return false;
	        } else if ( ui.value < 0 ) {
	          $( this ).spinner( "value", 10 );
	          return false;
	        }
	      }
	    });
	  } );
  
  $( function() {
	    $( "#spinner13" ).spinner({
	      spin: function( event, ui ) {
	        if ( ui.value > 10 ) {
	          $( this ).spinner( "value", 0 );
	          return false;
	        } else if ( ui.value < 0 ) {
	          $( this ).spinner( "value", 10 );
	          return false;
	        }
	      }
	    });
	  } );
	  
	  $( function() {
		    $( "#spinner14" ).spinner({
		      spin: function( event, ui ) {
		        if ( ui.value > 10 ) {
		          $( this ).spinner( "value", 0 );
		          return false;
		        } else if ( ui.value < 0 ) {
		          $( this ).spinner( "value", 10 );
		          return false;
		        }
		      }
		    });
		  } );
	  
	  
	  $( function() {
		    $( "#spinner15" ).spinner({
		      spin: function( event, ui ) {
		        if ( ui.value > 10 ) {
		          $( this ).spinner( "value", 0 );
		          return false;
		        } else if ( ui.value < 0 ) {
		          $( this ).spinner( "value", 10 );
		          return false;
		        }
		      }
		    });
		  } );
	  
	  
	  $( function() {
		    $( "#spinner16" ).spinner({
		      spin: function( event, ui ) {
		        if ( ui.value > 10 ) {
		          $( this ).spinner( "value", 0 );
		          return false;
		        } else if ( ui.value < 0 ) {
		          $( this ).spinner( "value", 10 );
		          return false;
		        }
		      }
		    });
		  } );
  $( function() {
    $( "#spinner17" ).spinner({
      spin: function( event, ui ) {
        if ( ui.value > 10 ) {
          $( this ).spinner( "value", 0 );
          return false;
        } else if ( ui.value < 0 ) {
          $( this ).spinner( "value", 10 );
          return false;
        }
      }
    });
  } );
  
  $( function() {
	    $( "#spinner18" ).spinner({
	      spin: function( event, ui ) {
	        if ( ui.value > 10 ) {
	          $( this ).spinner( "value", 0 );
	          return false;
	        } else if ( ui.value < 0 ) {
	          $( this ).spinner( "value", 10 );
	          return false;
	        }
	      }
	    });
	  } );
  
  
  $( function() {
	    $( "#spinner19" ).spinner({
	      spin: function( event, ui ) {
	        if ( ui.value > 10 ) {
	          $( this ).spinner( "value", 0 );
	          return false;
	        } else if ( ui.value < 0 ) {
	          $( this ).spinner( "value", 10 );
	          return false;
	        }
	      }
	    });
	  } );
  
  
  $( function() {
	    $( "#spinner20" ).spinner({
	      spin: function( event, ui ) {
	        if ( ui.value > 10 ) {
	          $( this ).spinner( "value", 0 );
	          return false;
	        } else if ( ui.value < 0 ) {
	          $( this ).spinner( "value", 10 );
	          return false;
	        }
	      }
	    });
	  } );
  
  $( function() {
	    $( "#spinner21" ).spinner({
	      spin: function( event, ui ) {
	        if ( ui.value > 10 ) {
	          $( this ).spinner( "value", 0 );
	          return false;
	        } else if ( ui.value < 0 ) {
	          $( this ).spinner( "value", 10 );
	          return false;
	        }
	      }
	    });
	  } );
  </script>

<script>
function datee(){
	var date1 = document.getElementById("date1").value;
	var divv = document.getElementById("divv");
	
	divv.innerHTML = date1;
	
	dateForm.submit();
}




</script>




</html>