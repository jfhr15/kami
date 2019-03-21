<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	$("#insertkind").on('click', regist);
	init();
});

//상품등록
function regist(){
	var pk = $("#productkind").val();
	$.ajax({
		url : "insertproduct",
		type : "post",
		data : {pk:pk},
		success : function(data){
			init();
		}
	});
}

//전체목록출력
function init() {
	$.ajax({
		url : "selectproductlist",
		type : "post",
		success:function(data){
			output(data);
		}
	});
}

//전체목록출력-text
function output(resp) {
	var data = "";
	$.each(resp, function(index, item){
		data += "<br>"+(item.productkind);
		data += "<input type='button' data-sno='"+item.kindseq +"' value='삭제' class='deletebutton'>";
	});
	$(".kindListDiv").html(data);
	$(".deletebutton").on("click",del);
	
}

//상품종류 삭제
function del() {
	var seq = $(this).attr('data-sno');
	$.ajax({
		url : "deleteproduct",
		type : "get",
		data : {seq:seq},
		success:function(data){
			init();
		}
	});
}

</script>
</head>
<body>

<h1>상품관리</h1>


상품 종류 : <input type="text" name="productkind" id="productkind">
<input type="button" value="등록" id="insertkind">


<br><br>
상품목록
<br>
<div class="kindListDiv"></div>


</body>
</html>