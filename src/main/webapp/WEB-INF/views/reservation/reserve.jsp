<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- meta -->
    <%@ include file="/resources/in/meta.jsp" %>
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
        
        .reserve_info{
        	margin-bottom: 30px;
        }
        
        .reserve_roomInfo{
        	font-weight : bold;
        	font-size : 20px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <%@ include file="/resources/in/header.jsp" %>
    <!-- /Header -->
    <div class="section-space--sm bg-primary-5p">
        <div class="container">
        <form action="/reservation/insert" method="post">
            <div class="row justify-content-center justify-content-xl-start">
                <div class="col-lg-10 col-xl-6" style="margin:0 auto">
					<div class=" rounded-4 p-6 p-lg-8">
						<input type="hidden" name="memberID" value="<%= session.getAttribute("memberID") %>">
							<h4 class="reserve_info">예약자 정보</h4>
							<p>예약자 이름</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
									<input type="text"
										class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5 id_input"
										name="reserveName"
										placeholder="체크인시 필요한 정보입니다.">
								</div>
							</div>
							<p>휴대폰 번호</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
									<input type="text"
										class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5 id_input"
										name="reservePhone"
										placeholder="체크인시 필요한 정보입니다.">
								</div>
							</div>
						
					</div>
				</div>
				<div class="col-lg-10 col-xl-6">
					<div class="bg-neutral-0 rounded-4 p-6 p-lg-8">
							<p>숙소 이름</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
									<p class="reserve_roomInfo">${ reserve.accommodationName }
									<input type="hidden" name="accommodationName" value="${ reserve.accommodationName }">
									</p>
								</div>
							</div>
							<p>객실 타입</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
								<p class="reserve_roomInfo">${ reserve.roomName }</p>
								</div>
							</div>
							<p>체크인</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
								<p class="reserve_roomInfo">${ reserve.checkInDate }</p>
								</div>
							</div>
							<p>체크 아웃</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
								<p class="reserve_roomInfo">${ reserve.checkOutDate }</p>
								</div>
							</div>
						<div class="hr-dashed my-4"></div>
						<div
							class="d-flex align-items-center justify-content-between mb-10">
							<p class="mb-0 clr-neutral-500">총 결제 금액(VAT포함)</p>
							<p style="color:red; font-weight:bold; font-size:25px">${ reserve.paymentAmount }</p>
						</div>
						<!-- <a href="#"
							class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-medium w-100 justify-content-center mb-6"> -->
							<input type="submit" class="d-inline-block" value="결제하기">
						<!-- </a> -->
					</div>
				</div>
            </div>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="/resources/in/footer.jsp" %>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
					$(document)
							.ready(
									function() {
										// 유효성 검사 통과유무 변수
										var idCheck = false; // id
										var idckCheck = false; // id 중복검사
										var pwCheck = false; // pw
										var pwckCheck = false; // pw check
										var pwckcorCheck = false; // pw check 일치 확인
										var nameCheck = false; // 이름
										var addressCheck = false; // address

										// id 중복검사
										$('.id_input')
												.on(
														"propertychange change keyup paste input",
														function() {
															var businessNumber = $(
																	'.id_input')
																	.val();
															var data = {
																businessNumber : businessNumber
															};

															$
																	.ajax({
																		type : "post",
																		url : "/seller/sellerNumberChkPOST",
																		data : data,
																		success : function(
																				result) {
																			if (result === 'success') { // 중복되지 않는 경우
																				$(
																						'.id_input_re_1')
																						.css(
																								"display",
																								"inline-block");
																				$(
																						'.id_input_re_2')
																						.css(
																								"display",
																								"none");
																				idckCheck = true;
																			} else if (result === 'fail') { // 중복되는 경우
																				$(
																						'.id_input_re_2')
																						.css(
																								"display",
																								"inline-block");
																				$(
																						'.id_input_re_1')
																						.css(
																								"display",
																								"none");
																				idckCheck = false;
																			} else { // 이메일을 입력하지 않은 경우
																				$(
																						'.id_input_re_1')
																						.css(
																								"display",
																								"none");
																				$(
																						'.id_input_re_2')
																						.css(
																								"display",
																								"none");
																				idckCheck = false;
																			}
																		}
																	});
														});

										// 회원가입 버튼
										$(".join_button")
												.click(
														function() {
															/* 입력값 변수 */
															var email = $(
																	'.id_input')
																	.val(); // email 입력란
															var pw = $(
																	'.pw_input')
																	.val(); // 비밀번호 입력란
															var pwck = $(
																	'.pwck_input')
																	.val(); // 비밀번호 확인 입력란
															var name = $(
																	'.user_input')
																	.val(); // 이름 입력란
															var addr = $(
																	'.address_input_1')
																	.val(); // 주소 입력란

															/* 아이디 유효성 검사 */
															if (email === "") {
																$(
																		'.final_id_ck')
																		.css(
																				'display',
																				'block');
																idCheck = false;
															} else {
																$(
																		'.final_id_ck')
																		.css(
																				'display',
																				'none');
																idCheck = true;
															}

															/* 비밀번호 유효성 검사 */
															if (pw === "") {
																$(
																		'.final_pw_ck')
																		.css(
																				'display',
																				'block');
																pwCheck = false;
															} else {
																$(
																		'.final_pw_ck')
																		.css(
																				'display',
																				'none');
																pwCheck = true;
															}

															/* 비밀번호 확인 유효성 검사 */
															if (pwck === "") {
																$(
																		'.final_pwck_ck')
																		.css(
																				'display',
																				'block');
																pwckCheck = false;
															} else {
																$(
																		'.final_pwck_ck')
																		.css(
																				'display',
																				'none');
																pwckCheck = true;
															}

															/* 이름 유효성 검사 */
															if (name === "") {
																$(
																		'.final_name_ck')
																		.css(
																				'display',
																				'block');
																nameCheck = false;
															} else {
																$(
																		'.final_name_ck')
																		.css(
																				'display',
																				'none');
																nameCheck = true;
															}

															/* 주소 유효성 검사 */
															if (addr === "") {
																$(
																		'.final_addr_ck')
																		.css(
																				'display',
																				'block');
																addressCheck = false;
															} else {
																$(
																		'.final_addr_ck')
																		.css(
																				'display',
																				'none');
																addressCheck = true;
															}

															/* 최종 유효성 검사 */
															if (idCheck
																	&& idckCheck
																	&& pwCheck
																	&& pwckCheck
																	&& nameCheck
																	&& addressCheck) {
																$("#join_form")
																		.attr(
																				"action",
																				"/member/join");
																$("#join_form")
																		.submit();
															}

															return false;
														});
									});

					function execDaumPostcode() {
						new daum.Postcode(
								{
									oncomplete : function(data) {
										var addr = ''; // 주소 변수
										var extraAddr = ''; // 참고항목 변수

										if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
											addr = data.roadAddress;
										} else { // 사용자가 지번 주소를 선택했을 경우(J)
											addr = data.jibunAddress;
										}

										if (data.userSelectedType === 'R') {
											if (data.bname !== ''
													&& /[동|로|가]$/g
															.test(data.bname)) {
												extraAddr += data.bname;
											}
											if (data.buildingName !== ''
													&& data.apartment === 'Y') {
												extraAddr += (extraAddr !== '' ? ', '
														+ data.buildingName
														: data.buildingName);
											}
											if (extraAddr !== '') {
												extraAddr = ' (' + extraAddr
														+ ')';
											}
											document
													.getElementById("sample6_extraAddress").value = extraAddr;
										} else {
											document
													.getElementById("sample6_extraAddress").value = '';
										}

										document.getElementById('zipcode').value = data.zonecode;
										document.getElementById("address1").value = addr;
										document.getElementById("address2")
												.focus();
									}
								}).open();
					}
				</script>
</body>
</html>
