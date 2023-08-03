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
    </style>
</head>
<body>
    <!-- Header -->
    <%@ include file="/resources/in/header.jsp" %>
    <!-- /Header -->
    <div class="section-space--sm bg-primary-5p">
        <div class="container">
            <div class="row justify-content-center justify-content-xl-start">
                <div class="col-lg-10 col-xl-6" style="margin:0 auto">
                    <div class="bg-neutral-0 rounded-4 p-6 p-lg-8">
                        <form action="/seller/join" id="join_form" method="post">
                            <h3 class="mb-4">사업자등록</h3>
                            <p class="mb-10">정보를 입력해주세요.</p>
                            <div class="row g-4">
                                <div class="col-12">
                                    <div class="id_wrap">
                                        <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5 id_input" name="businessNumber" id="businessNumber" placeholder="사업자등록번호">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" name="password" id="password" placeholder="비밀번호">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" name="companyName" id="companyName" placeholder="회사명">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" name="representativeName" id="representativeName" placeholder="대표자명">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" name="phoneNumber" id="phoneNumber" placeholder="전화번호">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" id="zipcode" name="zipcode" placeholder="우편번호">
                                </div>
                                <div class="col-12" align="center">
                                    <input type="button" onclick="execDaumPostcode()" class="rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0" value="우편번호 찾기">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" id="address1" name="address1" placeholder="주소">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" id="address2" name="address2" placeholder="상세주소">
                                    <input type="hidden" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" id="sample6_extraAddress" placeholder="참고항목">
                                </div>
                            </div>
                            <br>
                            <div class="col-12" align="center">
                                <input type="submit" value="사업자등록하기" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold">
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
