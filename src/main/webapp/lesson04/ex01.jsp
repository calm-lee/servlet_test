<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<%--
		Flow
		유저 추가) ex02.jsp (input 홈화면) -> ex02_insert (서블릿, insert 쿼리)
	 --%>
	
	<form method="POST" action="/lesson04/ex02_insert">
	<p>
		<strong>이름</strong>
		<input type="text" name="name">
	</p>
	
	<p>
		<strong>생일</strong>
		<input type="text" name="birth">
	</p>
	
	<p>
		<strong>이메일</strong>
		<input type="text" name="email">
	</p>
	
	<p>
		<strong>자기소개</strong><br>
		<textarea type="text" name="introduce" rows="5" cols="50"></textarea>
	</p>
		<button class="submit">입력</button>
	</form>
</body>
</html>