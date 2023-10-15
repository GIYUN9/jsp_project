<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)request.getAttribute("name");
	String stu_no = (String)request.getAttribute("stu_no");
	
	int kor = (int)request.getAttribute("kor");
	int math = (int)request.getAttribute("math");
	int eng = (int)request.getAttribute("eng");
	int sci = (int)request.getAttribute("sci");
	
	int avg = (int)request.getAttribute("avg");
	
	String result = (String)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>결과 페이지</h1>
	<h2>[ 학생 정보 ]</h2>
	<ul>
		<li>이름 : <%=name %></li>
		<li>학번 : <%=stu_no %></li>
	</ul>
	
	<br>
	
	<h2>[ 점수 ]</h2>
	<ul>
		<li>국어 점수 : <%=kor %></li>
		<li>수학 점수 : <%=math %></li>
		<li>영어 점수 : <%=eng %></li>
		<li>과학 점수 : <%=sci %></li>
		<li> 평균 : <%=avg %></li>
	</ul>
	<br><br>
	
	<div style="border: 1"> 등급은 <%=result %>입니다.</div>
	
</body>
</html>