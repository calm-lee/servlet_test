<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IU</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<!-- 1. 리스트에서 노래제목을 클릭하면 해당 노래 세부사항을 표시하는 화면으로 이동하세요. // a href 걸기 (getParameter 이용)
2. 검색어를 입력하면 해당하는 노래 제목이 있을 경우 해당하는 노래 세부사항 페이지로 이동하세요. // input value == getParameter 이용 -->

<style>
#wrap{width: 100%; height: 100%;}
header{height: 150px;}
.logo{font-size: 50px; font-weight: bold; color: green}
.input{width: 600px; height: 50px;}
.btn{width: 60px; height: 50px; color: white}
.nav-item{font-weight: bold; font-size: 26px;}
.image{width: 200px;}
.introduce{width: 300px;}
</style>

<body>
<div id="wrap" class="container">

	<jsp:include page="header.jsp" />
	
	<jsp:include page="nav.jsp" />
	
	<jsp:include page="info.jsp" />
		
	<div class="content2 mt-3">
				<div>
					<span style="font-size: 30px; font-weight: bold">곡 목록</span>
				</div>
			<jsp:include page="table.jsp" />
		</div>	
	</div>
	</div>
</body>
</html>