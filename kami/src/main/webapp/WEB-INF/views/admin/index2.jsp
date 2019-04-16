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

<!-- Calendar -->
<link href="./resources/fullcalendar-3.10.0/fullcalendar.css"
	rel="stylesheet" />
<link href="./resources/fullcalendar-3.10.0/fullcalendar.print.css"
	rel="stylesheet" media="print" />
<!-- 	<link rel='stylesheet'href='./resources/bootstrap/dist/css/bootstrap.min.css' /> -->

<meta name="author" content="Jake Rocheleau">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=no">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon"
	href="http://www.templatemonster.com/favicon.ico">
<link rel="icon" href="http://www.templatemonster.com/favicon.ico">

<link rel='stylesheet'
	href='./resources/bootstrap/dist/css/bootstrap.min3.css' />

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

<script src=" <c:url value = "/resources/js/demo/chart-area-demo.js"/>"></script>
<script src=" <c:url value = "/resources/js/demo/chart-pie-demo.js"/>"></script>
<script src="<c:url value = "/resources/js/demo/chart-bar-demo.js"/>"></script>
<%--  <c:url value = "/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>   --%>

<script type="text/javascript"
	src="./resources/fullcalendar-3.10.0/lib/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/swipe.js"></script>
<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript"
	src="./resources/fullcalendar-3.10.0/lib/moment.min.js"></script>
<script type="text/javascript"
	src="./resources/fullcalendar-3.10.0/fullcalendar.js" charset="UTF-8"></script>
<script type="text/javascript"
	src="./resources/fullcalendar-3.10.0/gcal.js"></script>
<script src='./resources/bootstrap/dist/js/bootstrap.min.js'></script>
<script type="text/javascript"
	src="./resources/fullcalendar-3.10.0/locale/ko.js"></script>
<script type="text/javascript" src="./resources/js/offCal.js"></script>

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
			 <li class="nav-item active">
        <a class="nav-link" href="goIndex">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="goIndex2">
          <i class="fas fa-fw fa-table"></i>
          <span>Calendar</span></a>
      </li>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<div class='bar'>
				<div class='bar1'>
					<table class='table1'>
						<tr>
							<td class='bar2'><label> <input type='checkbox'
									class='sBar1'
									onChange='scheduleChoice(0, "ko.south_korea#holiday@group.v.calendar.google.com", "usaHolidays", "#FF0000", "#FFFFFF");'
									checked /> &nbsp;공휴일
							</label></td>
							<td class='bar3'><label> <input type='checkbox'
									class='sBar2'
									onChange='scheduleChoice(0, "ko.south_korea#holiday@group.v.calendar.google.com", "usaHolidays", "#FF0000", "#FFFFFF");'
									checked /> &nbsp;미승인
							</label></td>
							<td class='bar4'><label> <input type='checkbox'
									class='sBar3'
									onChange='scheduleChoice(0, "ko.south_korea#holiday@group.v.calendar.google.com", "usaHolidays", "#FF0000", "#FFFFFF");'
									checked /> &nbsp;승인
							</label></td>
						</tr>
					</table>
				</div>
			</div>
			<div id='loading'></div>
			<div id='calendar'></div>
			<!-- Event View Modal -->
			<div class='modal fade' id='viewModal' tabindex='-1' role='dialog'
				aria-labelledby='viewModalLabel'>
				<div class='modal-dialog' role='document'>
					<div class='modal-content'>
						<div class='modal-header'>
							<button type='button' class='close' data-dismiss='modal'
								aria-label='Close'>
								<span aria-hidden='true'>&times;</span>
							</button>
							<h4 class='modal-content' id='viewModalLabel'>
								<span class='glyphicon glyphicon-calendar' aria-hidden='true'></span>
								<span id='eventDate'></span><br>
							</h4>
						</div>
						<input type='hidden' id='id' name='id'>
						<div class='modal-body' id='viewModalBody'></div>
						<div class='modal-footer'>
							<button type='button' class='btn btn-warning' id='deleteBtn'
								name='deleteBtn'>삭제</button>
							<button type='button' class='btn btn-warning' id='updateBtn'
								name='updateBtn'>수정</button>
							<button type='button' class='btn btn-default'
								data-dismiss='modal'>닫기</button>
						</div>
					</div>
				</div>
			</div>
			<!-- Event Write Modal -->
			<div class='modal fade' id='writeModal' tabindex='-1' role='dialog'
				aria-labelledby='writeModalLabel'>
				<div class='modal-dialog' role='document'>
					<div class='modal-content'>
						<div class='modal-header'></div>
						<div class='modal-body'>
							<label class='sr-only' for='content'>content</label>
							<div class='input-group' id='division'></div>
							<br>
							<div class='input-group'>
								<div class='input-group-addon' style='vertical-align: super;'>
									<span class='glyphicon glyphicon-time' aria-hidden='true'></span>
									<br>
									<div class='form-inline'>
										<label class='sr-only' for='start'>start</label>
										<div class='input-group'>
											<div class='input-group-addon'>
												<span class='glyphicon glyphicon glyphicon-calendar'
													aria-hidden='true'></span>
											</div>
											<input type='text' class='form-control' id='start'
												placeholder='start'>
										</div>
										<label class='sr-only' for='shour'>shour</label>
										<div class='input-group'>
											<select id='shour' class='form-control'>
												<option value='09' selected=''>09</option>
												<option value='10'>10</option>
												<option value='11'>11</option>
												<option value='12'>12</option>
												<option value='13'>13</option>
												<option value='14'>14</option>
												<option value='15'>15</option>
												<option value='16'>16</option>
												<option value='17'>17</option>
												<option value='18'>18</option>
												<option value='19'>19</option>
												<option value='20'>20</option>
												<option value='21'>21</option>
											</select>
										</div>
										<label class='sr-only' for='smin'>smin</label>
										<div class='input-group'>
											<select id='smin' class='form-control'>
												<option value='00'>00</option>
												<option value='15'>15</option>
												<option value='30'>30</option>
												<option value='45'>45</option>
											</select>
										</div>
									</div>
									<br>
									<div class='form-inline'>
										<label class='sr-only' for='end'>end</label>
										<div class='input-group'>
											<div class='input-group-addon'>
												<span class='glyphicon glyphicon glyphicon-calendar'
													aria-hidden='true'></span>
											</div>
											<input type='text' class='form-control' id='end'
												placeholder='end'>
										</div>
										<label class='sr-only' for='ehour'>ehour</label>
										<div class='input-group'>
											<select id='ehour' class='form-control'>
												<option value='09' selected=''>09</option>
												<option value='10'>10</option>
												<option value='11'>11</option>
												<option value='12'>12</option>
												<option value='13'>13</option>
												<option value='14'>14</option>
												<option value='15'>15</option>
												<option value='16'>16</option>
												<option value='17'>17</option>
												<option value='18'>18</option>
												<option value='19'>19</option>
												<option value='20'>20</option>
												<option value='21'>21</option>
											</select>
										</div>
										<label class='sr-only' for='emin'>emin</label>
										<div class='input-group'>
											<select id='emin' class='form-control'>
												<option value='00'>00</option>
												<option value='15'>15</option>
												<option value='30'>30</option>
												<option value='45'>45</option>
											</select>
										</div>
									</div>
									<br>
									<div class='modal-footer'>
										<button type='button' class='btn btn-warning' id='saveBtn'
											name='saveBtn'>신청</button>
										<button type='button' class='btn btn-default'
											data-dismiss='modal'>닫기</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

</body>
</html>