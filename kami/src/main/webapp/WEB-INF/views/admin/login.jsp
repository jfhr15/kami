<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>

<script src="resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<script src="./resources/js/login.js"></script>
<link href="resources/styles/reset.css" rel="stylesheet" />
<link href="resources/css/login.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" media="all"
	href="resources/styles/styles.css">
<meta name="author" content="Jake Rocheleau">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=no">
<link rel="shortcut icon"
	href="http://www.templatemonster.com/favicon.ico">
<link rel="icon" href="http://www.templatemonster.com/favicon.ico">
<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="resources/js/swipe.js"></script>
<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
</head>
<body class="bg-gradient-primary">
	<header>
		<div class="header_wrap">
			<div class="header_inner">
				<div id="skipNavi">
					<a href="#container">본문바로가기</a>
				</div>
				<dl class="topMenu">
					<dt class="blind">탑메뉴</dt>
					<c:if test="${sessionScope.loginId != null}">
						<dd>
							<a href="logout" id="loginForm">Logout</a>
						</dd>
						<c:if test="${sessionScope.empType != null}">
							<c:if test="${sessionScope.empType == 0}">
								<dd>
									<a href="goManagement" id="loginForm">Management</a>
								</dd>
							</c:if>
							<c:if test="${sessionScope.empType != 0}">
								<dd>
									<a href="goIndex" id="loginForm">MyPage</a>
								</dd>
							</c:if>
						</c:if>
					</c:if>
					<c:if test="${sessionScope.loginId == null}">
						<dd>
							<a href="goLogin" id="loginForm">Login</a>
						</dd>
						<dd class="signup">
							<a href="goSignup" id="signForm">SignUp</a>
						</dd>
					</c:if>
				</dl>
			</div>

			<h1>
				<a href="goHome" id="mainForm"><img src="resources/logo.png"
					alt="kamikami" /></a>
			</h1>

			<nav class="gnb">
				<h2 class="blind">주메뉴</h2>
				<ul>
					<li><a href="goAbout"><h3 class="gnbtit">About</h3></a></li>
					<li><a href="#"><h3 class="gnbtit">Hair</h3></a>
						<ul>
							<li><a href="#">New Arrival</a>
								<ul>
									<li><a href="goCut">Cut</a></li>
									<li><a href="goPerm">Perm</a></li>
									<li><a href="goColor">Color</a></li>
								</ul></li>
						</ul></li>
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

	<div id="cont">
		<div class="container">

			<!-- Outer Row -->
			<div class="p-5">
				<div class="text-center">
					<h1 class="h4 text-gray-900 mb-4">로그인</h1>
				</div>
				<form action="login" method="post" class="user">
					<div class="form-group">
						<input type="text" class="form-control form-control-user"
							name="id" id="exampleInputEmail" aria-describedby="emailHelp"
							placeholder="아이디">
					</div>
					<div class="form-group">
						<input type="password" class="form-control form-control-user"
							name="pw" id="exampleInputPassword" placeholder="비밀번호">
					</div>
					<div class="form-group"></div>

					<input type="submit" value="로그인"
						class="btn btn-primary btn-user btn-block">
				</form>
				<hr>
				<div id="opt" class="text-center">
					<a class="small" href="javascript:void(0);" target="_blank" id="is">아이디
						찾기</a> <span class="bar" aria-hidden="true">|</span> <a class="small"
						href="javascript:void(0);" target="_blank" id="ip">비밀번호 찾기</a> <span
						class="bar" aria-hidden="true">|</span> <a class="small"
						href="goSignUp">회원가입</a>
				</div>
				<input type="hidden" id="idPwSel">
			</div>
		</div>
	</div>
</body>
</html>