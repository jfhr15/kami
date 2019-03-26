<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<script src="./resources/vendor/jquery/jquery.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<script>
$(function() {
	$('#btn').on('click', act);
});

function act(){
	var is_name = $("#is_name").val();
	var is_phone = $("#is_phone").val();
	var is_email = $("#is_email").val();
	
	$.ajax({
		url: 'idSearch',
		data: {
			is_name : is_name,
			is_phone : is_phone,
			is_email : is_email
		},
		type: 'post',
		success: function(returnData){
			alert(returnData.id);
			window.close();
		}
	});
}
</script>
</head>
<body>
	<ul id="popupHeader">
		<li class="headerLi"><a class="headerA" href="#" id="idSearchPage">아이디 찾기</a></li>
		<li class="headerLi"><a class="headerA" href="#" id="pwSearchPage">비밀번호 찾기</a></li>
	</ul>
	<form id="tableForm">
		<table id="popupTable">
			<tr><td class="popup_text">이름</td>
			<td><input type="text" id="is_name" name="is_name" class="popup_input"></td></tr>
			<tr><td class="popup_text">전화번호</td>
			<td><input type="text" id="is_phone" name="is_phone" class="popup_input"></td></tr>
			<tr><td class="popup_text">이메일</td>
			<td><input type="email" id="is_email" name="is_email" class="popup_input" onkeyup="enterkey();"></td></tr>
		</table>
			<input type="button" id="btn" name="btn" value="찾기" class="popup_btn">
	</form>
	
</body>
</html>