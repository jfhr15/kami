<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<head>
	<script src="resources/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>

 	<script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="./resources/js/login.js"></script>
	<link href="resources/styles/reset.css" rel="stylesheet" />
	<link href="resources/css/signup.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" media="all" href="resources/styles/styles.css">
	<meta name="author" content="Jake Rocheleau">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
	<link rel="shortcut icon" href="http://www.templatemonster.com/favicon.ico">
	<link rel="icon" href="http://www.templatemonster.com/favicon.ico">
	<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="resources/js/swipe.js"></script>
	<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="resources/js/main.js"></script>
  
	<script type="text/javascript" src="./resources/js/signup.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body class="bg-gradient-primary">
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
				<li><a href="goAbout"><h3 class="gnbtit">About</h3></a></li>
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
<div id="cont">
  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
     	
          <div class="col-lg-7">
            <div class="p-5">
              <div class="center">
                <h1 class="h4 text-gray-900 mb-4">회원 가입</h1>
              </div>
              <form action="insertHuman" method="post" id="user" class="user">
                <div class="bolder">
                <table>
                	<tr>
                		<td class="td1">아이디</td><td class="td2"><input type="text" class="form-control form-control-user" name="id" id="id"></td>
                	</tr>
                </table>
                <div id="duplicatemessage" class="check"></div>
                <table>
                	<tr>
                		<td class="td1">비밀번호</td><td class="td2"><input type="password" class="form-control form-control-user" name="pw" id="pw"></td>
                	</tr>
                </table>
                <div id="pwmessage1" class="check"></div>
                <table>
                	<tr>
                		<td class="td1">비밀번호 확인</td><td class="td2"><input type="password" class="form-control form-control-user" name="pw_check" id="pw_check"></td>
                	</tr>
                </table>
                <div id="pwmessage2" class="check"></div>
                <table>
                	<tr>
                		<td class="td1">이름</td><td class="td2"><input type="text" class="form-control form-control-user" name="name" id="name"></td>
                	</tr>
                </table>
                <div id="name_check" class="col-sm-6 mb-3 mb-sm-0"></div>
                <table>
                	<tr>
                		<td class="td1">생년월일</td><td class="td2"><input type="date" class="form-control form-control-user" name="birthday" id="birthday"></td>
                	</tr>
                </table>
                <div id="birth_check" class="col-sm-6"></div>
                     성별<br>
                <table class="selectGenderTable">
					<tr>
						<td>남자</td>
						<td class="td1"><input type="radio" name="gender" value="m" checked="checked" class="radio1"></td>
						<td>여자</td>
						<td class="td1"><input type="radio" name="gender" value="w" class="radio1"></td>
					</tr>
				</table>
				<table>
                	<tr>
                		<td class="td1">이메일</td><td class="td2"><input type="email" class="form-control form-control-user" name="email" id="email"></td>
                	</tr>
                </table>
                <div id="email_check" class="check"></div>
                  	주소<input type="hidden" class="form-control form-control-user" name="address" id="address">
                	<br>
                	<table>
                		<tr><td><input type="text" class="form-control form-control-user" id="sample6_postcode" placeholder="우편번호"></td>
                		<td><button type="button" class="btn btn-primary btn-user btn-block" id="addbtn">우편번호 찾기</button><br></td></tr>
                	</table>
                	<table class="addresstable">
                		<tr><td><input type="text" class="form-control form-control-user" id="sample6_address" placeholder="주소"><br></td></tr>
                	</table>
                	<table class="addresstable">
                		<tr><td><input type="text" class="form-control form-control-user" id="sample6_detailAddress" placeholder="상세주소"></td>
                		<td><input type="text" class="form-control form-control-user" id="sample6_extraAddress" placeholder="참고항목"></td></tr>
                	</table>
                <div id="address_check" class="check"></div>
                <table>
                	<tr>
                		<td class="td1">전화번호</td><td class="td2"><input type="text" class="form-control form-control-user" name="phone" id="phone" placeholder="-를 제외하고 입력해주세요."></td>
                	</tr>
                </table>
                <div id="phone_check" class="check"></div>
              </div>
              <br>
              	<input type="hidden" id="division" name="division" value="2">
              	<table class="btnTable">
              		<tr>
              			<td class="tdtd">
                  			<button id="employeeBtn" value="0" class="btns" onclick="goInsertEmployee();">직원 등록</button>
                  		</td>
                  		<td class="tdtd">
                  			<button id="memberBtn" value="1" class="btns" onclick="goInsertMember();">회원 등록</button>
                  		</td>
                  	</tr>
               	</table>
              <hr>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
 </div>
  <!-- Core plugin JavaScript-->
  <script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	
  <!-- Custom scripts for all pages-->
  <script src="./resources/js/sb-admin-2.min.js"></script>

</body>
</html>
