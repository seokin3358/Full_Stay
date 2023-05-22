<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/fullpage.css" />
	<link rel="stylesheet" href="css/MainStyle.css">
	<link rel="stylesheet" href="css/services.css">
	<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
	<jsp:include page="include/header.jsp" />
    	<title>개인정보 처리방침 | Full Stay 별내점</title>
    <script type="text/javascript">
    let map;
    let info;
    /* ChIJCZPhBta5fDURECie8BgEonI */
    function initMap() {
      map = new google.maps.Map(document.getElementById("map"), {
        center: { lat: 37.646193, lng: 127.125453 },
        zoom: 15,
      });
      
      info = [{label: "A", name:"Full Stay 별내점", lat: 37.646193, lng: 127.125453}];
      
      new google.maps.Marker({
    	position: { lat: 37.646193, lng: 127.125453 },
    	map: map,
    	label: "풀스테이 별내점"
      });
      }


    window.initMap = initMap;
    
    </script>
</head>
<body style="height:100%">
<div style="margin:0 20%;">
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<article id="ctt" class="ctt_privacy">
<br><br><br>
    <header style="text-align: center;">
        <h1>오시는길</h1>
        <br><br>
    </header>
    <div id="map" style="height: 600px; margin:0 10%; overflow:inherit;" >
	<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsK2CB-TMsqZrELZwj3AN-zmmvr4XId8E&callback=initMap&v=weekly"
      defer
    ></script>
    </div>
    
    <br><br>
    <article class="area">
    <div class="left">
    <h4 class="sub_tit">주소</h4>
    <p class="area_txt">경기도 남양주시 별내중앙로 34, 602-1호</p>
    </div>
    </article>
    <br>
    
    
    

 </div>
<jsp:include page="include/footer.jsp" />
</article>
</body>
</html>