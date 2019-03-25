$(function(){
	$("#id").on("keyup",idcheck);//아이디 중복체크 및 글자 길이
	$("#pw").on("keyup",length);//비밀번호 길이
	$("#pw_check").on("keyup",pwcheck);//비밀번호 확인
	$("#name").on("keyup",hangl);//한글 유효성검사
	$("#email").on("keyup",echeck);//이메일 형식 확인
	$("#address").on("keyup",addresscheck);//이메일 형식 확인
	$("#phone").on("keyup",phonecheck);//이메일 형식 확인
	$("#employeeBtn").on("click", goInsertEmployee);
	$("#memberBtn").on('click', goInsertMember);
	$("#addbtn").on('click', execDaumPostcode);
	
	function goInsertEmployee(){
		addresscheck();
		phonecheck();
		
		var add1 = $("#sample6_address").val();
		var add2 = $("#sample6_detailAddress").val();
		var add3 = $("#sample6_extraAddress").val();
		var add4 = $("#sample6_postcode").val();
		$("#address").val(add1 + add2 + add3 + add4);
		
		$("#division").val(0);
		$("#user").submit();
  	}
  	
	function goInsertMember(){
		addresscheck();
		phonecheck();
		
		$("#division").val(1);
		$("#user").submit();
  	}
	
	function idcheck(){//아이디 유효성검사
		var id = $("#id").val();
		$.ajax({
			url:"idcheck",
			type:"get",
			data:{id:id},
			success:function(data1){
				if(id.length<=10 && id.length>=3){
					if(data1=="duplicated"){
						$("#duplicatemessage").html("email중복");
					}else{
						$("#duplicatemessage").html("등록가능");
						$("#duplicatemessage").css('color','green')
					}
				}else{
					$("#duplicatemessage").html("ID는 3글자이상10글자이하를 적어주세요");
				}
			}
		});
	}
	    
	function length(){//pw의 길이 유효성검사
		var pw=$("#pw").val();
		if(pw.length>16 || pw.length<8){
			$("#pwmessage1").html("8이상16이하를 적어주세요");
		}
		else{
			$("#pwmessage1").html("");
		}
	}
	
	function pwcheck(){//pw 확인
		var pw_check=$("#pw_check").val();
		var pw = $("#pw").val();
		if(pw_check != pw){
			$("#pwmessage2").html("비밀번호가 일치하지 않습니다.");
		}
		else{
			$("#pwmessage2").html("");
		}
	}
	    
	function hangl(){//한글 유효성검사
		var name=$("#name").val();
		var han=/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if(han.test(name)==false){
			$("#name_check").html("한글을 적어주세요");
			return false;
		}else{
			$("#name_check").html("");
		}
	}
	
	function echeck(){
		var email = $("#email").val();
		var e = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		if(e.test(email)==false){
			$("#email_check").html("이메일 형식에 맞게 적어주세요.");
			return false;
		} else{
			$("#email_check").html("");
		}
	}
	
	function addresscheck(){
		var address = $("#address").val();
		if(address==null){
			$("#address_check").html("주소를 입력해주세요.");
			return false;
		} else{
			$("#address_check").html("");
		}
	}
	
	function phonecheck(){
		var phone = $("#phone").val();
		if(phone==null){
			$("#phone_check").html("전화번호를 형식에 맞게 입력해주세요");
			return false;
		} else{
			$("#phone_check").html("");
		}
	}
	
	function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            	alert("!");
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open({
//        	left: 300
//        	,top: 400
//        	,popupName: '주소검색'
//        	,autoClose: false
        });
    }
//	    function btn(){    //회원가입 버튼을 누를시 널값 이메일형식 전화번호 형식의 유효성을 보여준다. 
//	    	
//	    	var id = $("#customer_id").val();
//	    	var pw = $("#customer_pw").val();
//	    	var name = $("#customer_name").val();
//	    	var address = $("#customer_address").val();
//	    	var birthdate= $("#customer_birthdate").val();
//	    	var nickname = $("#customer_nickname").val();
//	    	var phone = $("#customer_phone").val();
//	    	var gender =$('input[name="customer_gender"]:checked').val();
//
//	    	var email = $("#customer_email").val();
//	        var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;//정규식이메일 
//	        var regPhone = /^(?:(010-\d{4})|(01[1|6|7|8|9]-\d{3,4}))-(\d{4})$/;//정규식 비밀번호
//
//	      
//	        
//	    	
//	    	
//	    	if(id==""){
//	    		alert("아이디를 입력하세요");
//	    		
//	    	}else if(pw==""){
//	    		alert("비밀번호를 입력하세요");
//	    		
//	    	}else if(name==""){
//	    		alert("이름을 입력하세요");
//	    		
//	    	}else if(address==""){
//	    		alert("주소를 입력하세요");
//	    		
//	    	}else if(birthdate==""){
//	    		alert("생일을 입력하세요");
//	    		
//	    	}else if(nickname==""){
//	    		alert("닉네임을 입력하세요");
//	    		
//	    	}else if(phone==""){
//	    		alert("핸드폰을 입력하세요");
//	    	
//	    	}else if(regPhone.test(phone)==false){
//	    		alert("잘못된 핸드폰 양식입니다");
//	    		return false;
//	    			
//	    	}else if(gender==""){
//	    		alert("성별을 입력하세요");
//	    		
//	    	}else if(email==""){
//	    		alert("이메일을 입력하세요");
//	    		
//	    	}else if(regEmail.test(email)==false){
//	    		alert("잘못된 이메일 형식입니다");
//	    		return false;
//	    		
//	    	}else{
//	    		$("#signupForm").submit();
//	    		
//	    	}  
//	    	
//	    	
//	    }
});