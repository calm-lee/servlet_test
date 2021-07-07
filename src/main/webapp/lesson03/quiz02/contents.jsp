<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

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
    musicInfo.put("thumbnail", "https://image.bugsm.co.kr/album/images/500/201991/20199158.jpg");
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

<%
// 상세 정보를 보여줄 target 세팅
	Map<String, Object> target = null;

	// 1. 목록에서 클릭하는 경우 (id값)
	if(request.getParameter("id") != null){
		Integer paramId =  Integer.valueOf(request.getParameter("id"));
		for(Map<String, Object> music : musicList){
	Integer id = (Integer)(music.get("id")); 
	if(id.equals(paramId)){
		target = music;
		break;
	}
		}
	}
	
	// 2. 상단에서 검색한 경우 (search)
	if(request.getParameter("search") != null){
		String paramSearch = request.getParameter("search");
		for(Map<String, Object> music : musicList){
			String title = (String)(music.get("title"));
			if(title.equals(paramSearch)){
				target = music;
				break;
			}
		}
	}
	
%>


<section class="contets">
	<h4>곡 정보</h4>
	<div>
			<div class="singer-info d-flex border border-success">
			<div class="image">
				<img src=<%= (String)(artistInfo.get("photo")) %> width="150px" alt="IU 이미지">
			</div>
			<div class="introduce ml-3">
				<span style="font-size: 30px; font-weight: bold"><%= (String)(artistInfo.get("name")) %></span><br>
				<span style="font-size: 20px;"><%= (String)(artistInfo.get("agency")) %></span><br>
				<span style="font-size: 20px;"><%= (String)(artistInfo.get("debute")) %></span>
			</div>
	</div>

	<h4 class="mt-4">가사</h4>
	<hr>
	<div>가사정보 없음</div>
	
</section>