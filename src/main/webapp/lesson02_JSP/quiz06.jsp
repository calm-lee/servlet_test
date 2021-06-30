<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
%>
<div class="text-center container">
	<h1>장보기 목록</h1>
		<table border = 1>
		<tr>
		<th>
			<b>번호</b>
		</th>
		</tr>
		<tbody>
			<% for(int i = 1; i <= goodsList.size(); i++){
			%>
			<tr>
				<td>
				<%
				out.print(i);
				%>
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
</table>


</div>
</body>
</html>