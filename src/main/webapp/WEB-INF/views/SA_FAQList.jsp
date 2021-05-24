<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
<link rel="stylesheet" type="text/css" href="resources/css/SA_css.css">
</head>
<body>
	<div class="SA_leftHome">
		<button class="SA_homeButton" onclick="location.href='sa_index'" style='cursor: pointer'>홈 로고(관리자 인덱스로)</button>
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
	<form action="sa_selCat7">
			<th>카테고리 검색</th>
			<td><select name="FAQCat">
					<optgroup label="카테고리">
						<option value="예약">예약</option>
						<option value="사이트 이용">사이트 이용</option>
						<option value="결제">결제</option>
						<option value="기타">기타</option>
					</optgroup>
			</select><input type="submit" value="검색"></td></form>
		<table style="width:100%">
			<thead>
				<tr>
					<th class="SA_FAQViewTh" style= "width:10%">문의코드</th>
					<th class="SA_FAQViewTh" style= "width:15%">카테고리</th>
					<th class="SA_FAQViewTh" style= "width:65%">제목</th>
					<th class="SA_FAQViewTh" style= "width:10%">관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="f" items="${faqList}">
					<tr>
						<td class="SA_FAQViewTdLong" style= "width:10%">${f.FAQCode}</td>
						<td class="SA_FAQViewTdLong" style= "width:15%">${f.FAQCat}</td>
						<td class="SA_FAQViewTdLong" style= "width:65%"><a href="sa_FAQView?FAQCode=${f.FAQCode}">${f.FAQTitle}</a></td>
						<td class="SA_FAQViewTdLong" style= "width:10%"><button onclick="location.href='sa_FAQDel?FAQCode=${f.FAQCode}'">삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script>
function commentList(board_id, pageNum) {
    $.ajax({
       url : '/commentlist',
       type : 'POST',
       data : {
          'board_id' : board_id,
          'page' : pageNum
      },
       dataType:"json",
       success : function(data) {
          var a = '';
          var page = data.page;
          var startpage = data.startpage;
          var endpage = data.endpage;
          var boardList = data.boardList;

          $.each(boardList, function(key, value) {
             console.log("data : " + boardList);
             console.log(boardList);
             console.log(page + "," + startpage + "," + endpage);
             console.log("start : " + startpage);
             console.log("end : " + endpage);
             a += '<div class="commentArea" style="boarder-bottom:1px solid darkgray; margin-bottom: 15px;">';
             a += '<div class="commentInfo'+value.board_re_id+'">'+'댓글번호 : '+value.board_re_id+' / 작성자 : '+value.mem_id;
             a += '<a onclick="commentUpdate('+value.board_re_id+',\''+value.board_re_content+'\');"> 수정 </a>';
             a += '<a onclick="commentDelete('+value.board_re_id+');"> 삭제 </a> </div>';
             a += '<div class="commentContent'+value.board_re_id+'"> <p> 내용 : '+value.board_re_content +'</p>';
             a += '</div></div>';
          });
          
          for (var num=startpage; num<=endpage; num++) {
             if (num == page) {
                  a += '<a href="#" onclick="commentList(' + board_id + ', ' + num + '); return false;" class="page-btn">' + num + '</a>';
             } else {
                  a += '<a href="#" onclick="commentList(' + board_id + ', ' + num + '); return false;" class="page-btn">' + num + '</a>';
             }
          }
        $('.commentList').html(a);
     }
  });
}
</script>
</html>