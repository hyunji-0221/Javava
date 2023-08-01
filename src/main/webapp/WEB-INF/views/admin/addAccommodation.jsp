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
          <form action="/admin/addAccommodation" method="POST">
          <input type="hidden" name="sellerID" value="<%= request.getParameter("sellerID")%>">
  <div class="section-space--sm bg-primary-5p">
    <div class="container">
      <div class="row justify-content-center">
          	<h1 style="text-align:center;">숙소등록</h1>
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
                            <input class="custom-radio custom-radio--primary-300" type="radio" name="type" id="hotel" value="hotel" checked>
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
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="숙소이름을 입력해주세요." name="accommodationName">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 우편번호: </p>
					<input type="text" class="form-control form-control-lg fs-16" id="zipcode" name="zipcode" placeholder="우편번호">               
                      <div class="col-12" align="center" >
                      <button type="button" onclick="execDaumPostcode()" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold mt-6"" style="margin-top:15px;">
                      <span class="d-inline-block">우편번호 찾기</span></button>
                      </div>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 주소: </p>
					<input type="text" class="form-control form-control-lg fs-16" id="address1" name="address1" placeholder="주소">               
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 상세주소: </p>
					<input type="text" class="form-control form-control-lg fs-16" id="address2" name="address2" placeholder="상세주소">
					<input type="hidden" class="form-control form-control-lg fs-16" id="sample6_extraAddress" placeholder="참고항목"> 
					<p class="mt-6 mb-4 fs-20 fw-medium"> 가격: </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="(메인에 띄울 가격입니다.)" name="price">              
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 지역 : </p>
                      <select class="form-select form-select-lg fs-16" name="region" id="region">
                        <option value="none">=== 지역선택 ===</option>
                        <option value="서울">서울</option>
                        <option value="경기">경기</option>
                        <option value="전북/전남">전북/전남</option>
                        <option value="경북/경남">경북/경남</option>
                        <option value="충북/충남">충북/충남</option>
                        <option value="부산">부산</option>
                        <option value="대구/울산">대구/울산</option>
                        <option value="광주">광주</option>
                        <option value="강원">강원</option>
                        <option value="대전">대전</option>
                        <option value="제주">제주</option>
                      </select>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 상세설명 : </p>
                      <textarea rows="5" class="form-control" placeholder="상세설명란" name="description"></textarea>
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
                      이름:<input type="text" class="form-control form-control-lg fs-16" placeholder="이름을 입력해주세요." name="room1_Name" id="room1_Name">
                      가격:<input type="text" class="form-control form-control-lg fs-16" placeholder="가격을 입력해주세요." name="room1_Price" id="room1_Price" value="0">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 객실2: (선택사항) </p>
					  이름:<input type="text" class="form-control form-control-lg fs-16" id="room2_Name" name="room2_Name" placeholder="이름을 입력해주세요.">               
					  가격:<input type="text" class="form-control form-control-lg fs-16" id="room2_Price" name="room2_Price" placeholder="가격을 입력해주세요." value="0">               
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 객실3: (선택사항) </p>
					  이름:<input type="text" class="form-control form-control-lg fs-16" id="room3_Name" name="room3_Name" placeholder="이름을 입력해주세요.">               
					  가격:<input type="text" class="form-control form-control-lg fs-16" id="room3_Price" name="room3_Price" placeholder="가격을 입력해주세요." value="0">               
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
     	<!-- <div class="section-space--sm">
            <div class="p-4 p-sm-6 p-md-10 bg-neutral-0 rounded-4">
              <div class="accordion property-accordion">
                <div class="accordion-item">
                  <h3 class="accordion-header">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#amenities-facility" aria-expanded="true"> 편의시설 </button>
                  </h3>
                  <div id="amenities-facility" class="accordion-collapse collapse show">
                    <div class="accordion-body">
                      <div class="pt-6">
                        <p class="mb-4 fs-20 fw-medium">  </p>
                        <div class="row g-4">
                          <div class="col-md-6 col-lg-3">
                            <ul class="list gap-4">
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="air-condition" name="amenities" value="air-con">
                                  <label class="clr-neutral-500" for="air-condition"> 에어컨 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="ballet-parking" name="amenities" value="ballet-parking">
                                  <label class="clr-neutral-500" for="ballet-parking"> 발렛파킹 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="dryer-check" name="amenities" value="dryer">
                                  <label class="clr-neutral-500" for="dryer-check"> 드라이기 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="gym-check" name="amenities" value="gym">
                                  <label class="clr-neutral-500" for="gym-check"> 피트니스 </label>
                                </div>
                              </li>
                            </ul>
                          </div>
                          <div class="col-md-6 col-lg-3">
                            <ul class="list gap-4">
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="no-smoking" name="amenities" value="nosmoke">
                                  <label class="clr-neutral-500" for="no-smoking"> 금연 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="client" name="amenities" value="client">
                                  <label class="clr-neutral-500" for="client"> 호텔서비스 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="chat" name="amenities" value="chat">
                                  <label class="clr-neutral-500" for="chat"> 온라인 상담 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="refrigerator-check" name="amenities" value="refrige">
                                  <label class="clr-neutral-500" for="refrigerator-check"> 냉장고 </label>
                                </div>
                              </li>
                            </ul>
                          </div>
                          <div class="col-md-6 col-lg-3">
                            <ul class="list gap-4">
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="swimming-pool" name="amenities" value="pool">
                                  <label class="clr-neutral-500" for="swimming-pool"> 수영장 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="car-parking" name="amenities" value="parking">
                                  <label class="clr-neutral-500" for="car-parking"> 주차장 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="breakfast" name="amenities" value="breakfast">
                                  <label class="clr-neutral-500" for="breakfast"> 조식 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="washer-check" name="amenities" value="washer">
                                  <label class="clr-neutral-500" for="washer-check"> 객실샤워실 </label>
                                </div>
                              </li>
                            </ul>
                          </div>
                          <div class="col-md-6 col-lg-3">
                            <ul class="list gap-4">
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="wifi-check" name="amenities" value="wifi">
                                  <label class="clr-neutral-500" for="wifi-check"> 와이파이 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="sauna-check" name="amenities" value="sauna">
                                  <label class="clr-neutral-500" for="sauna-check"> 사우나 </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="tv-cable" name="amenities" value="tv">
                                  <label class="clr-neutral-500" for="tv-cable"> TV </label>
                                </div>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div> -->
   
          <div class="py-10">
            <ul class="list gap-4">
              <li>
                <div class="d-flex align-items-center gap-3">
                  <input class="custom-checkbox custom-checkbox--rounded" type="checkbox" id="privacy-policy">
                  <label class="clr-neutral-500" for="privacy-policy"> I agree to the privacy & policy </label>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center gap-3">
                  <input class="custom-checkbox custom-checkbox--rounded" type="checkbox" id="terms-condition">
                  <label class="clr-neutral-500" for="terms-condition"> I agree with all terms & conditions </label>
                </div>
              </li>
            </ul>
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