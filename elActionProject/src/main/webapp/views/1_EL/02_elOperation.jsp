<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>EL 연산</h1>
	
	<h3>1. 산술 연산</h3>
	기존 방식(el x) : <%=(int)request.getAttribute("big") + (int)request.getAttribute("small") %>
	<br><br>
	
	10 + 3 = ${big + small } <br>
	10 - 3 = ${big - small } <br>
	10 x 3 = ${big * small } <br>
	10 / 3 = ${big / small } 또는 ${big div small} <br>
	10 % 3 = ${big % small } 또는 ${big mod small} <br>
	
	<h3>2. 대소 비교 연산</h3>
	10 &gt; 3 = ${big > small } 또는 ${big gt small}<br>
	10 &lt; 3 = ${big < small } 또는 ${big lt small}<br>
	10 &gt;= 3 = ${big >= small } 또는 ${big ge small}<br>
	10 &lt;= 3 = ${big <= small } 또는 ${big le small}<br><br>
	
	<h3>3. 동등비교연산</h3>
	<!-- el에서의 == 비교는 자바에서의 equals()와 같은 동작을 한다. -->
	sOne과 sTwo가 일치합니까? : ${sOne == sTwo } 또는 ${sOne eq sTwo } <br>
	sOne과 sTwo가 일치하지 않습니까? : ${sOne != sTwo } 또는 ${sOne ne sTwo } <br>
	
	big에 담긴값이 10과 일치합니까? : ${big == 10 } 또는 ${big eq 10 } <br>
	
	sOne에 담긴값이 "안녕"과 일치합니까? : ${sOne == '안녕' } 또는 ${sOne eq "안녕" } <br>
	<!-- el안에서 문자열 리터럴 제시시 홀따옴표든 쌍따옴표든 가리지 않음 -->
	
	<h4>4. 객체가 null인지 또는 리스트가 비어있는지 비교</h4>
	pTwo가 null인가요? : ${pTwo == null } 또는 ${empty pTwo } <br>
	pOne가 null인가요? : ${pOne == null } 또는 ${empty pOne } <br>
	pOne가 null이 아닌가요? : ${pOne != null } 또는 ${not empty pOne } <br>
	
	lOne이 텅 비어있나요? : ${empty lOne } <br>
	lTwo이 텅 비어있나요? : ${empty lTwo } <br>
	
	<h4>5. 논리연산자</h4>
	${true && true } 또는 ${true and true } <br>
	${true || false } 또는 ${true or false } <br>
	
	big이 small보다 크고 lOne 텅비어있습니까? : ${(big gt small) and empty lOne}
</body>
</html>