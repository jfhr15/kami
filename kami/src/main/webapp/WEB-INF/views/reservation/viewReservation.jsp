<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록</title>
	<script src="resources/jquery-3.3.1.min.js"></script>
	<link href="resources/css/reservationList.css" rel="stylesheet" />
	
	<link rel="stylesheet" type="text/css" media="all" href="resources/styles/styles.css">
	<meta name="author" content="Jake Rocheleau">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
	<link rel="shortcut icon" href="http://www.templatemonster.com/favicon.ico">
	<link rel="icon" href="http://www.templatemonster.com/favicon.ico">
	<link href="./resources/fullcalendar-3.10.0/fullcalendar.css" rel="stylesheet" />
	<link href="./resources/fullcalendar-3.10.0/fullcalendar.print.css" rel="stylesheet" media="print" />
	<link rel='stylesheet'href='./resources/bootstrap/dist/css/bootstrap.min2.css' />
	
	<script type="text/javascript" src="resources/js/swipe.js"></script>
	<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="resources/js/main.js"></script>
    <script type="text/javascript" src="resources/js/reservationList.js"></script>
	<script type="text/javascript" src="./resources/fullcalendar-3.10.0/lib/moment.min.js"></script>
	<script type="text/javascript" src="./resources/fullcalendar-3.10.0/lib/jquery.min.js"></script>
	<script type="text/javascript" src="./resources/fullcalendar-3.10.0/fullcalendar.js" charset="UTF-8"></script>
	<script type="text/javascript" src="./resources/fullcalendar-3.10.0/gcal.js"></script>
	<script src='./resources/bootstrap/dist/js/bootstrap.min.js'></script>
	<script type="text/javascript" src="./resources/fullcalendar-3.10.0/locale/ko.js"></script>

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

	<div id="viewCal">
	<div id="loading"></div>
	<div id="calendar"></div>

	<!-- Event View Modal -->
	<div class="modal fade" id="viewModal" tabindex="-1" role="dialog"
		aria-labelledby="viewModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-content" id="viewModalLabel">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
						<span id="eventDate"></span><br>
					</h4>
				</div>
				<input type="hidden" id="id" name="id">
				<div class="modal-body" id="viewModalBody"></div>
				<div class="modal-footer">
<!-- 					<button type="button" class="btn btn-warning" id="deleteBtn" -->
<!-- 						name="deleteBtn">삭제</button> -->
<!-- 					<button type="button" class="btn btn-warning" id="updateBtn" -->
<!-- 						name="updateBtn">수정</button> -->
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>