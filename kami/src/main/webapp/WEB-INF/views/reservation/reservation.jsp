<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resevation</title>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<!-- 	<link href="resources/css/sign.css" rel="stylesheet" /> -->
	<link href="resources/css/reservation.css" rel="stylesheet" />
	
	<link href="resources/styles/reset.css" rel="stylesheet" /> 
	<link rel="stylesheet" type="text/css" media="all" href="resources/styles/styles.css">
	<meta name="author" content="Jake Rocheleau">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
	<link rel="shortcut icon" href="http://www.templatemonster.com/favicon.ico">
	<link rel="icon" href="http://www.templatemonster.com/favicon.ico">
	<link href="./resources/fullcalendar-3.10.0/fullcalendar.css" rel="stylesheet" />
	<link href="./resources/fullcalendar-3.10.0/fullcalendar.print.css" rel="stylesheet" media="print" />
	<link rel='stylesheet'href='./resources/bootstrap/dist/css/bootstrap.min.css' />
	
	<script src="resources/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="resources/js/swipe.js"></script>
	<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="resources/js/main.js"></script>
    <script type="text/javascript" src="resources/js/reservation.js"></script>
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
				<dd><a href="goLogin"id="loginForm">로그인</a></dd>
				<dd class="signup"> <a href="goSignup" id="signForm">회원가입</a></dd>
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
					<button type="button" class="btn btn-warning" id="deleteBtn"
						name="deleteBtn">삭제</button>
					<button type="button" class="btn btn-warning" id="updateBtn"
						name="updateBtn">수정</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Event Write Modal -->
	<div class="modal fade" id="writeModal" tabindex="-1" role="dialog"
		aria-labelledby="writeModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
<!-- 					<button type="button" class="close" data-dismiss="modal" -->
<!-- 						aria-label="Close"> -->
<!-- 						<span aria-hidden="true">&times;</span> -->
<!-- 					</button> -->
<!-- 					<h4 class="modal-content"></h4> -->
				</div>
				<div class="modal-body">
					<label class="sr-only" for="content">content</label>
					<div class="input-group" id="division">
<!-- 						<div class="input-group-addon"> -->
<!-- 							<span class="glyphicon glyphicon glyphicon-pencil" -->
<!-- 								aria-hidden="true"></span> -->
<!-- 						</div> -->
<!-- 						<input type="text" class="form-control" id="content" -->
<!-- 							placeholder="content" value=""> -->
					</div>
					<br>
					<div class="input-group">
						<div class="input-group-addon" style="vertical-align: super;">
							<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							<br>
							<div class="form-inline">
								<label class="sr-only" for="start">start</label>
								<div class="input-group">
									<div class="input-group-addon">
										<span class="glyphicon glyphicon glyphicon-calendar"
											aria-hidden="true"></span>
									</div>
									<input type="text" class="form-control" id="start"
										placeholder="start">
								</div>
								<label class="sr-only" for="shour">shour</label>
								<div class="input-group">
									<select id="shour" class="form-control">
										<option value="00">00
										<option value="01">01
										<option value="02">02
										<option value="03">03
										<option value="04">04
										<option value="05">05
										<option value="06">06
										<option value="07">07
										<option value="08">08
										<option value="09">09
										<option value="10">10
										<option value="11">11
										<option value="12">12
										<option value="13">13
										<option value="14">14
										<option value="15">15
										<option value="16">16
										<option value="17">17
										<option value="18">18
										<option value="19">19
										<option value="20">20
										<option value="21">21
										<option value="22">22
										<option value="23">23
									</select>
								</div>
								<label class="sr-only" for="smin">smin</label>
								<div class="input-group">
									<select id="smin" class="form-control">
										<option value="00">00
										<option value="15">15
										<option value="30">30
										<option value="45">45
									</select>
								</div>
							</div>
							<br>
							<div class="form-inline">
								<label class="sr-only" for="end">end</label>
								<div class="input-group">
									<div class="input-group-addon">
										<span class="glyphicon glyphicon glyphicon-calendar"
											aria-hidden="true"></span>
									</div>
									<input type="text" class="form-control" id="end"
										placeholder="end">
								</div>
								<label class="sr-only" for="ehour">ehour</label>
								<div class="input-group">
									<select id="ehour" class="form-control">
										<option value="00">00
										<option value="01">01
										<option value="02">02
										<option value="03">03
										<option value="04">04
										<option value="05">05
										<option value="06">06
										<option value="07">07
										<option value="08">08
										<option value="09">09
										<option value="10">10
										<option value="11">11
										<option value="12">12
										<option value="13">13
										<option value="14">14
										<option value="15">15
										<option value="16">16
										<option value="17">17
										<option value="18">18
										<option value="19">19
										<option value="20">20
										<option value="21">21
										<option value="22">22
										<option value="23">23
									</select>
								</div>
								<label class="sr-only" for="emin">emin</label>
								<div class="input-group">
									<select id="emin" class="form-control">
										<option value="00">00
										<option value="15">15
										<option value="30">30
										<option value="45">45
									</select>
								</div>
							</div>
							<br>
							<div class="modal-footer">
								<button type="button" class="btn btn-warning" id="saveBtn"
									name="saveBtn">저장</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>