<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML 주석 문법: 소스보기에서 보인다. -->
	<%-- JSP 주석 문법:  소스보기에서 보이지 않는다.--%>
	<h1>Hello World~!</h1>
	<%
	
		// java 문법 시작 --> java 주석
		// scriptlet 
		// -- 메인함수에 구현하는 느낌
		// 1+2+3+...+10
		
		int sum = 0;
		for(int i = 0; i <= 10 ; i++){
			sum += i;
		}
	%>
	
	<strong>합계: </strong>
	<input type = "text" value = "<%= sum%>">
	<br>
	<%!
	
		// 선언문
		// - 일반 클래스같은 느낌 (필드, 메소드, 정의)
		
		// field
		private int num = 100;
		
		// method
		public String getHelloWorld(){
			return "hello world!";
		}
	%>
	
	<%-- 표현식: 선언되어 있는 변수값이나, 메소드의 리턴값을 출력한다. --%>
	<%= getHelloWorld() %>
	<br>
	<%= num + 200
	%>
	
	
</body>
</html>