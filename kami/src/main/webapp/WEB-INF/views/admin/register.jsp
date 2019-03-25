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
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>회원가입</title>
  <script type="text/javascript" src="./resources/vendor/jquery/jquery.js"></script>
  
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

  <link href="${pageContext.request.contextPath}/resources/css/signup.css" rel="stylesheet">
  
  <script type="text/javascript" src="./resources/js/signup.js"></script>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body class="bg-gradient-primary">

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
                <div class="form-group">
                  	아이디<input type="text" class="form-control form-control-user" name="id" id="id">
                </div>
                <div id="duplicatemessage" class="check"></div>
                <div class="form-group">
                  	비밀번호<input type="password" class="form-control form-control-user" name="pw" id="pw">
                </div>
                <div id="pwmessage1" class="check"></div>
                <div class="form-group">
                  	비밀번호 확인<input type="password" class="form-control form-control-user" name="pw_check" id="pw_check">
                </div>
                <div id="pwmessage2" class="check"></div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                          이름<input type="text" class="form-control form-control-user" name="name" id="name">
                  </div>
                  <div class="col-sm-6">
                   	생년월일<input type="date" class="form-control form-control-user" name="birthday" id="exampleLastName">
                  </div>
                  <div id="name_check" class="col-sm-6 mb-3 mb-sm-0"></div>
                  <div id="birth_check" class="col-sm-6"></div>
                </div>
                  <div class="form-group">
                  	성별<br>
                  	<table class="selectGenderTable">
						<tr>
							<td>남자</td>
							<td class="td1"><input type="radio" name="gender" value="m" checked="checked" class="radio1"></td>
							<td>여자</td>
							<td class="td1"><input type="radio" name="gender" value="w" class="radio1"></td>
						</tr>
					</table>
                </div>
                <div class="form-group">
                  	이메일<input type="email" class="form-control form-control-user" name="email" id="email">
                </div>
                <div id="email_check" class="check"></div>
                <div class="form-group">
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
                </div>
                
                
                
                
                
                <div id="address_check" class="check"></div>
                <div class="form-group">
                  	전화번호<input type="text" class="form-control form-control-user" name="phone" id="phone" placeholder="-를 제외하고 입력해주세요.">
                </div>
                <div id="phone_check" class="check"></div>
              </div>
              	<input type="hidden" id="division" name="division" value="2">
              	<table class="btnTable">
              		<tr>
              			<td>
                  			<button id="employeeBtn" value="0" class="btn btn-primary btn-user btn-block" onclick="goInsertEmployee();">직원 등록</button>
                  		</td>
                  		<td>
                  			<button id="memberBtn" value="1" class="btn btn-primary btn-user btn-block" onclick="goInsertMember();">회원 등록</button>
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
	<div id="test1">
		a
	</div>
  <!-- Core plugin JavaScript-->
  <script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	
  <!-- Custom scripts for all pages-->
  <script src="./resources/js/sb-admin-2.min.js"></script>

</body>
</html>
