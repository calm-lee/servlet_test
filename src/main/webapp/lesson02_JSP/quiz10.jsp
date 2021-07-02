<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이번달 달력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class = "container">
	<h1><b>2021-07</b></h1>
	<table class="table">
		<thaed>
			<th>
				<span class="text-danger">
				일
				</span>
			</th>
			<th>
				<span class="text-weight-bold">
				월
				</span>
			</th>
			<th>
				<span class="text-weight-bold">
				화
				</span>
			</th>
			<th>
				<span class="text-weight-bold">
				수
				</span>
			</th>
			<th>
				<span class="text-weight-bold">
				목
				</span>
			</th>
			<th>
				<span class="text-weight-bold">
				금
				</span>
			</th>			
			<th>
				<span class="text-weight-bold">
				토
				</span>
			</th>	
		</thaed>
		<tbody>
			<%
			//2021년 7월 한달의 날짜를 통째로 구해서 td에 하나씩 넣기
			Calendar cal = Calendar.getInstance();
			cal.set(Calendar.YEAR, 2021);
			cal.set(Calendar.MONTH, 6);
			
			cal.set(2021,6,1);
			
			int startDate = cal.getActualMinimum(Calendar.DATE); //시작일
			int endDate = cal.getActualMaximum(Calendar.DATE); //말일
			int startDay = cal.get(Calendar.DAY_OF_WEEK); //월의 첫요일
			int count = 0;
		
			
			int day = 1 - startDay + 1; // 마이너스부터 시작해서 1부터 출력한다.
			

			for(int i = 0; i < 6; i++){ // 행
				
				out.print("<tr class = \"display-4\">");
			
				for(int j = 0; j < 7; j++){ // 열
				
					out.print("<td>");

					if(day > endDate){
						break;
					}
					
					if(day > 0){
					out.print(day);
					}
					
					out.print("</td>");
			
					day++;
					
				}
				out.print("</tr>");
			}
		%>
		</tbody>
	</table>
	
	</div>
</body>
</html>