<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- meta -->
    <%@ include file="/resources/in/meta.jsp" %>
    <link rel="stylesheet" href="/resources/css/member/join.css">   <!-- 뺼거 빼고 pdf파일 예약 페이지 참조 -->
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
    <%@ include file="/resources/in/header.jsp" %>
    <!-- /Header -->
    <div class="section-space--sm bg-primary-5p signup-section">
        <div class="container">
            <div class="row justify-content-center justify-content-xl-start">
                <div class="col-lg-10 col-xl-6">
                    <div class="bg-neutral-0 rounded-4 p-6 p-lg-8">
                        <form action="/member/join" id="join_form" method="post">
                            <h3 class="mb-4">회원가입</h3>
                            <p class="mb-10">정보를 입력해주세요.</p>
                            <div class="row g-4">
                                <div class="col-12">
                                    <div class="id_wrap">
                                        <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5 id_input" name="email" id="email" placeholder="이메일주소">
                                        <span class="id_input_re_1">사용 가능한 Email입니다.</span>
                                        <span class="id_input_re_2">Email이 이미 존재합니다.</span>
                                        <!-- <span class="final_id_ck">Email을 입력해주세요.</span> -->
                                    </div>
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" name="name" id="name" placeholder="이름">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" name="password" id="password" placeholder="비밀번호">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" name="phoneNumber" id="phoneNumber" placeholder="전화번호">
                                </div>
                            </div>
                            <br>
                            <div class="col-12" align="center">
                                <input type="submit" value="회원가입" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="/resources/in/footer.jsp" %>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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

    </script>
</body>
</html>
