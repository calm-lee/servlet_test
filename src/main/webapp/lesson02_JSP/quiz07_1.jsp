<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
</head>
<body>
	<%
	
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() 
    {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
	%>

<div class="container d-flex justify-content-center">
<h1>검색 결과</h1>
<table border = "1">
<thead>
	<tr>
		<td>
		<b>메뉴</b>
		</td>
		<td>
		<b>상호</b>
		</td>
		<td>
		<b>별점</b>
		</td>
	</tr>
</thead>
<tbody>
<%
	String menu = request.getParameter("insertedMenu");

	String starPointFilter = request.getParameter("starPointFilter");
	// 체크하면 결과값: "true" / 체크 안하면 결과값: "null"
	
	
	for(Map<String, Object> item : list){
		if(item.get("menu").equals(menu)){ // 메뉴가 일치하는 경우
			if((starPointFilter != null) && (Double)item.get("point") < 4.0){
				continue; // 조건에 만족하는 결과 제외
			}

%>
	<tr>
		<td><%= item.get("menu")%></td>
		<td><%= item.get("name") %></td>
		<td><%= item.get("point") %></td>

	</tr>
<%
		}//if문 끝
}//for문 끝
%>

</tbody>
</table>
</div>
	
</body>
</html>