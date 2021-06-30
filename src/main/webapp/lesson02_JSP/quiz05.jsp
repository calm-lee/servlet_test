<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<form method="post" action="/lesson02_JSP/quiz05_1.jsp">
	<div class="container">
	<h1>길이 변환</h1>
	<div class="d-flex">
		<input type="text" name="number" class="form-control col-2">cm
	</div>
	<div class="mt-3">
		<label for="inch">인치<input type="checkbox" name="check" id="inch" value="인치"></label>
		<label for="yard">야드<input type="checkbox" name="check" id="yard"  value="야드"></label>
		<label for="feet">피트<input type="checkbox" name="check" id="feet"  value="피트"></label>
		<label for="meter">미터<input type="checkbox" name="check" id="meter" value="미터"></label>
	</div>
	<button type="submit" class="form-control btn-success text-white col-2">변환하기</button>
	</div>
</body>
</html>