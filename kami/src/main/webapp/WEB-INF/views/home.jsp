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
	
  /* function init() {
	    	// Code here 
	    	$.ajax({
	    		type : 'POST'
	    		,url : "pickmeSelect"
	    		,success : function(resp){
	    				output(resp);
	    			}
	    		});
	    }
	
	 //출력코드
	 function output(resp) {
		 	// Code here
		 	 var cont = "";
		 	 
		 		cont += "<h3>New Arrival</h3>";
		 		cont += "<div id='best_bg'>";
		 		cont += "<ul>";
		 	$.each(resp,function(index,item){
		 		cont+="<li>";
		 		cont+="<a href='#'><img src='img/"+ item.savfile + "' alt='' /></a>";
			 	cont+="</li>";
		
		 	});
		 	 cont +="</ul>";
		 	 cont +="<p class='prev_btn'>";
		 	 cont +="<a href='#'>";
		 	 cont +="<img src='resources/img/bestbook_btn_left.png' alt='이전으로 이동' />";
		 	 cont +="</a>"
		 	 cont +="</p>"
		 	 cont +="<p class='next_btn'>";
		 	 cont +="<a href='#'>";
		 	 cont +="<img src='resources/img/bestbook_btn_right.png' alt='다음으로 이동' />";
		 	 cont +="</a>"
		 	 cont +="</p>"
		 	cont +="</div>"
		 	 
		 	$("#arrival_zone").html(cont);
		 
		 } */
 
	 
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
 				
				<li><a href="goProduct"><h3 class="gnbtit">Product</h3></a></li>
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
       
    	<c:forEach items="${picture}" var="picture">
    	 <li><a href="#"><img src="img/${picture.savfile}" alt="" /></a></li>
    	
    	</c:forEach>
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
            
	<!-- footer 시작 -->
	
 	<div class="footer">
 		<div class="inner">
 			<strong><img src="resources/logo.png" alt="kamikami"></strong>
 			<p class="address">서울 강남구 영동대로 513 삼성동 159 코엑스 4층 kamikami
 			<br>
 			대표자 : aaa &emsp;&emsp;&emsp; phone : 010-1234-5678</p>
 		</div>
 	</div>
</body>
</html>
