<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>숙소 등록</title>

    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendors styles-->
    <link rel="stylesheet" href="/resources/admin/vendors/simplebar/css/simplebar.css">
    <link rel="stylesheet" href="/resources/admin/css/vendors/simplebar.css">
    <!-- Main styles for this application-->
    <link href="/resources/admin/css/style.css" rel="stylesheet">
    <!-- We use those styles to show code examples, you should remove them in your application.-->
    <link href="/resources/admin/css/examples.css" rel="stylesheet">
    <link href="/resources/admin/vendors/@coreui/chartjs/css/coreui-chartjs.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/fonts/material-icon.css">
  <%@ include file="/resources/in/meta.jsp" %>
  </head>
  <body>
    	<%@ include file="/resources/admin/in/sidebar.jsp" %>
    <div class="wrapper d-flex flex-column min-vh-100 bg-light">
      <div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="row">
          <!-- Property Form -->
          <form action="/admin/modify" method="POST">
          <input type="hidden" name="accommodationID" value="<%= request.getParameter("accommodationID")%>">
  <div class="section-space--sm bg-primary-5p">
    <div class="container">
      <div class="row justify-content-center">
          	<h1 style="text-align:center;">숙소정보 변경</h1>
        <div class="col-xl-10 col-xxl-8">
          <div class="p-4 p-sm-6 p-md-10 bg-neutral-0 rounded-4">
            <div class="accordion property-accordion">
              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#addProperty" aria-expanded="true"> 상세정보 </button>
                </h3>
                <div id="addProperty" class="accordion-collapse collapse show">
                  <div class="accordion-body">
                    <div class="pt-6">
                    <p class="mb-4 fs-20 fw-medium"> 숙소 타입 : </p>
                      <ul class="list list-row gap-6 flex-wrap">
                        <li>
                          <div class="d-flex align-items-center gap-2">
                            <input class="custom-radio custom-radio--primary-300" type="radio" name="type" id="hotel" value="hotel">
                            <label class="d-inline-block fs-18 fw-medium cursor-pointer" for="hotel"> 호텔/리조트 </label>
                          </div>
                        </li>
                        <li>
                          <div class="d-flex align-items-center gap-2">
                            <input class="custom-radio custom-radio--primary-300" type="radio" name="type" id="pension" value="pension">
                            <label class="d-inline-block fs-18 fw-medium cursor-pointer" for="pension"> 펜션 </label>
                          </div>
                        </li>
                      </ul>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 숙소이름: </p>
                      <input type="text" class="form-control form-control-lg fs-16" value="${ myAcc.accommodationName }" name="accommodationName">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 우편번호: </p>
					<input type="text" class="form-control form-control-lg fs-16" id="zipcode" name="zipcode" value="${ myAcc.zipcode }">               
                      <div class="col-12" align="center" >
                      <button type="button" onclick="execDaumPostcode()" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold mt-6"" style="margin-top:15px;">
                      <span class="d-inline-block">우편번호 찾기</span></button>
                      </div>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 주소: </p>
					<input type="text" class="form-control form-control-lg fs-16" id="address1" name="address1" value="${ myAcc.address1 }">               
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 상세주소: </p>
					<input type="text" class="form-control form-control-lg fs-16" id="address2" name="address2" value="${ myAcc.address2 }">
					<input type="hidden" class="form-control form-control-lg fs-16" id="sample6_extraAddress" placeholder="참고항목"> 
					<p class="mt-6 mb-4 fs-20 fw-medium"> 가격: </p>
                      <input type="text" class="form-control form-control-lg fs-16" value="${ myAcc.price }" name="price">              
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 지역 : </p>
                      <select class="form-select form-select-lg fs-16" name="region" id="region">
                      	<option value="${ myAcc.region }" selected>${ myAcc.region }</option>
                        <option value="서울">서울</option>
                        <option value="경기">경기</option>
                        <option value="전라">전라</option>
                        <option value="경상">경상</option>
                        <option value="충청">충청</option>
                        <option value="부산">부산</option>
                        <option value="대구/울산">대구/울산</option>
                        <option value="광주">광주</option>
                        <option value="강원">강원</option>
                        <option value="대전">대전</option>
                      </select>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 상세설명 : </p>
                      <textarea rows="5" class="form-control" placeholder="상세설명란" name="description">${ myAcc.description }</textarea>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="section-space--sm"></div>
          <div class="p-4 p-sm-6 p-md-10 bg-neutral-0 rounded-4">
            <div class="accordion property-accordion">
              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#addProperty" aria-expanded="true"> 객실정보 </button>
                </h3>
                <div id="addProperty" class="accordion-collapse collapse show">
                  <div class="accordion-body">
                    <div class="pt-6">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 객실1: </p>
                      이름:<input type="text" class="form-control form-control-lg fs-16" value="${ myAcc.room1_Name }" name="room1_Name" id="room1_Name">
                      가격:<input type="text" class="form-control form-control-lg fs-16" value="${ myAcc.room1_Price }" name="room1_Price" id="room1_Price">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 객실2: (선택사항) </p>
					  이름:<input type="text" class="form-control form-control-lg fs-16" id="room2_Name" name="room2_Name" value="${ myAcc.room2_Name }">               
					  가격:<input type="text" class="form-control form-control-lg fs-16" id="room2_Price" name="room2_Price" value="${ myAcc.room2_Price }">               
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 객실3: (선택사항) </p>
					  이름:<input type="text" class="form-control form-control-lg fs-16" id="room3_Name" name="room3_Name" value="${ myAcc.room3_Name }">               
					  가격:<input type="text" class="form-control form-control-lg fs-16" id="room3_Price" name="room3_Price" value="${ myAcc.room3_Price }">               
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
   
          <input type="submit" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold" value="숙소등록">
        </div>
      </div>
    </div>
  </div>
  </form>
  <!-- /Property Form -->
          </div>
          <!-- /.row-->
        </div>
      </div>
    </div>
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
    <!-- CoreUI and necessary plugins-->
    <script src="/resources/admin/vendors/@coreui/coreui/js/coreui.bundle.min.js"></script>
    <script src="/resources/admin/vendors/simplebar/js/simplebar.min.js"></script>
    <!-- Plugins and scripts required by this view-->
    <script src="/resources/admin/vendors/chart.js/js/chart.min.js"></script>
    <script src="/resources/admin/vendors/@coreui/chartjs/js/coreui-chartjs.js"></script>
    <script src="/resources/admin/vendors/@coreui/utils/js/coreui-utils.js"></script>
    <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
		integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
		crossorigin=""></script>
	<script src="/resources/js/plugins.js"></script>
	<script src="/resources/js/app.js"></script>

  </body>
</html>