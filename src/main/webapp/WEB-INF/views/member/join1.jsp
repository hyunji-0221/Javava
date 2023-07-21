<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<link rel="stylesheet" href="/resources/css/member/join.css">
<style>

/* 중복아이디 존재하지 않는경우 */
.id_input_re_1 {
	color: green;
	display: none;
}

/* 중복아이디 존재하는 경우 */
.id_input_re_2 {
	color: red;
	display: none;
}

.correct {
	color: green;
}

.incorrect {
	color: red;
}
</style>

</head>

<body>


<div class="wrapper">
	<form id="join_form" method="post">
	<div class="wrap">
			<div class="subjecet">
				<span>회원가입</span>
			</div>
			<div class="id_wrap">
				<div class="id_name">아이디</div>
				<div class="id_input_box">
					<input class="id_input" name="memberId">
				</div>
				<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
				<span class="final_id_ck">아이디를 입력해주세요.</span> <!-- span태그 추가 -->
			</div>
			<div class="pw_wrap">
				<div class="pw_name">비밀번호</div>
				<div class="pw_input_box">
					<input class="pw_input" name="memberPw">
				</div>
				<span class="final_pw_ck">비밀번호를 입력해주세요.</span> <!-- span태그 추가 -->
			</div>
			
			<div class="pwck_wrap">
				<div class="pwck_name">비밀번호 확인</div>
				<div class="pwck_input_box">
					<input class="pwck_input">
				</div>
				<span class="final_pwck_ck">비밀번호 확인</span> <!-- span태그 추가 -->
				<span class="pwck_input_re_1">비밀번호가 일치합니다.</span> <!-- span태그 추가 -->
				<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span> <!-- span태그 추가 -->
			</div>
			
			<div class="user_wrap">
				<div class="user_name">이름</div>
				<div class="user_input_box">
					<input class="user_input" name="memberName">
				</div>
				<span class="final_name_ck">이름을 입력해주세요.</span> <!-- span태그 추가 -->
			</div>



			<div class="mail_check_wrap">
				<div class="mail_name">이메일</div> 
				<div class="mail_input_box">
					<input class="mail_input" name="memberMail">
				</div>
				<span class="final_mail_ck">이메일을 입력해주세요.</span> <!-- span태그 추가 -->
				<span class="mail_input_box_warn"></span> <!-- span 태그 추가! -->
				<div class="mail_check_wrap">
					<div class="mail_check_input_box" id="mail_check_input_box_false">
						<input class="mail_check_input" disabled="disabled">
					</div>
					<div class="mail_check_button">
						<span>인증번호 전송</span>
					</div>
					<div class="clearfix"></div>
					<span id="mail_check_input_box_warn"></span>
				</div>
			</div>




			<div class="address_wrap">
				<div class="address_name">주소</div>
				
				<div class="address_input_1_wrap">
					<div class="address_input_1_box">
						<input class="address_input_1" name="memberAddr1" readonly="readonly">
					</div>
					<div class="address_button" onclick="execution_daum_address()">
						<span>주소 찾기</span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class ="address_input_2_wrap">
					<div class="address_input_2_box">
						<input class="address_input_2"  name="memberAddr2" readonly="readonly">
					</div>
				</div>
				<div class ="address_input_3_wrap">
					<div class="address_input_3_box">
						<input class="address_input_3"  name="memberAddr3" readonly="readonly">
					</div>
				</div>
				<span class="fonal_addr_ck">주소를 입력해주세요.</span> <!-- span태그 추가 -->
			</div>
			<div class="join_button_wrap">
				<input type="button" class="join_button" value="가입하기">
			</div>
		</div>
	</form>
</div>


<script>
$(document).ready(function() {
    // 유효성 검사 통과유무 변수
    var idCheck = false;        // id
    var idckCheck = false;      // id 중복검사
    var pwCheck = false;        // pw
    var pwckCheck = false;      // pw check
    var pwckcorCheck = false;   // pw check 일치 확인
    var nameCheck = false;      // 이름
    var mailCheck = false;      // email
    var mailnumCheck = false;   // email number check
    var addressCheck = false;   // address
    
	// 회원가입 버튼
	$(".join_button").click(function() {
		/* 입력값 변수 */
		var id = $('.id_input').val();		// id 입력란
		var pw = $('.pw_input').val();		// 비밀번호 입력란
		var pwck = $('.pwck_input').val();	// 비밀번호 확인 입력란
		var name = $('.user_input').val();	// 이름 입력란
		var mail = $('.mail_input').val();	// 이메일 입력란
		var addr = $('.address_input_1').val();	// 주소 입력란
		
		/* 아이디 유효성 검사 */
		if (id === "") {
			$('.final_id_ck').css('display', 'block');
			idCheck = false;
		} else {
			$('.final_id_ck').css('display', 'none');
			idCheck = true;
		}
		
		/* 비밀번호 유효성 검사 */
		if(pw === "") {
			$('.final_pw_ck').css('display', 'block');
			pwCheck = false;
		} else {
			$('.final_pw_ck').css('display', 'none');
			pwCheck = true;
		}
		
		/* 비밀번호 확인 유효성 검사 */
		if (pwck === "") {
			$('.final_pwck_ck').css('display','block');
			pwckCheck = false;
		} else {
			$('.final_pwck_ck').css('display','none');
			pwckCheck = true;
		}
		
		/* 이름 유효성 검사 */
		if (name === "") {
			$('.final_name_ck').css('display', 'block');
			nameCheck = false;
		} else {
			$('.final_name_ck').css('display', 'none');
			nameCheck = true;
		}
		
		/* 이메일 유효성 검사 */
		if (mail === "") {
			$('.final_mail_ck').css('display', 'block');
			mailCheck = false;
		} else {
			$('.final_mail_ck').css('display', 'none');
			mailCheck = true;
		}
		
		
		
		

		/* 이메일 형식 유효성 검사 */
		if (mailFormCheck(email)) {
			warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
			warnMsg.css('display', 'inline-block');
		} else {
			warnMsg.html("올바르지 못한 이메일 형식입니다.");
			warnMsg.css('display', 'inline-block');
			return false;
		}

		
		
		
		/* 주소 유효성 검사 */
		if (addr === "") {
			$('.final_addr_ck').css('display', 'block');
			addressCheck = false;
		} else {
			$('.final_addr_ck').css('display', 'none');
			addressCheck = true;
		}
		
		/* 최종 유효성 검사 */
		if(idCheck && idckCheck && pwCheck && pwckCheck && pwckcorCheck && nameCheck && mailCheck && mailnumCheck && addressCheck){
			$("#join_form").attr("action", "/member/join");
			$("#join_form").submit();
        }
		
		
		
		
		return false;
	});
});





var code = "";       // 이메일 전송 인증번호 저장 코드



/* 인증번호 이메일 전송 */
$(".mail_check_button").click(function(){
	
	var email = $(".mail_input").val();			// 입력한 이메일
	var cehckBox = $(".mail_check_input");		// 인증번호 입력란
	var boxWrap = $(".mail_check_input_box");	// 인증번호 입력란 박스
	var warnMsg = $(".mail_input_box_warn");	// 이메일 입력 경고글
	
	
	/* 이메일 형식 유효성 검사 */
	if (mailFormCheck(email)) {
		warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
		warnMsg.css('display', 'inline-block');
	} else {
		warnMsg.html("올바르지 못한 이메일 형식입니다.");
		warnMsg.css('display', 'inline-block');
		return false;
	}
	
	$.ajax({
		
		type:"GET",
		url:"mailCheck?email=" + email,
		success:function(data){
			
			//console.log("data : " + data);
			cehckBox.attr("disabled",false);
			boxWrap.attr("id", "mail_check_input_box_true");
			code = data;
			
		}
				
	});
	
});





/* 인증번호 비교 */
$(".mail_check_input").blur(function () {
	
	var inputCode = $(".mail_check_input").val(); // 입력코드
	var checkResult = $("#mail_check_input_box_warn"); // 비교결과
	
	if (inputCode == code) { // 일치
		checkResult.html("인증번호가 일치합니다.");
		checkResult.attr("class", "correct");
	} else { // 불일치
		checkResult.html("인증번호를 다시 확인해주세요.");
		checkResult.attr("class", "incorrect");
		
	}
	
});




	
//id 중복검사
$('.id_input').on("propertychange change keyup paste input", function () {
	
	//console.log('keyup test')
	
	var memberId = $('.id_input').val();
	var data = {memberId:memberId}
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function (result) {
			//console.log("확인 : " + result);
			
			if (result != 'fail') {
				$('.id_input_re_1').css("display", "inline-block");
				$('.id_input_re_2').css("display", "none");
				idckCheck = true;
			} else {
				$('.id_input_re_2').css("display", "inline-block");
				$('.id_input_re_1').css("display", "none");
				idckCheck = false;
			}
		}
	}); // ajax 끝
})






/* 비밀번호 확인 일치 유효성 검사 */
$('.pwck_input').on("propertychange change keyup paste input", function () {
	
	   var pw = $('.pw_input').val();
	var pwck = $('.pwck_input').val();
	$('.final_pwck_ck').css('display', 'none');
	
	
	if (pw == pwck) {
		$('.pwck_input_re_1').css('display', 'block');
		$('.pwck_input_re_2').css('display', 'none');
		pwckcorCheck = true;
	} else {
		$('.pwck_input_re_1').css('display', 'none');
		$('.pwck_input_re_2').css('display', 'block');
		pwckcorCheck = false;
	}
	
})




/* 입력 이메일 형식 유효성 검사 */
function mailFormCheck(email){
	var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	return form.test(email);
}


/* 인증번호 이메일 전송 */
$(".mail_check_button").click(function(){
	
	var email = $(".mail_input").val();			// 입력한 이메일
	var cehckBox = $(".mail_check_input");		// 인증번호 입력란
	var boxWrap = $(".mail_check_input_box");	// 인증번호 입력란 박스
	var warnMsg = $(".mail_input_box_warn");	// 이메일 입력 경고글
	
	/* 이메일 형식 유효성 검사 */
	
	$.ajax({
		
		type:"GET",
		url:"mailCheck?email=" + email,
		success:function(data){
			
			//console.log("data : " + data);
			cehckBox.attr("disabled",false);
			boxWrap.attr("id", "mail_check_input_box_true");
			code = data;
			
		}
				
	});
	
});




/* 회원가입 결과 얼럿 */
$(".join_button").click(function() {

    // 유효성 검사 통과 후 가입하기 버튼 클릭 시 joinPost 메서드 호출
    $.ajax({
        url: "/member/join",
        type: "POST",
        data: $("#join_form").serialize(),
        success: function(response) {
            // 가입 처리 성공 시에 대한 동작 구현
            alert("회원 가입이 완료되었습니다.");
            window.location.href = "/"; // 가입 완료 후 리다이렉트할 경로 설정
        },
        error: function(xhr, status, error) {
            // 가입 처리 실패 시에 대한 동작 구현
            alert("회원 가입에 실패했습니다.");
            console.log(error);
        }
    });
});




	
	
	// 다음 주소 연동
	function execution_daum_address() {
		new daum.Postcode({
			oncomplete: function(data) {
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				if (data.userSelectedType === 'R') {
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}

					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}

					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}

					addr += extraAddr;
				} else {
					addr += ' ';
				}

				$(".address_input_1").val(data.zonecode);
				$(".address_input_2").val(addr);
				$(".address_input_3").prop("readonly", false);
				$(".address_input_3").focus();
			}
		}).open();
	}
</script>






</body>
</html>