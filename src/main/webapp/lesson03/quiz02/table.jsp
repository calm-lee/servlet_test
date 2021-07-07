<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", "2008");
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://i.ytimg.com/vi/SmLtdxQqZHY/maxresdefault.jpg.jpg");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://cdnimg.melon.co.kr/cm/album/images/026/46/282/2646282_500.jpg");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>
			<div>
			<span style="font-size: 30px; font-weight: bold">곡 목록</span>
			</div>
			<div class="table text-center mt-2">
				<table class="table">
					<thead>
						<th>
						no
						</th>
						<th>
						제목
						</th>
						<th>
						앨범
						</th>
					</thead>
					<tbody>
						<tr>
							<td>
							1
							</td>
							<td>
							<a href="/lesson03/quiz02/IU_template.jsp?id=1">팔레트
							</td>
							<td>
							Pallete
							</td>
						</tr>
						<tr>
							<td>
							2
							</td>
							<td>
							<a href="/lesson03/quiz02/IU_template.jsp?id=2">좋은날
							</td>
							<td>
							Real
							</td>
						</tr>	
						<tr>
							<td>
							3
							</td>
							<td>
							<a href="/lesson03/quiz02/IU_template.jsp?id=3">밤편지
							</td>
							<td>
							Pallete
							</td>
						</tr>
						<tr>
							<td>
							4
							</td>
							<td>
							<a href="/lesson03/quiz02/IU_template.jsp?id=4">삐삐
							</td>
							<td>
							삐삐
							</td>
						</tr>	
						<tr>
							<td>
							5
							</td>
							<td>
							<a href="/lesson03/quiz02/IU_template.jsp?id=5">스물셋
							</td>
							<td>
							CHAR-SHIR
							</td>
						</tr>		
						<tr>
							<td>
							6
							</td>
							<td>
							<a href="/lesson03/quiz02/IU_template.jsp?id=6">Blueming
							</td>
							<td>
							Love poem
							</td>
						</tr>																												
					</tbody>
				</table>
			</div>