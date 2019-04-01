<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="sub entryhide js no-touch csstransforms csstransforms3d csstransitions">
<head>
<meta charset="UTF-8">
<title>cut</title>
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
					<ol>
						<li>
							<div class="item">
								<div id="post_thumb/260?category=662142" class="post_thumb">
									<span class="thumb">
										<a class="list_url" href="/260?category=662142" style="background-image:url(https://t1.daumcdn.net/cfile/tistory/995CEA405C7738253A) !important"></a>
									</span>
								</div>
								<div class="post_thumb_content">
									<div class="list_category">Cut</div>
									<div class="list_title"><a class="ellipsis" href="/260?category=662142">aaa</a></div>
									<div class="list_article"><a href="/260?category=662142" class="article_desc">~~~설명~~~</a></div>
									<div class="list_date">남는거</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div id="post_thumb/248?category=662142" class="post_thumb">
									<span class="thumb">
										<a class="list_url" href="/248?category=662142" style="background-image:url(https://t1.daumcdn.net/cfile/tistory/99FE623C5BB586EF01) !important"></a>
									</span>
								</div>
								<div class="post_thumb_content">
									<div class="list_category">Cut</div>
									<div class="list_title"><a class="ellipsis" href="/260?category=662142">aaa</a></div>
									<div class="list_article"><a href="/260?category=662142" class="article_desc">~~~설명~~~</a></div>
									<div class="list_date">남는거</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div id="post_thumb/247?category=662142" class="post_thumb">
									<span class="thumb">
										<a class="list_url" href="/247?category=662142" style="background-image:url(https://t1.daumcdn.net/cfile/tistory/992AD4355BB5860135) !important"></a>
									</span>
								</div>
								<div class="post_thumb_content">
									<div class="list_category">Cut</div>
									<div class="list_title"><a class="ellipsis" href="/260?category=662142">aaa</a></div>
									<div class="list_article"><a href="/260?category=662142" class="article_desc">~~~설명~~~</a></div>
									<div class="list_date">남는거</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div id="post_thumb/246?category=662142" class="post_thumb">
									<span class="thumb">
										<a class="list_url" href="/246?category=662142" style="background-image:url(https://t1.daumcdn.net/cfile/tistory/996FBB3F5BB5857131) !important"></a>
									</span>
								</div>
								<div class="post_thumb_content">
									<div class="list_category">Cut</div>
									<div class="list_title"><a class="ellipsis" href="/260?category=662142">aaa</a></div>
									<div class="list_article"><a href="/260?category=662142" class="article_desc">~~~설명~~~</a></div>
									<div class="list_date">남는거</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div id="post_thumb/245?category=662142" class="post_thumb">
								<span class="thumb">
									<a class="list_url" href="/245?category=662142" style="background-image:url(https://t1.daumcdn.net/cfile/tistory/99AF6E385BB5849A2B) !important"></a>
								</span>
								</div>
									<div class="post_thumb_content">
									<div class="list_category">Cut</div>
									<div class="list_title"><a class="ellipsis" href="/260?category=662142">aaa</a></div>
									<div class="list_article"><a href="/260?category=662142" class="article_desc">~~~설명~~~</a></div>
									<div class="list_date">남는거</div>
								</div>
							</div>
						</li>
					</ol>
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