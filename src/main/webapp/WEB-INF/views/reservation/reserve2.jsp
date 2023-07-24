<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- meta -->
<%@ include file="/resources/in/meta.jsp"%>
<link rel="stylesheet" href="/resources/css/member/join.css">
<style>
/* 중복아이디 존재하지 않는 경우 */
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
	<!-- Header -->
	<%@ include file="/resources/in/header.jsp"%>
	<!-- /Header -->
	<div class="section-space--sm bg-primary-5p signup-section">
		<div class="container">
			<div class="row justify-content-center justify-content-xl-start">
				<div class="col-lg-10 col-xl-6">
					<div class="bg-neutral-0 rounded-4 py-8 px-6">
						<div class="d-flex align-items-start gap-2 mb-6">
							<div class="d-flex gap-3 align-items-center">
								<span class="material-symbols-outlined mat-icon"> sell </span>
								<h3 class="mb-0">120,000원</h3>
								<p class="mb-0">부터</p>
							</div>
						</div>

						<div class="tab-content mb-8">
							<div class="tab-pane fade show active" id="booking-list">
								<div
									class="d-flex bg-primary-3p gap-3 py-4 px-8 rounded-pill border border-neutral-40 mb-4">
									<span
										class="material-symbols-outlined mat-icon clr-neutral-200 fs-32 flex-shrink-0">
										calendar_month </span>
									<div class="flex-grow-1">
										<input type="text" class="form-control input1"
											name="daterange" value="" 2023/01/01 - 2123/12/31" />
									</div>
								</div>
								<div
									class="d-flex align-items-center bg-primary-3p gap-3 py-4 px-8 rounded-pill border border-neutral-40 mb-4">
									<div class="flex-grow-1">
										<p class="mb-1">성인</p>
										<p class="mb-0 fs-12 clr-neutral-400">12세+</p>
									</div>
									<div class="flex-shrink-0">
										<div class="quantity">
											<button type="button"
												class="quantity__button quantity__button-down material-symbols-outlined mat-icon clr-primary-300">
												do_not_disturb_on</button>
											<input type="text" class="quantity__value" value="0">
											<button type="button"
												class="quantity__button quantity__button-up material-symbols-outlined mat-icon clr-primary-300">
												add_circle</button>
										</div>
									</div>
								</div>
								<div
									class="d-flex align-items-center bg-primary-3p gap-3 py-4 px-8 rounded-pill border border-neutral-40">
									<div class="flex-grow-1">
										<p class="mb-1">어린이</p>
										<p class="mb-0 fs-12 clr-neutral-400">2~12세</p>
									</div>
									<div class="flex-shrink-0">
										<div class="quantity">
											<button type="button"
												class="quantity__button quantity__button-down material-symbols-outlined mat-icon clr-primary-300">
												do_not_disturb_on</button>
											<input type="text" class="quantity__value" value="0">
											<button type="button"
												class="quantity__button quantity__button-up material-symbols-outlined mat-icon clr-primary-300">
												add_circle</button>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div
							class="d-flex align-items-center justify-content-between mb-4">
							<p class="mb-0 clr-neutral-500">120,000원 x 4박</p>
							<p class="mb-0 fw-medium">480,000원</p>
						</div>
						<div class="d-flex align-items-center justify-content-between">
							<p class="mb-0 clr-neutral-500">부가세</p>
							<p class="mb-0 fw-medium">48,000원</p>
						</div>
						<div class="hr-dashed my-4"></div>
						<div
							class="d-flex align-items-center justify-content-between mb-10">
							<p class="mb-0 clr-neutral-500">총 결제 금액(VAT포함)</p>
							<p class="mb-0 fw-medium">536,000원</p>
						</div>
						<a href="#"
							class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-medium w-100 justify-content-center mb-6">
							<span class="d-inline-block"> 예약하기 </span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@ include file="/resources/in/footer.jsp"%>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
        $(document).ready(function() {
            // 유효성 검사 통과유무 변수
            var idCheck = false;        // id
            var idckCheck = false;      // id 중복검사
            var pwCheck = false;        // pw
            var pwckCheck = false;      // pw check
            var pwckcorCheck = false;   // pw check 일치 확인
            var nameCheck = false;      // 이름
            var addressCheck = false;   // address

            // id 중복검사
            $('.id_input').on("propertychange change keyup paste input", function () {
                var email = $('.id_input').val();
                var data = { email: email };

                $.ajax({
                    type: "post",
                    url: "/member/memberEmailChkPOST",
                    data: data,
                    success: function (result) {
                        if (result === 'success') { // 중복되지 않는 경우
                            $('.id_input_re_1').css("display", "inline-block");
                            $('.id_input_re_2').css("display", "none");
                            idckCheck = true;
                        } else if (result === 'fail') { // 중복되는 경우
                            $('.id_input_re_2').css("display", "inline-block");
                            $('.id_input_re_1').css("display", "none");
                            idckCheck = false;
                        } else { // 이메일을 입력하지 않은 경우
                            $('.id_input_re_1').css("display", "none");
                            $('.id_input_re_2').css("display", "none");
                            idckCheck = false;
                        }
                    }
                });
            });

            // 회원가입 버튼
            $(".join_button").click(function() {
                /* 입력값 변수 */
                var email = $('.id_input').val();    // email 입력란
                var pw = $('.pw_input').val();       // 비밀번호 입력란
                var pwck = $('.pwck_input').val();   // 비밀번호 확인 입력란
                var name = $('.user_input').val();   // 이름 입력란
                var addr = $('.address_input_1').val();  // 주소 입력란

                /* 아이디 유효성 검사 */
                if (email === "") {
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
                
                /* 주소 유효성 검사 */
                if (addr === "") {
                    $('.final_addr_ck').css('display', 'block');
                    addressCheck = false;
                } else {
                    $('.final_addr_ck').css('display', 'none');
                    addressCheck = true;
                }
                
                /* 최종 유효성 검사 */
                if (idCheck && idckCheck && pwCheck && pwckCheck && nameCheck && addressCheck) {
                    $("#join_form").attr("action", "/member/join");
                    $("#join_form").submit();
                }

                return false;
            });
        });

        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    if(data.userSelectedType === 'R') {
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }

                    document.getElementById('zipcode').value = data.zonecode;
                    document.getElementById("address1").value = addr;
                    document.getElementById("address2").focus();
                }
            }).open();
        }
    </script>
</body>
</html>
