<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Post 예제</title>
</head>
<body>
	<form method="post" action="/lesson02_JSP/ex03_1.jsp">
	1. 별명은 무엇입니까? <input type = "text" name = "nickname"><br><br>
	2. 취미는 무엇입니까? <input type = "text" name = "hobby"><br><br>
	3. 강아지 or 고양이? 
	<label for="dog">강아지
	<input type = "radio" name = "animal" value="dog" id="dog"></label>
	<label for="cat">고양이
	<input type = "radio" name = "animal" value="cat" id="cat"></label><br><br>
	4. 다음 중 선호하는 것을 모두 고르시오. <br>
	<label for="mincho">민트초코</label><input type="checkbox" name="food" id="mincho" value="mincho">
	<label for="pizza">하와이안 피자(파인애플)</label><input type="checkbox" name="food" id="pizza" value="pizza">
	<label for="pupa">번데기</label><input type="checkbox" name="food" id="pupa" value="pupa"><br><br>
	5. 좋아하는 과일을 선택하세요.
	<select name = "fruit">
		<option value="apple">사과</option>
		<option value="banana">바나나</option>
		<option value="peach">복숭아</option>
		<option value="strawberry">딸기</option>
		<option value="grape">포도</option>
	</select><br><br>
	<button type = "submit">제출</button>
	</form>
</body>
</html>