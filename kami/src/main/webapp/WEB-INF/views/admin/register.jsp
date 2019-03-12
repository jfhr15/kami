<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>register</title>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Register</title>

  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>
              <form action="insertEmployee" method="post" class="user">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" name="name" id="exampleFirstName" placeholder="이름 입력">
                  </div>
                  <div class="col-sm-6">
                   <input type="date" class="form-control form-control-user" name="birthDate" id="exampleLastName" placeholder="생일 입력">
                  </div>
                </div>
                 <div class="form-group">
                  <input type="text" class="form-control form-control-user" name="address"  placeholder="주소 입력">
                </div>
                 <div class="form-group">
                  <input type="text" class="form-control form-control-user" name="phone" id="phone" placeholder="전화번호 입력">
                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-user" name="employeeId" id="exampleInputEmail" placeholder="아이디입력">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-user" name="password"  placeholder="패스워드 입력">
                </div>
                  <div class="form-group">
                  	남자<input type="radio" class="form-control form-control-user" name="gender"  value="m">
                	여자<input type="radio" class="form-control form-control-user" name="gender"  value="w">
                </div>
              
                  <button class="btn btn-primary btn-user btn-block">Register Account</button>
               
                <hr>
                <a href="index.html" class="btn btn-google btn-user btn-block">
                  <i class="fab fa-google fa-fw"></i> Register with Google
                </a>
                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                  <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                </a>
              </form>
              <hr>
              <div class="text-center">
                <a class="small" href="forgot-password.html">Forgot Password?</a>
              </div>
              <div class="text-center">
                <a class="small" href="login.html">Already have an account? Login!</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
   <script src="<c:url value="/resources/js/raphael.min.js" />"></script>
	<script src="<c:url value="/resources/js/morris.min.js" />"></script>
	<script src="<c:url value="/resources/js/morris-data.js" />"></script>

  <!-- Core plugin JavaScript-->
  <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/resources/js/sb-admin-2.min.js"></script>

</body>
</html>