<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <%@ include file="/resources/in/meta.jsp" %>
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/moment.min.js"></script>
<script type="text/javascript" src="/resources/js/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/daterangepicker.css" />
  
</head>



<style>
input.input1 {
    padding: 13px 0px !important; 
    border: 0px solid #f9f9fe !important;
    border-radius: 10px;
    box-sizing: border-box;
    background-color: #f9f9fe !important;
    color: #3538ed !important;
    font-size: 15px !important;
    letter-spacing: 1px;
}
</style>




<body>
<script>
	$(function() {
	  $('input[name="daterange"]').daterangepicker({
	    opens: 'left'
	  }, 
	  
	  function(start, end, label) {
	    console.log("새로운 날짜가 선택되었습니다.: " + start.format('YYYY-MM-DD') + ' ~ ' + end.format('YYYY-MM-DD'));
	  });
	});
	</script>
	
<%@ include file="/resources/in/header.jsp" %>
  
  <!-- 내용 -->
  
  <!-- Property Gallery  -->
  <div class="container-fluid p-0">
    <div class="row g-0">
      <div class="col-12">
        <div class="swiper property-gallery-slider">
          <div class="swiper-wrapper property-gallery-slider">
            <div class="swiper-slide">
              <a href="/resources/img/property-gallery-slider-1.jpg" class="link property-gallery">
                <img src="/resources/img/product_img1.jpg" alt="image" class="img-fluid">
              </a>
            </div>
            <div class="swiper-slide">
              <a href="/resources/img/property-gallery-slider-2.jpg" class="link property-gallery">
                <img src="/resources/img/product_img2.jpg" alt="image" class="img-fluid">
              </a>
            </div>
            <div class="swiper-slide">
              <a href="/resources/img/property-gallery-slider-3.jpg" class="link property-gallery">
                <img src="/resources/img/product_img3.jpg" alt="image" class="img-fluid">
              </a>
            </div>
            <div class="swiper-slide">
              <a href="/resources/img/property-gallery-slider-4.jpg" class="link property-gallery">
                <img src="/resources/img/product_img4.jpg" alt="image" class="img-fluid">
              </a>
            </div>
          </div>
          <div class="swiper-button-prev property-gallery-slider__btn property-gallery-slider__btn-prev">
          </div>
          <div class="swiper-button-next property-gallery-slider__btn property-gallery-slider__btn-next">
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /Property Gallery  -->
  <!-- Property Details Body -->
  <div class="bg-primary-5p">
    <div class="container">
      <div class="row">
        <div class="col-xl-8">
          <div class="section-space--sm">
            <div class="p-6 bg-neutral-0 rounded-4 mb-10">
              <div class="d-flex align-items-center justify-content-between flex-wrap gap-3">
                <div class="py-3 px-6 bg-primary-50 rounded-pill">
                  <h5 class="clr-primary-300 d-inline-block mb-0"> 3성급 </h5>
                </div>
                <ul class="list list-row gap-3 align-items-center">
                  <li>
                    <a href="#" class="link w-8 h-8 d-grid place-content-center bg-primary-50 clr-primary-300 rounded-circle :bg-primary-300 :clr-neutral-0">
                      <span class="material-symbols-outlined mat-icon fs-20"> favorite </span>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="link w-8 h-8 d-grid place-content-center bg-primary-50 clr-primary-300 rounded-circle :bg-primary-300 :clr-neutral-0">
                      <span class="material-symbols-outlined mat-icon fs-20"> compare_arrows </span>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="link w-8 h-8 d-grid place-content-center bg-primary-50 clr-primary-300 rounded-circle :bg-primary-300 :clr-neutral-0">
                      <span class="material-symbols-outlined mat-icon fs-20"> Share </span>
                    </a>
                  </li>
                </ul>
              </div>
              <h2 class="mt-4 mb-8"> 로이넷 호텔 </h2>
              <ul class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
                <li>
                  <div class="d-flex align-items-center gap-2">
                    <span class="material-symbols-outlined mat-icon clr-secondary-400"> distance </span>
                    <p class="mb-0">마포대로 67, 마포, 서울, 대한민국, 04157</p>
                  </div>
                </li>
               
                <li>
                  <div class="d-flex align-items-center gap-1">
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                    <p class="mb-0"> 4.0(21) </p>
                  </div>
                </li>
                
              </ul>
              <div class="hr-dashed my-8"></div>
              <ul class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
                <li>
                  <div class="d-flex align-items-center gap-2">
                    <span class="material-symbols-outlined mat-icon"> home_work </span>
                    <p class="mb-0"> 총 객실 수 : 250  </p>
                  </div>
                </li>
               
              </ul>
            </div>
            <div class="p-6 bg-neutral-0 rounded-4 mb-10">
              <h4 class="mb-5"> 상세설명 </h4>
              <p class="mb-5 clr-neutral-500"> 모든 객실 내 무료 Wi-Fi이/가 제공되는 이 숙소에서 즐거운 여행을 시작하세요. 서울의 마포에 위치한 본 숙소는 관광 명소 및 흥미로운 레스토랑과 가깝습니다. 떠나기 전 유명한 경복궁을/를 방문해 보세요. 별 4개를 받은 본 고급 숙소는 투숙객에게 숙소 내 레스토랑 및 피트니스 센터을/를 제공합니다.. </p>
            </div>
            <div class="p-6 bg-neutral-0 rounded-4 mb-10">
              <h4 class="mb-5"> 편의시설 </h4>
              <div class="mb-10">
                <div class="row g-4">
                  <div class="col-md-4 col-lg-3">
                    <ul class="list gap-4">
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block">에어컨 </span>
                        </div>
                      </li>
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 세탁실</span>
                        </div>
                      </li>
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 주차가능  </span>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="col-md-4 col-lg-3">
                    <ul class="list gap-4">
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 와이파이 </span>
                        </div>
                      </li>
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 수영장</span>
                        </div>
                      </li>
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 피트니스 </span>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="col-md-4 col-lg-3">
                    <ul class="list gap-4">
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 조식운영 </span>
                        </div>
                      </li>
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 금연 </span>
                        </div>
                      </li>
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 24시간 데스크</span>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="col-md-4 col-lg-3">
                    <ul class="list gap-4">
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 스파 </span>
                        </div>
                      </li>
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 오션뷰</span>
                        </div>
                      </li>
                      <li>
                        <div class="d-flex align-items-center gap-2">
                          <div class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
                            <span class="material-symbols-outlined mat-icon fs-20 clr-primary-300"> check </span>
                          </div>
                          <span class="d-inline-block"> 연회장 </span>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="p-6 bg-neutral-0 rounded-4 mb-10">
              <h4 class="mb-5"> 소개영상 </h4>
              <div class="property-showcase bg-neutral-0 p-1 rounded-4 overflow-hidden position-relative z-1">
                <img src="/resources/img/product_img1.jpg" alt="image" class="img-fluid w-100 rounded-4 z-n1">
                <a href="//pix5.agoda.net/video/23131209.mp4"" class="video-popup link d-grid place-content-center w-14 h-14 rounded-circle bg-tertiary-300 clr-neutral-900 z-2 position-absolute position-center">
                  <span class="material-symbols-rounded mat-icon solid fs-36"> play_arrow </span>
                </a>
              </div>
            </div>
            <div class="p-6 bg-neutral-0 rounded-4 mb-10">
              <div class="d-flex align-items-center justify-content-between flex-wrap gap-3 mb-5">
                <h4 class="mb-0"> 위치 </h4>
                 
              </div>
              <div class="w-100">
                <iframe class="w-100 h-400 rounded-4" src="https://maps.google.com/maps?q=서울특별시+마포구+마포대로+67+로이넷+호텔+서울+마포&t=&z=15&ie=UTF8&iwloc=&output=embed"></iframe>
              </div>
            </div>

            <div class="bg-neutral-0 rounded-4 py-8 px-5 mb-10">
              <div class="d-flex align-items-center gap-4 justify-content-between flex-wrap mb-10">
                <div class="d-flex align-items-center gap-2">
                  <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  <h3 class="mb-0"> 4.0 (21 리뷰) </h3>
                </div>
                
              </div>
              <div class="bg-primary-5p rounded-4 p-6 mb-8">
                <div class="d-flex align-items-center flex-wrap justify-content-between gap-4">
                  <div class="d-flex gap-5 align-items-center">
                    <div class="w-15 h-15 flex-shrink-0 rounded-circle overflow-hidden">
                      <span class="material-symbols-outlined mat-icon" style = " font-size:4em;  color: orange;"> mood </span>
                    </div>
                    <div class="flex-grow-1">
                      <p class="mb-0 clr-neutral-500"> 베스트 리뷰 </p>
                      <h5 class="mb-1 fw-semibold"> 여기만한 곳은 어디에도 없을 거예요. </h5>
                    </div>
                  </div>
                  <div class="text-sm-end">
                  </div>
                </div>
                <div class="hr-dashed my-6"></div>
                <ul class="list list-row mb-2">
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate_half </span>
                  </li>
                </ul>
                <p class="mb-0 clr-neutral-500">매번 방문해서 그런지 객실 업그레이드까지 해주셔서 너무 편히 잘쉬다 왔습니다 </p>
              </div>
              
              <div class="bg-primary-5p rounded-4 p-6 mb-8">
                <div class="d-flex align-items-center flex-wrap justify-content-between gap-4">
                  <div class="d-flex gap-5 align-items-center">
                    <div class="w-15 h-15 flex-shrink-0 rounded-circle overflow-hidden">
                      <span class="material-symbols-outlined mat-icon" style = " font-size:4em;  color: orange;"> face </span>
                    </div>
                    <div class="flex-grow-1">
                      <p class="mb-0 clr-neutral-500"> 베스트 리뷰 </p>
                      <h5 class="mb-1 fw-semibold"> 전체적으로 만족스러웠어요. </h5>
                    </div>
                  </div>
                  <div class="text-sm-end">
                  </div>
                </div>
                <div class="hr-dashed my-6"></div>
                <ul class="list list-row mb-2">
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                 
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate_half </span>
                  </li>
                </ul>
                <p class="mb-0 clr-neutral-500">매번 방문해서 그런지 객실 업그레이드까지 해주셔서 너무 편히 잘쉬다 왔습니다 </p>
           
              </div>
              
            <div class="bg-primary-5p rounded-4 p-6 mb-8">
                <div class="d-flex align-items-center flex-wrap justify-content-between gap-4">
                  <div class="d-flex gap-5 align-items-center">
                    <div class="w-15 h-15 flex-shrink-0 rounded-circle overflow-hidden">
                      <span class="material-symbols-outlined mat-icon" style = " font-size:4em;  color: orange;"> sentiment_satisfied </span>
                    </div>
                    <div class="flex-grow-1">
                      <p class="mb-0 clr-neutral-500"> 베스트 리뷰 </p>
                      <h5 class="mb-1 fw-semibold"> 기대 이상이네요.</h5>
                    </div>
                  </div>
                  <div class="text-sm-end">
                  </div>
                </div>
                <div class="hr-dashed my-6"></div>
                <ul class="list list-row mb-2">
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                
                 
                </ul>
                <p class="mb-0 clr-neutral-500">룸 컨디션도 좋았고 가격두 괜춘하고 다음에 또 이용할려구요
다만 밤에 슈퍼카 소리 좀 시끄러움 앞에 공사하고있어서 오전에시끄러움 퇴실시간쯤 엘레베이터
층층마다서요^^.. 그래도 위치조음</p>
                  
              </div>
               <div class="bg-primary-5p rounded-4 p-6 mb-8">
                <div class="d-flex align-items-center flex-wrap justify-content-between gap-4">
                  <div class="d-flex gap-5 align-items-center">
                    <div class="w-15 h-15 flex-shrink-0 rounded-circle overflow-hidden">
                      <span class="material-symbols-outlined mat-icon" style = " font-size:4em;  color: orange;"> sentiment_very_satisfied </span>
                    </div>
                    <div class="flex-grow-1">
                      <p class="mb-0 clr-neutral-500"> 베스트 리뷰 </p>
                      <h5 class="mb-1 fw-semibold"> 여기만한 곳은 어디에도 없을 거예요. </h5>
                    </div>
                  </div>
                  <div class="text-sm-end">
                  </div>
                </div>
                <div class="hr-dashed my-6"></div>
                <ul class="list list-row mb-2">
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate_half </span>
                  </li>
                </ul>
                <p class="mb-0 clr-neutral-500">체크인 카운터가 고층에 있습니다
가습기도 요청하면 받을 수 있고 다만 옆이 공사중이라 그런지는 몰라도 객실 창문이 막혀있는점은 아쉬웠습니다
작은 창문은 열리기는 하는데 큰 창은 가림막으로 완전히 막혀있습니다
주차비는 하루 만원으로 따로 나오고 직원분들도 친절하고 객실도 깔끔해서 좋습니다
바로 건너편에 코엑스랑 파르나스몰도 있어서 구경하기에 좋습니다 횡단보도 하나만 건너면 도착해요 </p>
                  
              </div>
              
               <div class="bg-primary-5p rounded-4 p-6 mb-8">
                <div class="d-flex align-items-center flex-wrap justify-content-between gap-4">
                  <div class="d-flex gap-5 align-items-center">
                    <div class="w-15 h-15 flex-shrink-0 rounded-circle overflow-hidden">
                      <span class="material-symbols-outlined mat-icon" style = " font-size:4em;  color: orange;"> sentiment_very_dissatisfied </span>
                    </div>
                    <div class="flex-grow-1">
                      <h5 class="mb-1 fw-semibold"> 종환이랑 또 오고싶어요. </h5>
                    </div>
                  </div>
                  <div class="text-sm-end">
                  </div>
                </div>
                <div class="hr-dashed my-6"></div>
                <ul class="list list-row mb-2">
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate </span>
                  </li>
                  <li>
                    <span class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300"> star_rate_half </span>
                  </li>
                </ul>
                <p class="mb-0 clr-neutral-500">이번에 처음 온건데 너무 설레고 좋았어요
                분위기도 좋았구요 남자친구도 정말 좋아했어요 깔금하고 향도 되게 좋더라구요 강추합니다!! </p>
              </div>
              
              
              <a href="#" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill active"> 더 많은 리뉴 보기 </a>
            </div>
            <div class="bg-neutral-0 rounded-4 py-8 px-5">
              <h4 class="mb-0">리뷰 쓰기</h4>
              <div class="hr-dashed my-6"></div>
              <p class="fs-20 fw-medium">별점 *</p>
              <ul class="list list-row mb-6">
                <li>
                  <span class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300"> star_rate </span>
                </li>
                <li>
                  <span class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300"> star_rate </span>
                </li>
                <li>
                  <span class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300"> star_rate </span>
                </li>
                <li>
                  <span class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300"> star_rate_half </span>
                </li>
                <li>
                  <span class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300"> star_rate_half </span>
                </li>
              </ul>
              <form action="#">
                <div class="row g-4">
                  <div class="col-12">
                    <label for="review-name" class="fs-20 fw-medium d-block mb-3">작성자 *</label>
                    <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" placeholder="Enter Name.." id="review-name">
                  </div>
                  <div class="col-12">
                    <label for="review-email" class="fs-20 fw-medium d-block mb-3">제목 *</label>
                    <select name="item" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" id="review-email">
                    <option selected>제목을 선택 해주세요</option>
                    <option value="title1">기대 이상이에요.</option>
                    <option value="title2">너무 행복해요.</option>
                    <option value="title3">다시 오고싶어요.</option>
                    </select>
                  </div>
                  <div class="col-12">
                    <label for="review-review" class="fs-20 fw-medium d-block mb-3">리뷰 *</label>
                    <textarea id="review-review" rows="5" class="form-control bg-primary-3p border border-neutral-40 rounded-5 py-3 px-5"></textarea>
                  </div>
                  <div class="col-12">
                    <a href="#" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill active"> 리뷰작성 </a>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-xl-4">
          <div class="section-space--sm pb-0 mb-6 position-relative section-exxl-nspace z-1">
            <div class="bg-neutral-0 rounded-4 py-8 px-6">
              <div class="d-flex align-items-start gap-2 mb-6">
                <div class="d-flex gap-3 align-items-center">
                  <span class="material-symbols-outlined mat-icon"> sell </span>
                  <h3 class="mb-0"> 120,000원 </h3>
                  <p class="mb-0"> 부터 </p>
                </div>
              </div>

              <div class="tab-content mb-8">
                <div class="tab-pane fade show active" id="booking-list">
                  <div class="d-flex bg-primary-3p gap-3 py-4 px-8 rounded-pill border border-neutral-40 mb-4">
                    <span class="material-symbols-outlined mat-icon clr-neutral-200 fs-32 flex-shrink-0"> calendar_month </span>
                    <div class="flex-grow-1">
						<input type="text" class="form-control input1" name="daterange" value="" 2023/01/01 - 2123/12/31" />
                    </div>
                  </div>
                  <div class="d-flex align-items-center bg-primary-3p gap-3 py-4 px-8 rounded-pill border border-neutral-40 mb-4">
                    <div class="flex-grow-1">
                      <p class="mb-1">성인</p>
                      <p class="mb-0 fs-12 clr-neutral-400"> 12세+ </p>
                    </div>
                    <div class="flex-shrink-0">
                      <div class="quantity">
                        <button type="button" class="quantity__button quantity__button-down material-symbols-outlined mat-icon clr-primary-300"> do_not_disturb_on </button>
                        <input type="text" class="quantity__value" value="0">
                        <button type="button" class="quantity__button quantity__button-up material-symbols-outlined mat-icon clr-primary-300"> add_circle </button>
                      </div>
                    </div>
                  </div>
                  <div class="d-flex align-items-center bg-primary-3p gap-3 py-4 px-8 rounded-pill border border-neutral-40">
                    <div class="flex-grow-1">
                      <p class="mb-1">어린이</p>
                      <p class="mb-0 fs-12 clr-neutral-400"> 2~12세 </p>
                    </div>
                    <div class="flex-shrink-0">
                      <div class="quantity">
                        <button type="button" class="quantity__button quantity__button-down material-symbols-outlined mat-icon clr-primary-300"> do_not_disturb_on </button>
                        <input type="text" class="quantity__value" value="0">
                        <button type="button" class="quantity__button quantity__button-up material-symbols-outlined mat-icon clr-primary-300"> add_circle </button>
                      </div>
                    </div>
                  </div>
                </div>
                
              </div>
              <div class="d-flex align-items-center justify-content-between mb-4">
                <p class="mb-0 clr-neutral-500"> 120,000원 x 4박 </p>
                <p class="mb-0 fw-medium"> 480,000원 </p>
              </div>
              <div class="d-flex align-items-center justify-content-between">
                <p class="mb-0 clr-neutral-500"> 부가세 </p>
                <p class="mb-0 fw-medium"> 48,000원 </p>
              </div>
              <div class="hr-dashed my-4"></div>
              <div class="d-flex align-items-center justify-content-between mb-10">
                <p class="mb-0 clr-neutral-500"> 합계 </p>
                <p class="mb-0 fw-medium"> 536,000원 </p>
              </div>
              <a href="#" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-medium w-100 justify-content-center mb-6">
                <span class="d-inline-block"> 예약하기 </span>
              </a>
             
            </div>
          </div>
          <div class="bg-neutral-0 rounded-4 py-8 px-6 mb-6">
            <div class="w-30 h-30 border border-primary-100 rounded-circle bg-neutral-0 p-6 d-grid place-content-center position-relative mx-auto mb-10">
              
              
              <span class="material-symbols-outlined mat-icon" style = " font-size:4em;  color: green;"> location_city </span>
              
              
              <div class="w-8 h-8 d-grid place-content-center rounded-circle border border-2 border-neutral bg-primary-300 position-absolute end-0 bottom-0">
                <span class="material-symbols-outlined mat-icon clr-neutral-0"> check </span>
              </div>
            </div>
            <h4 class="text-center mb-4"> 로이넷 호텔 </h4>
            <ul class="list list-row list-divider-dot-sm align-items-cener justify-content-center flex-wrap mb-7">
              <li>
                <p class="mb-0"> 사업자명: <span class="clr-primary-300">로이넷호텔(주)</span>
                </p>
              </li>

              <li>
                <div class="d-flex gap-1 align-items-cener">
                  <span class="material-symbols-outlined mat-icon solid clr-tertiary-300"> star_rate </span>
                  <p class="mb-0"> 4.8 </p>
                </div>
              </li>
            </ul>
   
   
   
            <div class="hr-dashed my-7"></div>
            <ul class="list gap-4 mb-10 max-text-30 mx-auto">
              <li>
                <div class="d-flex align-items-center gap-2">
                  <span class="material-symbols-outlined mat-icon clr-secondary-300"> chat </span>
                  <p class="mb-0"> 사장님 한마디 </p>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center gap-2">
                  <p class="mb-0"> 저희 호텔에 방문해 주셔서 감사합니다<br/><br/>
저희 호텔은 국내에서 가장 큰 규모를 자랑하는 호텔입니다
고객님께서 쾌적하고 안락한 휴식을 취하실 수 있도록 최선을 다하겠습니다.
그러기 위해 고객님께서 지켜주셔야할 몇가지 규칙이 있습니다<br/>
규칙을 지키지 않아 발생하는 사고에 대해서 호텔측은 어떠한 책임도 지지 않겠습니다
<br/><br/>
첫번째.<br/>
체크인은 오후8시부터 가능합니다 <br/>
그 이전에 체크인을 하러 오지 마십시오.<br/>
 <br/><br/>
두번째.<br/>
7층 방을 배정 받으신 경우 
절대 7층으로 가지 마시고 직원에게 방의 교체를 요구 하십시오.
몇년전 7층에서 사람이 죽었습니다.
그 이후로도 7층에서는 크고 작은 사고들이 발생하여
현재 사용하지 않고있습니다.
<br/><br/>
세번째.<br/>
만약 방 안에서 이상한 소리가 들리는경우 무시하십시오.
만약 소리가 방 밖에서 들린다면
즉시 직원에게 연락하신 후 화장실에 가서 문을 잠그고 계십시오
신속히 해결하겠습니다
<br/><br/>
네번째.<br/>
오후 1시 부터 2시 까지는 직원 식사 시간입니다 
이 시간에는 되도록이면 외출하지 마십시오
혹여나 호텔 밖에 계시다면 2시 이후에 들어오십시오
그 시간에는 사고가 생겨도 도와드릴수 없습니다
<br/><br/>
다섯번째.<br/>
저희 호텔 4층에는 미술관이 있습니다.
미술관을 관람하는 도중
저주 받은 여인이라는 그림과 마주치게 된다면 곧바로 미술관에서 나오십시오
 <br/><br/>
여섯번째.<br/>
호텔 레스토랑에서 하얀 정장을 입은 직원이 고기를 가져다 준다면
먹지마시고 다른 직원을 호출하여 음식을 바꿔달라고 하십시오 
레스토랑 직원의 옷은 전부 검은색입니다
그 고기는 여러분을 위한 고기가 아닙니다
<br/><br/>
일곱번째.<br/>
엘리베이터 이용시 7층에 도착했다는 안내 음성이 나온다면
구석으로 가서 눈을 감으십시오
운 좋게 직원이 발견한다면 당신은 살아남을수 있을것입니다.
<br/><br/>
여덟번째.<br/>
저희 호텔에는 가끔 허가받지 않은 외부인들이 출입하곤 합니다
그들은 마치 저희를 알고 있다는듯 직원들을 피해 다닙니다
호텔에서 이상한 차림의 옷을 입고 계신 사람을 목격하셨다면
가지고 계신 휴대전화로 아무데나 전화를 걸어 10분간 통화 하십시오
<br/><br/>
아홉번째.<br/>
만약 객실에서 동물의 울음소리가 들린다면
저희가 해드릴수 있는것은 없습니다.
죄송합니다.
안녕히 가십시오. </p>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="section-space--sm pt-xl-0">
      <div class="container">
        <div class="row gy-5">
          <div class="col-12">
            <div class="row g-4 align-items-center">
              <div class="col-md-6">
                <h2 class="mb-0"> 추천장소 </h2>
              </div>
              <div class="col-md-6">
                <div class="text-md-end d-flex gap-3 justify-content-md-end">
                  <div class="swiper-button-prev recent-view-slider__btn recent-view-slider__btn-prev">
                  </div>
                  <div class="swiper-button-next recent-view-slider__btn recent-view-slider__btn-next">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12">
            <div class="swiper recent-view-slider">
              <div class="swiper-wrapper">
                <div class="swiper-slide ps-2">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="property-card__img">
                        <img src="/resources/img/img_400_280.jpg" alt="image" class="img-fluid w-100">
                      </div>
                      <a href="property-details-2.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> 할인 </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> 인기 </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 서울시 마포구 </span>
                      </div>
                      <a href="property-details-2.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> 서교호텔 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 방: 1 </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 침대: 퀸1, 소1 </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 욕실: 1 </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> 110,000원 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /1박 </span>
                        </span>
                        <a href="property-details-2.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> 상세보기 </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide ps-2">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="property-card__img">
                        <img src="/resources/img/img_400_280.jpg" alt="image" class="img-fluid w-100">
                      </div>
                      <a href="property-details-2.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> 할인 </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> 인기 </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 서울시 마포구 </span>
                      </div>
                      <a href="property-details-2.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> 서교호텔 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 방: 1 </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 침대: 퀸1, 소1 </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 욕실: 1 </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> 110,000원 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /1박 </span>
                        </span>
                        <a href="property-details-2.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> 상세보기 </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide ps-2">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="property-card__img">
                        <img src="/resources/img/img_400_280.jpg" alt="image" class="img-fluid w-100">
                      </div>
                      <a href="property-details-2.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> 할인 </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> 인기 </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 서울시 마포구 </span>
                      </div>
                      <a href="property-details-2.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> 서교호텔 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 방: 1 </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 침대: 퀸1, 소1 </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 욕실: 1 </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> 110,000원 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /1박 </span>
                        </span>
                        <a href="property-details-2.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> 상세보기 </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /Property Details Body -->

<%@ include file="/resources/in/footer.jsp" %>
  
</body>

</html>