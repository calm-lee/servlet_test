<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Post 예제</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food"); // 선택항목이 여러 개일 때 gerParmeterValues 사용
		String fruit = request.getParameter("fruit");		
	%>
	
	<table border = "1">
		<tr>
			<th>별명</th>
			<td><%=nickname%></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby%></td>
		</tr>
		<tr>
			<th>동물</th>
			<td><%=animal%></td>
		</tr>
		<tr>
			<th>음식</th>
			<td>
			<%
			if(foodArr != null){
				String result = "";
				for (String food : foodArr){
					result += food + ", ";
				}
				
				// 맨 뒤에 있는 , 제거
				result = result.substring(0, result.length()-2);
				out.print(result);
			}
			%>
			</td>
		</tr>
		<tr>
			<th>과일</th>
			<td><%=fruit%></td>
		</tr>
	</table>
</body>
</html>