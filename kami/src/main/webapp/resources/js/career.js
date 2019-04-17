$(function(){
	careerList();
	$("#insertBtn").on('click',insertCareer);
});

function careerList(){
	$.ajax({
		url: 'careerList',
		type: 'get',
		success: function(){
		}
	});
}

function insertCareer(){
	
}