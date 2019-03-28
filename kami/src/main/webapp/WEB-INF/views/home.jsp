<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	
	<script src="resources/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	<link href="resources/css/sign.css" rel="stylesheet" />
	
	<script>
	$(function() {
		$("#mainForm").on('click',ViewMain);
	});
	
	function ViewMain() {
		location.reload();
	}
	</script>
	
	<link href="resources/styles/reset.css" rel="stylesheet" /> 
	<link rel="stylesheet" type="text/css" media="all" href="resources/styles/styles.css">
	<meta name="author" content="Jake Rocheleau">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
	<link rel="shortcut icon" href="http://www.templatemonster.com/favicon.ico">
	<link rel="icon" href="http://www.templatemonster.com/favicon.ico">
	<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="resources/js/swipe.js"></script>
	<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="resources/js/main.js"></script>
</head>

<body>
	<header>
	<div class="header_wrap">
		<div class="header_inner">
			<div id="skipNavi"><a href="#container">본문바로가기</a></div>
			<dl class="topMenu">
				<dt class="blind">탑메뉴</dt>
 				<c:if test="${sessionScope.loginId != null}">
 					<dd><a href="logout"id="loginForm">Logout</a></dd>
					<dd><a href="goIndex"id="loginForm">MyPage</a></dd>
				</c:if>
				<c:if test="${sessionScope.loginId == null}">
					<dd><a href="goLogin"id="loginForm">Login</a></dd>
					<dd class="signup"> <a href="goSignup" id="signForm">SignUp</a></dd>
				</c:if>
			</dl>
		</div>

 		<h1><a href="#" id="mainForm"><img src="resources/logo.png" alt="kamikami"/></a></h1>

 <nav class="gnb">
 <h2 class="blind">주메뉴</h2>
 <ul>
 <li ><a href="#"><h3 class="gnbtit">About</h3></a></li>
 <li><a href="#"><h3 class="gnbtit">Hair</h3></a>
  <ul>
	 <li><a href="#">New Arrival</a>
		 <ul>
				<li><a href="#">Cut</a></li>
				<li><a href="#">Perm</a></li>
				<li><a href="#">Color</a></li>
		 </ul>
	 </li>
	 </ul>
 </li>
 <li><a href="goReservation"><h3 class="gnbtit">Reservation</h3></a></li>
 <li><a href="#"><h3 class="gnbtit">Community</h3></a></li>
</ul>
</nav>
</div>
</header>

<!--header 끝-->

<div id="mainView">
<!-- 배너 -->
<div id="visual">
 <div id="mySwipe"  class='swipe'>
    <ul class="touch_banner swipe-wrap"> <!-- 배너 목록 -->
      <li><a href="#"><img src="resources/img/oil-discharge.jpg" alt="" /></a></li>
      <li><a href="#"><img src="resources/img/woman4.jpg" alt="" /></a></li>
      <li><a href="#"><img src="resources/img/woman3.jpg" alt="" /></a></li>
   </ul>
  </div>
  <ul class="touch_bullet"> <!-- 배너 위치 표시 -->
     <li><img src="resources/img/visual_bullet_on.png" class="active" alt="" /></li>
     <li><img src="resources/img/visual_bullet_off.png" alt="" /></li>
     <li><img src="resources/img/visual_bullet_off.png" alt="" /></li>
  </ul>
  <p class="touch_left_btn"> <!-- 이전 버튼 -->
     <a href="#">
     <img src="resources/img/visual_btn_left.png" alt="이전 배너" />
     </a>
  </p>
  <p class="touch_right_btn"> <!-- 이전 버튼 -->
     <a href="#">
     <img src="resources/img/visual_btn_right.png" alt="다음 배너" />
     </a>
  </p>
</div>

<div id="arrival_zone">
   <h3>
      New Arrival
   </h3>
   <div id="best_bg">
      <ul>
        <li><a href="#"><img src="resources/img/beautiful.jpg" alt="" /></a></li>
        <li><a href="#"><img src="resources/img/beautiful2.jpg" alt="" /></a></li>
        <li><a href="#"><img src="resources/img/beautiful3.jpg" alt="" /></a></li>
        <li><a href="#"><img src="resources/img/beautiful4.jpg" alt="" /></a></li>
        <li><a href="#"><img src="resources/img/beautiful5.jpg" alt="" /></a></li>
        <li><a href="#"><img src="resources/img/beautiful6.jpg" alt="" /></a></li>
        <li><a href="#"><img src="resources/img/beautiful7.jpg" alt="" /></a></li>
      </ul>
      <p class="prev_btn">
         <a href="#">
         <img src="resources/img/bestbook_btn_left.png" alt="이전으로 이동" />
         </a>
      </p>
      <p class="next_btn">
         <a href="#">
         <img src="resources/img/bestbook_btn_right.png" alt="다음으로 이동" />
         </a>
         
         
         
      </p>
   </div>
 </div> <!-- close of arrival_zone -->
 
            <section class="display-section">
                    <h3>WE ARE</h3>
                <div class="container" align="center">
                    <ul class="promo-list">
                        <li>
                            <a href="">
                                <img src="resources/img/team_1.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="resources/img/team_2.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="resources/img/team_3.png" alt="">
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
            
            </div>
 
</body>
</html>
