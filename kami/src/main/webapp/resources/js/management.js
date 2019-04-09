$(function(){
//	$("#procedureBtn").on('click',addProcedure);
	$("#colorBtn").on('click',function() {
		$("#insertColorModal").show();
	});
	$("#colorListBtn").on('click',selectColor);
	
	$("#procedureBtn").on('click',function() {
		$("#insertProcedureModal").show();
	});
	$("#procedureListBtn").on('click',selectProcedure);
	
	$("#confirmBtn").on('click',addColor);
	$("#closeBtn").on('click',function() {
		$("#insertColorModal").hide();
	});
	$("#confirmBtn2").on('click',function() {
		$("#selectColorModal").hide();
		window.location.reload();
	});
	$("#closeBtn2").on('click',function() {
		$("#selectColorModal").hide();
		window.location.reload();
	});
	
	$("#confirmBtn3").on('click',addProcedure);
	$("#closeBtn3").on('click',function() {
		$("#insertProcedureModal").hide();
	});
	$("#confirmBtn4").on('click',function() {
		$("#selectProcedureModal").hide();
		window.location.reload();
	});
	$("#closeBtn4").on('click',function() {
		$("#selectProcedureModal").hide();
		window.location.reload();
	});
});

function addColor(){
	var color = $("#color").val();
	var colorCode = $("#colorCode").val();
	
	$.ajax({
		url: "insertColor",
		data:{
			color : color,
			colorCode : colorCode
		},
		type: "post",
		success: function(){
			$("#insertColorModal").hide();
		}
	});
}

function selectColor(){
	$("#selectColorModal").show();
	$.ajax({
		url: "selectColor",
		data:{},
		type: "get",
		success: function(cList){
			var content="";
			var count = 1;
			content += "<table>";
			content += "<tr><td>번호</td><td>컬러</td><td>컬러 코드</td></tr>";
			$.each(cList,function(index, item){
				content += "<tr><td id="+item.colorseq+">"+count+"</td><td>"+item.color+"</td><td>"+item.colorCode+"</td></tr>";
				count++;
			})
			content += "</table>";
			$("#selectColorContent").html(content);
		}
	});
}

function addProcedure(){
	var pcd_name = $("#pcd_name").val();
	var pcd_time = $("#pcd_time").val();
	var pcd_price = $("#pcd_price").val();
	
	$.ajax({
		url: "insertProcedure",
		data:{
			pcd_name : pcd_name,
			pcd_time : pcd_time,
			pcd_price : pcd_price
		},
		type: "post",
		success: function(){
			$("#insertProcedureModal").hide();
		}
	});
}

function selectProcedure(){
	$("#selectProcedureModal").show();
	$.ajax({
		url: "selectProcedure",
		data:{},
		type: "get",
		success: function(pList){
			var content="";
			var count = 1;
			content += "<table>";
			content += "<tr><td>번호</td><td>시술명</td><td>소요 시간</td><td>금액</td></tr>";
			$.each(pList,function(index, item){
				content += "<tr><td id="+item.procedureseq+">"+count+"</td><td>"+item.pcd_name+"</td><td>"+item.pcd_time+"</td><td>"+item.pcd_price+"</td></tr>";
				count++;
			})
			content += "</table>";
			$("#selectProcedureContent").html(content);
		}
	});
}