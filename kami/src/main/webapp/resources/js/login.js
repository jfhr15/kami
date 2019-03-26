$(function(){
	$("#is").on('click',idSearch);
	
	function idSearch(){
		window.open("goSearchPopup","아이디 찾기","top=100,left=200,width=650,height=350,toolbar=0,status=0,scrollbars=1,resizable=0");
	}
});
