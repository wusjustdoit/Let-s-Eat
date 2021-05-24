<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
pageContext.setAttribute("br", "<br/>");
pageContext.setAttribute("cn", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체 상세 보기</title>
<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
<link rel="stylesheet" type="text/css" href="resources/css/SA_css.css">
</head>
<body>
	<div class="SA_leftHome">
		<button class="SA_homeButton" onclick="location.href='sa_index'"
			style='cursor: pointer'>홈 로고(관리자 인덱스로)</button>
	</div>
	<div class="SA_loginStatus">
			관리자 모드 접속 중 <button onclick="location.href='logout'">로그아웃</button>
	</div>
	<div class="SA_leftMenu">
		<button class="SA_leftMenuButton" onclick="location.href='sa_mMgt'"
			style='cursor: pointer'>회원 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_sMgt'"
			style='cursor: pointer'>업체 관리</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_sCfmList'"
			style='cursor: pointer'>업체 가입승인</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_reviewMgt'"
			style='cursor: pointer'>리뷰 관리</button>
		<button class="SA_leftMenuButton"
			onclick="location.href='sa_inquiryList'" style='cursor: pointer'>1:1문의
			관리</button>
		<button class="SA_leftMenuButton"
			onclick="location.href='sa_writeFAQForm'" style='cursor: pointer'>자주
			묻는 질문 작성</button>
		<button class="SA_leftMenuButton" onclick="location.href='sa_FAQList'"
			style='cursor: pointer'>자주 묻는 질문 관리</button>
	</div>
	<div class="SA_MainBody">
		<div id="sa_sModiv">
			<form action="sa_resInquiry">
				<table class="SA_FAQView">
					<input type="hidden" value="${sView.storeCode}" name="storeCode">
					<tr>
						<th class="SA_FAQViewTh">카테고리</th>
						<td class="SA_FAQViewTdLong">${sView.sFood}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">사진</th>
						<td class="SA_FAQViewTdLong">
							<img src="resources/fileUpload/${sView.sFileName1}"	alt="사진1" width="100px"><br>
							<img src="resources/fileUpload/${sView.sFileName2}"	alt="사진2" width="100px"><br>
							<img src="resources/fileUpload/${sView.sFileName3}"	alt="사진3" width="100px">
						</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">영업시간</th>
						<td class="SA_FAQViewTdLong">${sView.sTime}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">url</th>
						<td class="SA_FAQViewTdLong">${sView.sUrl}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">휴무일</th>
						<td class="SA_FAQViewTdLong">휴무일</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">주소</th>
						<td class="SA_FAQViewTdLong">${sView.sAddr}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">이름(사업장)</th>
						<td class="SA_FAQViewTdLong">${sView.sName}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">전화번호</th>
						<td class="SA_FAQViewTdLong">${sView.sPhone}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">단체석 유무</th>
						<td class="SA_FAQViewTdLong">${sView.sSeat}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">소개글</th>
						<td class="SA_FAQViewTdLong">${fn:replace(sView.sContents, cn, br)}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">사업자등록번호</th>
						<td class="SA_FAQViewTdLong">${sView.sbNum}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">메뉴,가격</th>
						<td class="SA_FAQViewTdLong">메뉴,가격</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">주차 가능여부</th>
						<td class="SA_FAQViewTdLong">${sView.sPark}</td>
					</tr>
					<tr>
						<th class="SA_FAQViewTh">키워드(5개)</th>
						<td class="SA_FAQViewTdLong">${sView.sKeyword}</td>
					</tr>
					<tr>
						<td colspan="2">
						<button onclick="SA_sModify()">수정</button>
						<button onclick="location.href='sa_sDel?storeCode=${sView.storeCode}'">삭제</button>
						<input type="button" onclick="window.history.back()" value="뒤로가기">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	
</body>
<script>
	function SA_sModify(){
		var output="<form action='sa_sModi' method='POST' ><table>";
		
		output+="<input type='hidden' value='${sView.storeCode}' name='storeCode'>";
		output+="<tr><th>카테고리</th>";
 		output+="<td><select name = 'sFood'>";
		output+="<optgroup label='카테고리'>";
		output+="<option value = '#양식'>양식</option>";
		output+="<option value = '#한식'>한식</option>";
		output+="<option value = '#일식'>일식</option>";
		output+="<option value = '#중식'>중식</option>";
		output+="<option value = '#분식'>분식</option>";
		output+="<option value = '#카페'>카페</option>";
		output+="<option value = '#패스트푸드'>패스트푸드</option>";
		output+="<option value = '#기타'>기타</option></optgroup></select></td></tr><br>";
		output+="<tr><th>사진</th><td><input type='file' name='sFile1'><input type='file' name='sFile2'><input type='file' name='sFile3'></td></tr>";
		output+="<tr><th>영업시간</th>";
		output+="<td><input type='text' name='sTime' placeholder='${sView.sTime}'</td></tr>";
		output+="<tr><th>url</th><td><input type='text' name='sUrl' placeholder='${sView.sUrl}'></td></tr>";
		output+="<tr><th>휴무일</th><td><input type='text' name='휴무일' placeholder='휴무일'></td></tr>";
		output+="<tr><th>주소</th><td><input type='text' name='sAddr' placeholder='${sView.sAddr}'></td></tr>";
		output+="<tr><th>이름(사업장)</th><td><input type='text' name='sName' placeholder='${sView.sName}'></td></tr>";
		output+="<tr><th>전화번호</th><td><input type='text' name='sPhone' placeholder='${sView.sPhone}'></td></tr>";
		output+="<tr><th>단체석 유무</th><td><input type='text' name='sSeat' placeholder='${sView.sSeat}'></td></tr>";
		output+="<tr><th>소개글</th><td><input type='text' name='sContents' placeholder='${sView.sContents}'></td></tr>";
		output+="<tr><th>사업자 등록번호</th><td><input type='text' name='sbNum' placeholder='${sView.sbNum}'></td></tr>";
		output+="<tr><th>메뉴,가격</th><td><input type='text' name='메뉴,가격' placeholder='메뉴,가격'></td></tr>";
		output+="<tr><th>주차 가능여부</th><td><select name='sPark'><optgroup label='카테고리'>";
		output+="<option value = '주차 가능'>주차 가능</option><option value = '주차 불가능'>주차 불가능</option></optgroup></select></td></tr>";
		/* output+="<tr><th>키워드(5개)</th><td><input type='text' name='sKeyword1'></td>";
		output+="<td><input type='text' name='sKeyword2'></td>";
		output+="<td><input type='text' name='sKeyword3'></td>";
		output+="<td><input type='text' name='sKeyword4'></td>";
		output+="<td><input type='text' name='sKeyword5'></td></tr>"; */
		output+="<br><tr>";
		output+="<td colspan='2'>";
		output+="<input type='submit' value='수정'>";
		output+="</td>";
		output+="</tr>";
		
		output+="</table></form>";
		
		document.getElementById("sa_sModiv").innerHTML = output;
	}
</script>
</html>