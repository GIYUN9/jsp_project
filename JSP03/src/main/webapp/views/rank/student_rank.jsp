<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>개인정보 및 성적입력 페이지</h1>
	
	<form action="/JSP03/resultRank.do" method="get">
		<fieldset>
			<legend>이름 / 학번 / 점수 입력</legend>
		
			<table>
				<tr>
					<td>이름 : </td>
					<td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<td>학번 : </td>
					<td><input type="text" name="stu_no" required></td>
				</tr>
				<tr>
					<td>국어 점수 : </td>
					<td><input type="number" name="kor" required></td>
				</tr>
				<tr>
					<td>수학 점수 : </td>
					<td><input type="number" name="math" required></td>
				</tr>
				<tr>
					<td>영어 점수 : </td>
					<td><input type="number" name="eng" required></td>
				</tr>
				<tr>
					<td>과학 점수 : </td>
					<td><input type="number" name="sci" required></td>
				</tr>
			</table>
		</fieldset>
		
		<br>
		
		<input type="submit" value="계산하기">
	</form>
</body>
</html>