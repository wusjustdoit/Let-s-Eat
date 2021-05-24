<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	table,tr,td{
		border : 2px solid black;
		text-align: center;
		border-collapse :collapse;
		
	}
	

</style>



</head>
<body>
	<table>
		<tr>
			<td><input type="button" onclick="location.href='mgstore?scCode=${sessionScope.cloginId}'" value="업체관리"></td>
			<td><input type="button" onclick="location.href='upform'" value="업체등록"></td>
			<td><input type="button" value="문의현황"></td>
		</tr>
		
	</table>

	
	<table style=margin:auto; >
		<caption> ${sessionScope.cloginId} 님 업체 목록</caption>
		
		<tr>
			
			
			<c:forEach var="clist" items="${mgstore}" varStatus="status">
			<td width="32%" height="400px">
				<div><a href="sView?storeCode=${clist.storeCode}"><img src="resources/fileUpload/${clist.sFileName1}" width="200px"></a></div>
				<div>${clist.sName} ${clist.storeCode}</div>
				<div>${clist.sFileName2}</div>
			
			</td>
			<c:if test="${status.count%3==0}">
							<tr></tr>
			</c:if>
			</c:forEach>
			
			
		</tr>
		
	
	</table>




</body>
</html>