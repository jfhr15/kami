<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>

    <link rel="icon" href="http://www.templatemonster.com/favicon.ico">
    <link rel="stylesheet" href="resources/cryptos-master/style.css">
</head>

<body>
<<<<<<< HEAD
    <!-- ##### Preloader ##### -->
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="top-header-content h-100 d-flex align-items-center justify-content-between">
                            <!-- Top Headline -->
                            <div class="top-headline">
                                <p>Welcome to <span>Kamikami</span></p>
                            </div>
                            <div class="login-faq-earn-money">
                	            <c:if test="${sessionScope.loginId != null}">
 									<a href="logout">Logout</a>
 									<c:if test="${sessionScope.empType != null}">
	 									<c:if test="${sessionScope.empType == 0}">
	 										<a href="goManagement">Management</a>
	 									</c:if>
	 									<c:if test="${sessionScope.empType != 0}">
											<a href="goIndex">MyPage</a>
										</c:if>
									</c:if>
								</c:if>
								<c:if test="${sessionScope.loginId == null}">
                              		<a href="goLogin">Login</a>
                               		<a href="goSignup">Register</a>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="cryptos-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="cryptosNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="goHome"><img src="resources/cryptos-master/img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="goHome">Home</a></li>
                                    <li><a href="#">Hair</a>
                                        <ul class="dropdown">
                                            <li><a href="goCut">Cut</a></li>
                                            <li><a href="goPerm">Perm</a></li>
                                            <li><a href="goColor">Color</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="goProduct">Product</a></li>
                                    <c:choose>
					 					<c:when test="${sessionScope.memType != null}">
					 						<li><a href="goReservation">Reservation</a></li>
					 					</c:when>
					 					<c:when test="${sessionScope.empType != null}">
					 						<li><a href="goReservationList">Reservation</a></li>
					 					</c:when>
					 					<c:otherwise>
					 						<li><a href="goReservation">Reservation</a></li>
					 					</c:otherwise>
					 				</c:choose>
                                    <li><a href="goBoard">Community</a></li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
<!--     <section class="hero-area"> -->
<!--         <div class="hero-slides owl-carousel"> -->
<!--             Single Hero Slide -->
<!--             <div class="single-hero-slide"> -->
<!--                 <div class="container h-100"> -->
<!--                     <div class="row h-100 align-items-center"> -->
<!-- 						<img src="resources/img/oil-discharge.jpg" alt=""> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->

<!--             <div class="single-hero-slide"> -->
<!--                 <div class="container h-100"> -->
<!--                     <div class="row h-100 align-items-center"> -->
<!-- 						<img src="resources/img/woman4.jpg" alt=""> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </section> -->
<!--     ##### Hero Area End ##### -->
	<div class="megamenu-slides owl-carousel">
		<img src="resources/img/oil-discharge.jpg" alt="">
		<img src="resources/img/woman4.jpg" alt="">
		<img src="resources/img/woman3.jpg" alt="">
	</div>
    <!-- ##### Course Area Start ##### -->
    <div class="cryptos-feature-area section-padding-100-0">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto">
                        <h3>New Arrival</h3>
                    </div>
                </div>
=======
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
>>>>>>> 74798aeff7125aceaec33042f6b187d4ef0fd2d9
            </div>
            
            <div class="row">
                <!-- Single Course Area -->
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="single-feature-area mb-100 text-center">
                        <i class="icon-safebox"></i>
                        <h3>Fast &amp; Easy</h3>
                        <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget nisl. Cras vitae turpis lacinia, lacinia lacus non, fermentum.</p>
                        <a href="#" class="btn cryptos-btn">Read More</a>
                    </div>
                </div>

                <!-- Single Course Area -->
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="single-feature-area active mb-100 text-center">
                        <i class="icon-bitcoin"></i>
                        <h3>No strigs attached</h3>
                        <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget nisl. Cras vitae turpis lacinia, lacinia lacus non, fermentum.</p>
                        <a href="#" class="btn cryptos-btn">Read More</a>
                    </div>
                </div>

                <!-- Single Course Area -->
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="single-feature-area mb-100 text-center">
                        <i class="icon-exchange"></i>
                        <h3>Small Commisions</h3>
                        <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget nisl. Cras vitae turpis lacinia, lacinia lacus non, fermentum.</p>
                        <a href="#" class="btn cryptos-btn">Read More</a>
                    </div>
                </div>

                <!-- Single Course Area -->
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="single-feature-area mb-100 text-center">
                        <i class="icon-wallet"></i>
                        <h3>10% Secure</h3>
                        <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget nisl. Cras vitae turpis lacinia, lacinia lacus non, fermentum.</p>
                        <a href="#" class="btn cryptos-btn">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Course Area End ##### -->

    <!-- ##### About Area Start ##### -->
    <section class="cryptos-about-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                    <div class="about-thumbnail mb-100">
                        <img src="resources/cryptos-master/img/bg-img/about.png" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="about-content mb-100">
                        <div class="section-heading">
                            <h3>Let’s change <br><span>the world</span> together</h3>
                            <h5>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget nisl.</h5>
                            <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget nisl. Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi.</p>
                            <a href="#" class="btn cryptos-btn mt-30">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### About Area End ##### -->

    <!-- ##### Currency Area Start ##### -->
    <section class="currency-calculator-area section-padding-100 bg-img bg-overlay" style="background-image: url(resources/cryptos-master/img/bg-img/bg-2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center white mx-auto">
                        <h3 class="mb-4">Cryptocurrency Calculator</h3>
                        <h5 class="mb-2">Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget nisl.</h5>
                        <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget nisl. Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="currency-calculator mb-15 clearfix">
                        <form action="#" method="post" class="d-flex align-items-center justify-content-center">
                            <!-- Calculator Part -->
                            <div class="calculator-first-part d-flex align-items-center">
                                <input type="text" name="inputNumber" placeholder="1">
                                <select>
                                    <option>BTC</option>
                                    <option>USD</option>
                                    <option>INR</option>
                                    <option>BDT</option>
                                </select>
                            </div>

                            <!-- Equal Sign -->
                            <div class="equal-sign">=</div>

                            <!-- Calculator Part -->
                            <div class="calculator-sec-part d-flex align-items-center">
                                <input type="text" name="inputNumber" placeholder="940045">
                                <select>
                                    <option>EUR</option>
                                    <option>USD</option>
                                    <option>INR</option>
                                    <option>BDT</option>
                                </select>
                            </div>
                        </form>
                    </div>

                    <div class="currency-calculator mb-15">
                        <form action="#" method="post" class="d-flex align-items-center justify-content-center">
                            <!-- Calculator Part -->
                            <div class="calculator-first-part d-flex align-items-center">
                                <input type="text" name="inputNumber" placeholder="10400">
                                <select>
                                    <option>USD</option>
                                    <option>BTC</option>
                                    <option>INR</option>
                                    <option>BDT</option>
                                </select>
                            </div>

                            <!-- Equal Sign -->
                            <div class="equal-sign">=</div>

                            <!-- Calculator Part -->
                            <div class="calculator-sec-part d-flex align-items-center">
                                <input type="text" name="inputNumber" placeholder="1.02">
                                <select>
                                    <option>BTC</option>
                                    <option>USD</option>
                                    <option>INR</option>
                                    <option>BDT</option>
                                </select>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Currency Area End ##### -->

    <!-- ##### Blog Area Start ##### -->
    <section class="cryptos-blog-area section-padding-100">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-7">
                    <div class="blog-area">
                        <!-- Single Blog Area -->
                        <div class="single-blog-area d-flex align-items-start">
                            <!-- Thumbnail -->
                            <div class="blog-thumbnail">
                                <img src="resources/cryptos-master/img/blog-img/1.jpg" alt="">
                            </div>
                            <!-- Content -->
                            <div class="blog-content">
                                <a href="#" class="post-title">This Platform Aims to Disrupt the Market</a>
                                <div class="meta-data">
                                    <a href="#">Crypto News</a> |
                                    <a href="#">March 18, 2018</a>
                                </div>
                                <p>Morbi vel arcu gravida, iaculis lacus vel, posuere ipsum. Sed faucibus mauris vitae urna consectetur, sit amet maximus nisl sagittis.</p>
                            </div>
                        </div>
                        <!-- Single Blog Area -->
                        <div class="single-blog-area d-flex align-items-start">
                            <!-- Thumbnail -->
                            <div class="blog-thumbnail">
                                <img src="resources/cryptos-master/img/blog-img/2.jpg" alt="">
                            </div>
                            <!-- Content -->
                            <div class="blog-content">
                                <a href="#" class="post-title">New Hedge Funds invests in Crypto</a>
                                <div class="meta-data">
                                    <a href="#">Crypto News</a> |
                                    <a href="#">March 18, 2018</a>
                                </div>
                                <p>Iaculis lacus vel, posuere ipsum. Sed faucibus mauris vitae urna consectetur, sit amet maximus nisl sagittis. Ut in iaculis enim.</p>
                            </div>
                        </div>
                        <!-- Single Blog Area -->
                        <div class="single-blog-area d-flex align-items-start">
                            <!-- Thumbnail -->
                            <div class="blog-thumbnail">
                                <img src="resources/cryptos-master/img/blog-img/3.jpg" alt="">
                            </div>
                            <!-- Content -->
                            <div class="blog-content">
                                <a href="#" class="post-title">This Platform Aims to Disrupt the Market</a>
                                <div class="meta-data">
                                    <a href="#">Crypto News</a> |
                                    <a href="#">March 18, 2018</a>
                                </div>
                                <p>Morbi vel arcu gravida, iaculis lacus vel, posuere ipsum. Sed faucibus mauris vitae urna consectetur, sit amet maximus nisl sagittis.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-5">
                    <div class="cryptos-prices-table">

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>01</span>
                                <img src="resources/cryptos-master/img/bg-img/bitcoin.png" alt="">
                                <p>Bitcoin <span>BTC</span></p>
                            </div>
                            <div class="price increase">
                                <p>$12 456.78</p>
                            </div>
                        </div>

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>02</span>
                                <img src="resources/cryptos-master/img/bg-img/ethereum.png" alt="">
                                <p>Ethereum <span>ETH</span></p>
                            </div>
                            <div class="price increase">
                                <p>$1051.98</p>
                            </div>
                        </div>

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>03</span>
                                <img src="resources/cryptos-master/img/bg-img/bitcoin-cash.png" alt="">
                                <p>Bitcoin Cash <span>BCH</span></p>
                            </div>
                            <div class="price decrease">
                                <p>$2256.78</p>
                            </div>
                        </div>

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>04</span>
                                <img src="resources/cryptos-master/img/bg-img/ripple.png" alt="">
                                <p>Ripple <span>XRP</span></p>
                            </div>
                            <div class="price increase">
                                <p>$2.03</p>
                            </div>
                        </div>

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>05</span>
                                <img src="resources/cryptos-master/img/bg-img/litecoin.png" alt="">
                                <p>Litecoin <span>LTC</span></p>
                            </div>
                            <div class="price increase">
                                <p>$321.98</p>
                            </div>
                        </div>

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>06</span>
                                <img src="resources/cryptos-master/img/bg-img/cardano.png" alt="">
                                <p>Cardano <span>ADA</span></p>
                            </div>
                            <div class="price increase">
                                <p>$0.75</p>
                            </div>
                        </div>

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>07</span>
                                <img src="resources/cryptos-master/img/bg-img/nem.png" alt="">
                                <p>NEM <span>XEM</span></p>
                            </div>
                            <div class="price increase">
                                <p>$0.89</p>
                            </div>
                        </div>

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>08</span>
                                <img src="resources/cryptos-master/img/bg-img/neo.png" alt="">
                                <p>NEO <span>NEO</span></p>
                            </div>
                            <div class="price decrease">
                                <p>$123.90</p>
                            </div>
                        </div>

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>09</span>
                                <img src="resources/cryptos-master/img/bg-img/stellar.png" alt="">
                                <p>Stellar <span>XLM</span></p>
                            </div>
                            <div class="price increase">
                                <p>$0.67</p>
                            </div>
                        </div>

                        <!-- Single Price Table -->
                        <div class="single-price-table d-flex align-items-center justify-content-between">
                            <div class="p-content d-flex align-items-center">
                                <span>10</span>
                                <img src="resources/cryptos-master/img/bg-img/iota.png" alt="">
                                <p>IOTA <span>IOT</span></p>
                            </div>
                            <div class="price increase">
                                <p>$3.55</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        
        <!-- Newsletter Area -->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="newsletter-area mt-100">
                        <div class="section-heading text-center mx-auto">
                            <h3>Subscribe to <span>Newsletter</span></h3>
                            <h6>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget nisl.</h6>
                        </div>
                        <form action="#" method="post">
                            <input type="email" name="email" placeholder="Subscribe to newsletter">
                            <button type="submit">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Blog Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <!-- Main Footer Area -->
        <div class="main-footer-area section-padding-100-0 bg-img bg-overlay" style="background-image: url(resources/cryptos-master/img/bg-img/bg-1.jpg);">
            <div class="container">
                <div class="row">

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <a href="#"><img src="resources/cryptos-master/img/core-img/logo2.png" alt=""></a>
                            </div>
                            <p>Morbi vel arcu gravida, iaculis lacus vel, posuere ipsum. Sed faucibus mauris vitae urna consectetur, sit amet maximus nisl sagittis. Ut in iaculis enim, et pulvinar mauris. Etiam tristique magna eget velit consectetur, a tincidunt velit dictum.</p>
                            <div class="footer-social-info">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-dribbble"></i></a>
                                <a href="#"><i class="fa fa-behance"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <h6>Recent Posts</h6>
                            </div>
                            <!-- Single Blog Post -->
                            <div class="single--blog-post">
                                <a href="#">
                                    <p>Aliquam ac eleifend metus</p>
                                </a>
                                <span>March 10, 2018</span>
                            </div>
                            <!-- Single Blog Post -->
                            <div class="single--blog-post">
                                <a href="#">
                                    <p>Donec in libero sit amet mi vulputate</p>
                                </a>
                                <span>March 10, 2018</span>
                            </div>
                            <!-- Single Blog Post -->
                            <div class="single--blog-post">
                                <a href="#">
                                    <p>Aliquam ac eleifend metus</p>
                                </a>
                                <span>March 10, 2018</span>
                            </div>
                        </div>
                    </div>

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <h6>Quick Links</h6>
                            </div>
                            <nav>
                                <ul class="useful-links d-flex justify-content-between flex-wrap">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Faq</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">Terms &amp; Conditions</a></li>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Careers</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Newsletter &amp; Exchange</a></li>
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">Exchange</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Footer Area -->
        <div class="bottom-footer-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center">
                    <div class="col-12">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <script src="resources/cryptos-master/js/jquery/jquery-2.2.4.min.js"></script>
    <script src="resources/cryptos-master/js/bootstrap/popper.min.js"></script>
    <script src="resources/cryptos-master/js/bootstrap/bootstrap.min.js"></script>
    <script src="resources/cryptos-master/js/plugins/plugins.js"></script>
    <script src="resources/cryptos-master/js/active.js"></script>
</body>

</html>
