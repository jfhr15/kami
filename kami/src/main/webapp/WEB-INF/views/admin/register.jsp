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
	<script src="./resources/vendor/jquery/jquery.js"></script>
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

  <link href="${pageContext.request.contextPath}/resources/css/signup.css" rel="stylesheet">
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
              <form action="insertEmployee" method="get" class="user">
                <div class="bolder">
                <div class="form-group">
                  	이메일<input type="email" class="form-control form-control-user" name="emp_id" id="exampleInputEmail">
                </div>
                <div class="form-group">
                  	비밀번호<input type="password" class="form-control form-control-user" name="pw">
                </div>
                <div class="form-group">
                  	비밀번호 확인<input type="password" class="form-control form-control-user" name="pw_check">
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                     이름<input type="text" class="form-control form-control-user" name="emp_name" id="exampleFirstName">
                  </div>
                  <div class="col-sm-6">
                   	생년월일<input type="date" class="form-control form-control-user" name="emp_birthdate" id="exampleLastName">
                  </div>
                </div>
                  <div class="form-group">
                  	성별<br>
                  	<table class="table1">
						<tr>
							<td>남자</td>
							<td class="td1"><input type="radio" name="emp_gender" value="m" checked="checked" class="radio1"></td>
							<td>여자</td>
							<td class="td1"><input type="radio" name="emp_gender" value="w" class="radio1"></td>
						</tr>
					</table>
                </div>
                 <div class="form-group">
                  	주소<input type="text" class="form-control form-control-user" name="emp_address">
                </div>
                 <div class="form-group">
                  	전화번호<input type="text" class="form-control form-control-user" name="emp_phone" id="phone">
                </div>
              </div>
                  <button class="btn btn-primary btn-user btn-block">회원 등록</button>
               
                <hr>
              </form>
<!--               <div class="text-center"> -->
<!--                 <a class="small" href="login.html">Already have an account? Login!</a> -->
<!--               </div> -->
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
