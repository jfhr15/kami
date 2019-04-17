<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<script src="resources/jquery-3.3.1.min.js"></script>
<!-- 	<link href="resources/css/sign.css" rel="stylesheet" /> -->

<link href="resources/styles/reset.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" media="all"
	href="resources/styles/styles.css">

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/chart.css"
	rel="stylesheet">

<link rel="shortcut icon"
	href="http://www.templatemonster.com/favicon.ico">
<link rel="icon" href="http://www.templatemonster.com/favicon.ico">

<link rel='stylesheet'
	href='./resources/bootstrap/dist/css/bootstrap.min3.css' />

<link href="resources/css/career.css" rel="stylesheet" />

<!-- Bootstrap core JavaScript-->
<script src="<c:url value = "/resources/vendor/jquery/jquery.min.js"/>"></script>
<script
	src="<c:url value = "/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

<!-- Core plugin JavaScript-->
<script src=" <c:url value = "/resources/js/sb-admin-2.min.js"/>"></script>

<!-- Custom scripts for all pages-->
<script src=" <c:url value = "/resources/js/sb-admin-2.min.js"/>"></script>

<!-- Page level plugins -->
<script
	src=" <c:url value = "/resources/vendor/chart.js/Chart.min.js"/>"></script>

<!-- Page level custom scripts -->
<script type="text/javascript"
	src="./resources/fullcalendar-3.10.0/lib/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/swipe.js"></script>
<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript" src="resources/js/career.js"></script>

<title>MyPage</title>

</head>

<body id="page-top">
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
					
					<li><a href="goProduct"><h3 class="gnbtit">Product</h3></a></li>
					<li><a href="#"><h3 class="gnbtit">Community</h3></a></li>
				</ul>
			</nav>
		</div>
	</header>

	<!--header 끝-->


	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Nav Item - Charts -->
			<li class="nav-item active"><a class="nav-link" href="goIndex">
					<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="goIndex2"> <i
					class="fas fa-fw fa-table"></i> <span>Calendar</span></a></li>

			<li class="nav-item"><a class="nav-link" href="goIndex5"> <i
					class="fas fa-fw fa-address-book"></i> <span>Career</span></a></li>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<input type="button" value="test" id="insertBtn">
			<div id="careerList">
				
			</div>
		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

</body>
</html>