<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 퀴즈퀴즈</title>
</head>
<body>
     <!-- 1. 1부터 n까지의 합계를 구하는 함수 -->
	<%! // 일반클래스처럼 사용하는 공간
	
	//method
	public int getSum(int n){
		int sum = 0;
		for(int i = 1; i <= n; i++){
			sum += i;
		}
		return sum;
	}
	
	%>

	
	<!-- 2. 점수들의 평균 구하기 -->
	<%
	int[] scores = {80, 90, 100, 95, 80};
	

	int sum = 0;
	for(int i = 0; i < scores.length; i++){
		sum += scores[i];
	}
	
	double avg = sum/scores.length;
	
	%>
	
	<!-- 3. 채점 결과 -->
	<%!
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	public int score(){
		int sum = 0;
		for(int i = 0; i < scoreList.size(); i++){
			if(scoreList.get(i).equals("O")){
				sum += 10;
			}
		}
		return sum;
	}
	
	%>
	
	
	<!-- 나이 구하기 -->
	<%!
	String birthDay = "20010820";
	public int getAge(){
		int now = 2021;
		String birthYear = birthDay.substring(0,4);
		int birthYear1 = Integer.valueOf(birthYear);
		int age = now - birthYear1 + 1;
		return age;
	}
	
	%>

	
	<h1>1부터 50까지의 합은	<%= getSum(50) %> 입니다. </h1>
	<h1>평균점수는	<%= avg %> 입니다. </h1>
	<h1>채점결과는	<%= score() %> 입니다. </h1>
	<h1>20010820의 나이는 <%= getAge()+"세" %> 입니다. </h1>	
	
</body>
</html>