<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="sub entryhide js no-touch csstransforms csstransforms3d csstransitions">
<head>
<meta charset="UTF-8">
<title>cut</title>
	<script src="resources/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	
	
	
	<link href="resources/css/sign.css" rel="stylesheet" />
	<link href="resources/css/menew.css" rel="stylesheet" />
	<link href="resources/css/style.css" rel="stylesheet" />
	
	<link href="resources/css/cut.css" rel="stylesheet" />
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
 				
 				<li><a href="goProduct"><h3 class="gnbtit">Product</h3></a></li>
				<li><a href="#"><h3 class="gnbtit">Community</h3></a></li>
			</ul>
			</nav>
		</div>
	</header>

	<!--header 끝-->
<div id="cont">
<div id="container0">
	 <div class="button-1">
    <div class="eff-1"></div>
    <a href="#"> Touch me </a>
  </div>
  <div class="button-4">
    <div class="eff-4"></div>
    <a href="#"> Touch me </a>
  </div>
  <div class="button-2">
    <div class="eff-2"></div>
    <a href="#"> Touch me </a>
  </div>
  <div class="button-3">
    <div class="eff-3"></div>
    <a href="#"> Touch me </a>
  </div>
  <div class="button-5">
    <div class="eff-5"></div>
    <a href="#"> Touch me </a>
  </div>
  <div class="button-6">
    <div class="eff-6"></div>
    <a href="#"> Touch me </a>
  </div>
  <div class="button-7">
    <div class="eff-7"></div>
    <a href="#"> Touch me </a>
  </div>
  <div class="button-8">
    <div class="eff-8"></div>
    <a href="#"> Touch me </a>
  </div>
</div>	
</div>
	<div id="container">
		<div id="contents">
			<div>
				<div id="searchList" class="nonEntry">
					<span id="searchList_title"><h2 title="CUT" class="ArticleTitle">CUT</h2></span>
					
				</div>
			</div>
			<div id="wrapper">
			<div id="columns">
				<div class="card">
					<img src="resources/img/beautiful.jpg">							
					<p>Roasted chicken breast with sage and spinach </p>
				</div>
				<div class="card">
					<img src="resources/img/beautiful2.jpg">		
					<p>Colorful Italian cuisine ingredients</p>
				</div>
				<div class="card">
					<img src="resources/img/beautiful3.jpg">				
					<p>Beef steaks </p>
				</div>
				<div class="card">
					<img src="resources/img/beautiful4.jpg">			
					<p>Beef burger takeaway</p>
				</div>	
				<div class="card">
					<img src="resources/img/beautiful5.jpg">		
					<p>Funny quail egg breakfast </p>
				</div>
				<div class="card">
					<img src="images/pic6.jpg">		
					<p>Fresh oranges</p>
				</div>
				<div class="card">
					<img src="images/pic7.jpg">				
					<p>Pumpkin soup</p>
				</div>
				<div class="card">
					<img src="images/pic8.jpg">			
					<p>Homemade chicken broth with vegetables </p>
				</div>	
			</div>
		</div>
			
			
		<!-- 하단 번호 -->
			<div id="paging">
				<a class="#" id="prevPage">이전</a>
				<span class="numbox">
					<a class="num"> <span class="selected">1</span></a>
					<a href="#" class="num"> <span>2</span></a>
					<a href="#" class="num"> <span>3</span></a>
					<a href="#" class="num"> <span>4</span></a>
					<a href="#" class="num"> <span>5</span></a>
				</span>
				<a href="#" class="" id="nextPage">다음</a>
			</div>
		</div>	
	</div>
</body>
</html>