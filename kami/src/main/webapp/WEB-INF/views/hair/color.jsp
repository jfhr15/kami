<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="sub entryhide js no-touch csstransforms csstransforms3d csstransitions">
<head>
<meta charset="UTF-8">
<title>color</title>
	<script src="resources/jquery-3.3.1.min.js"></script>
	<link href="resources/css/hairColor.css" rel="stylesheet" />
	<link href="resources/styles/reset.css" rel="stylesheet" /> 
	<link rel="stylesheet" type="text/css" media="all" href="resources/styles/styles.css">
	<meta name="author" content="Jake Rocheleau">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
	<link rel="shortcut icon" href="http://www.templatemonster.com/favicon.ico">
	<link rel="icon" href="http://www.templatemonster.com/favicon.ico">
	<script type="text/javascript" src="resources/js/hairColor.js"></script>
	<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="resources/js/swipe.js"></script>
	<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="resources/js/main.js"></script>
    <script type="text/javascript" src="http://malsup.github.com/jquery.cycle2.js"></script>
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
 					<c:if test="${sessionScope.empType != null}">
	 					<c:if test="${sessionScope.empType == 0}">
	 						<dd><a href="goManagement" id="loginForm">Management</a></dd>
	 					</c:if>
	 					<c:if test="${sessionScope.empType != 0}">
							<dd><a href="goIndex" id="loginForm">MyPage</a></dd>
						</c:if>
					</c:if>
				</c:if>
				<c:if test="${sessionScope.loginId == null}">
					<dd><a href="goLogin"id="loginForm">Login</a></dd>
					<dd class="signup"> <a href="goSignup" id="signForm">SignUp</a></dd>
				</c:if>
				</dl>
			</div>

 			<h1><a href="goHome" id="mainForm"><img src="resources/logo.png" alt="kamikami"/></a></h1>

 			<nav class="gnb">
 			<h2 class="blind">주메뉴</h2>
 			<ul>
				<li><a href="#"><h3 class="gnbtit">About</h3></a></li>
				<li><a href="#"><h3 class="gnbtit">Hair</h3></a>
			<ul>
				<li><a href="#">New Arrival</a>
			<ul>
				<li><a href="goCut">Cut</a></li>
				<li><a href="goPerm">Perm</a></li>
				<li><a href="goColor">Color</a></li>
			</ul>
			</li>
			</ul>
 			</li>
 				<c:choose>
 					<c:when test="${sessionScope.memType != null}">
 						<li><a href="goReservation"><h3 class="gnbtit">Reservation</h3></a></li>
 					</c:when>
 					<c:when test="${sessionScope.empType != null}">
 						<li><a href="goReservationList"><h3 class="gnbtit">Reservation</h3></a></li>
 					</c:when>
 					<c:otherwise>
 						<li><a href="goReservation"><h3 class="gnbtit">Reservation</h3></a></li>
 					</c:otherwise>
 				</c:choose>
				<li><a href="#"><h3 class="gnbtit">Community</h3></a></li>
			</ul>
			</nav>
		</div>
	</header>

	<!--header 끝-->
	
	<div id="container">
		<div id="contents">
			<div>
				<div id="searchList" class="nonEntry">
					<span id="searchList_title"><h2 title="COLOR" class="ArticleTitle">COLOR</h2></span>
				</div>
			</div>
		</div>	
		
<!-- 		<div class="slideshow-container"> -->
<!-- 			<div class="mySlides fade"> -->
<!-- 				<img class="imgOp" src="./resources/img/wella1.png"> -->
<!-- 			</div> -->
<!-- 			<div class="mySlides fade"> -->
<!-- 				<img class="imgOp" src="./resources/img/wella2.jpg"> -->
<!-- 			</div> -->
<!-- 			<div class="mySlides fade"> -->
<!-- 				<img class="imgOp" src="./resources/img/wella3_1.png"> -->
<!-- 			</div> -->
<!-- 			<a class="prev" onclick="plusSlides(-1)">&#10094;</a> -->
<!-- 			<a class="next" onclick="plusSlides(1)">&#10095;</a> -->
<!-- 			<br> -->
<!-- 			<div id="slide_footer"> -->
<!-- 				<span id="te" class="dot" onclick="currentSlide(1)"></span>  -->
<!-- 				<span class="dot" onclick="currentSlide(2)"></span>  -->
<!-- 				<span class="dot" onclick="currentSlide(3)"></span>  -->
<!-- 			</div> -->
<!-- 		</div> -->

		<div class="cycle-slideshow" data-cycle-fx="scrollHorz" data-cycle-timeout="0" data-cycle-prev="#prev" data-cycle-next="#next" data-cycle-auto-height="927:580">
			<img class="cycle-slideshowimg" src="./resources/img/wella1.png">
			<img class="cycle-slideshowimg" src="./resources/img/wella2.jpg">
			<img class="cycle-slideshowimg" src="./resources/img/wella3_1.png">
			<img class="cycle-slideshowimg" src="./resources/img/wella3_2.png">
			<img class="cycle-slideshowimg" src="./resources/img/wella4.jpg">
			<img class="cycle-slideshowimg" src="./resources/img/wella5.jpg">
			<img class="cycle-slideshowimg" src="./resources/img/wella6.jpg">
			<div class="slidebutton">
				<a href=# id="prev"><img src="resources/img/visual_btn_left.png" alt="이전 배너"></a>
				<a href=# id="next"><img src="resources/img/visual_btn_right.png" alt="다음 배너"></a>
			</div>
		</div>
	</div>
</body>
</html>