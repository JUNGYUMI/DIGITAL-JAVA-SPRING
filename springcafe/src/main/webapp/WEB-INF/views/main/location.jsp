<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div class="container-content">
    	<div class="box-location">
        	<h2>찾아오시는 길</h2>
    	</div>
	    <!-- * 카카오맵 - 지도퍼가기 -->
	    <!-- 1. 지도 노드 -->
	    <div id="daumRoughmapContainer1597040493060" class="root_daum_roughmap root_daum_roughmap_landing"></div>
	    <p class="p-location">충북 청주시 흥덕구 옥산면 청주역로 689 1층</p>
	    <!--
	        2. 설치 스크립트
	        * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
	    -->
	    <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
	
	    <!-- 3. 실행 스크립트 -->
	    <script charset="UTF-8">
	        new daum.roughmap.Lander({
	            "timestamp" : "1597040493060",
	            "key" : "2zm4b",
	            "mapWidth" : "700",
	            "mapHeight" : "300"
	        }).render();
		</script>
    </div>