<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 - 자주 묻는 질문 작성</title>
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
		<form action="sa_writeFAQ" method="POST" >
			<th>카테고리</th>
			<td>
				<select name = "FAQCat">
					<optgroup label="카테고리">
						<option value = "예약">예약</option>
						<option value = "사이트 이용">사이트 이용</option>
						<option value = "결제">결제</option>
						<option value = "기타">기타</option>
					</optgroup>
				</select>
			</td><br>
			<tr>
				<th>제목</th>
				<td colspan="3"><input type="text" name="FAQTitle" style="width:90%;"></td>
			</tr><br>

			<tr>
				<th>내용</th>
				<td colspan="3"><textarea style="width:90%; height:300px;" name="FAQContents"></textarea></td>
			</tr><br>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록">
				</td>
			</tr>
		</form>

	</div>
</body>
<script>
	
</script>
</html>