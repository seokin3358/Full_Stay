<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 모바일에서 화면배율을 디바이스 크기 기준으로 설정 -->
<!-- 이게 안되면 pc에서의 100px과 모바일에서의 100px이 디바이스 성능에 따라 달라집니다. -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.png">
<link rel="stylesheet" href="css/CommonStyle.css">
<link rel="stylesheet" href="css/HeaderStyle.css">
<link rel="stylesheet" href="css/FooterStyle.css">
<link rel="stylesheet" href="css/madal_pop.css" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display+SC&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');
</style>
<link rel="stylesheet" href="css/cal.css">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
    />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jqery.bpopup-0.1.1.min.js"></script>
</head>
<body>
    <header class="headerBox">
        <div class="hotel_logo">
            <a href="<%=request.getContextPath() %>/index.do" class="sitename">Full Stay 별내</a>
        </div>

        <div class="menu">
            <ul>
            	<!-- 세션값으로 로그인 상태를 판단해 '헤더 메뉴' 클릭 시 로그인 or 마이 페이지 or 관리자 페이지 이동 작업 -->
            	<!-- 1> 회원/관리자 로그인 X ==> 메뉴 : 로그인/회원가입/예약확인
            	 	 2> 회원 O ==> 메뉴 : 마이페이지/로그아웃/예약확인
            	 	 3> 관리자 X ==> 메뉴 : 관리자페이지/로그아웃
            	 -->
            	<%
				// 세션값 받아오기
				String userId = (String)session.getAttribute("userId");
				String adminId = (String)session.getAttribute("adminId");
            		if(userId == null) {   // 회원 로그인 X
            			response.sendRedirect("loginForm.jsp");	
            			if(adminId == null) {	// 관리자 로그인 X
            	%> 
            				<li><a href="<%=request.getContextPath() %>/information.do">풀파티룸 소개</a></li>
                			<li><a href="<%=request.getContextPath() %>/map.do">오시는길</a></li>
                			<li><a href="https://map.naver.com/v5/entry/place/1369943741?lng=126.6225143&lat=37.6445103&placePath=%2Fhome%3Fentry=plt&c=15,0,0,0,dh">예약하기</a></li>
                			<%-- <li><a href="<%=request.getContextPath() %>/booking.do">예약하기</a></li> --%>
                <% 
            			} else {   // 관리자 로그인 O
            	%>
            				<li><a href="<%=request.getContextPath() %>/admin_login_ok.do">관리자페이지</a></li>
        		       		<li><a href="<%=request.getContextPath() %>/user_logout.do">로그아웃</a></li> 
            	<%
            			}
            		} 
                %>
                 
            </ul>                 
            
            <%System.out.println("헤더에서 userId 세션값 >>> " + (String)session.getAttribute("userId")); %>
            <%System.out.println("헤더에서 user_save 세션값 >>> " + (String)session.getAttribute("user_save")); %>
        </div>
    </header>

