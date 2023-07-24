<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>

<!-- meta -->
<%@ include file="/resources/in/meta.jsp" %>

<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/moment.min.js"></script>
<script type="text/javascript" src="/resources/js/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/daterangepicker.css" />

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



</head>

<body>
	<div class="alert alert-success" role="alert" id="showAlertLogin" align="center">
  	<h5></h5>
		</div>
	<!-- Header -->
	<%@ include file="/resources/in/header.jsp" %>
	<!-- Hotel Booking Hero -->

	
	
	
	
	<div class="hotel-hero bg-primary-3p">
		<img src="/resources/img/hotel-hero-el-1.png" alt="image"
			class="img-fluid hotel-hero__el hotel-hero__el-1"> <img
			src="/resources/img/hotel-hero-el-2.png" alt="image"
			class="img-fluid hotel-hero__el hotel-hero__el-2"> <img
			src="/resources/img/hotel-hero-el-3.png" alt="image"
			class="img-fluid hotel-hero__el hotel-hero__el-3"> <img
			src="/resources/img/hotel-hero-el-4.png" alt="image"
			class="img-fluid hotel-hero__el hotel-hero__el-4"> <img
			src="/resources/img/hotel-hero-el-5.png" alt="image"
			class="img-fluid hotel-hero__el hotel-hero__el-5"> <a
			href="https://vimeo.com/115041822"
			class="video-popup link d-grid hotel-hero__el hotel-hero__el-6">
			<img src="/resources/img/video-img.png" alt="image" class="img-fluid">
		</a>
		<div class="container">
			<div class="row g-4">
				<div class="col-lg-8 col-xl-6">
					<span
						class="d-inline-flex align-items-center bg-neutral-0 gap-4 rounded-pill py-1 ps-1 pe-5">
						<span
						class="w-9 h-9 rounded-circle d-grid place-content-center bg-primary-300 clr-neutral-0 flex-shrink-0">
							<span class="material-symbols-outlined mat-icon fw-200">
								arrow_right_alt </span>
					</span> <span class="h5 lh-1 m-0 clr-primary-400 fw-semibold"> 크나큰 즐거움보단  소소한 행복을 </span>
					</span>
					<h1 class="d2 mt-4 mb-6">광안리를 잡아봐!</h1>
					<p class="mb-10 fs-20">무더운 여름 더위속에 잠들지 못한 너 저렴한 가격으로 모시겠습니다 .</p>
				</div>
				<div class="col-xxl-10">
					<form action="#">
						<div class="property-search p-6 rounded-3 bg-neutral-0">
							<div
								class="property-search__content d-flex flex-wrap justify-content-center align-items-center gap-4">





								<div class="property-search__select property-search__col rounded-pill d-flex align-items-center gap-2 px-6">
									<span class="material-symbols-outlined mat-icon"> distance </span> 
									<select class="form-select" aria-label="Default select example">
										<option selected>지역</option>
										<option value="1">수도권</option>
										<option value="2">강원</option>
										<option value="3">제주</option>
										<option value="4">경상</option>
										<option value="5">전라</option>
										<option value="6">충청</option>
									</select>
								</div>








								<div class="property-search__select property-search__col rounded-pill d-flex align-items-center gap-2 px-6">
									
									<div class="d-flex gap-2 align-items-center">
									<input type="text" class="form-control input1" name="daterange" value=""2023/01/01 - 2123/12/31" />
									</div>
									
								</div>














								<div
									class="property-search__price property-search__col rounded-pill d-flex align-items-center gap-2 px-6 py-3">
									<div class="d-flex gap-2 align-items-center">
										<span class="material-symbols-rounded mat-icon">
											add_card </span> <span class="d-inline-block fs-14">예산</span>
									</div>
									<div class="property-search__range d-grid">
										<input type="range" min="1" max="100" value="450"
											class="property-search__range-input" id="myRange"
											oninput="rangevalue.value=value">
									</div>
									<div class="property-search__range-price">
										<span class="d-inline-block fs-10 clr-primary-300">최대 
										<output class="property-search__range-value" id="rangevalue">10</output>
										<span class="d-inline-block fs-10 clr-primary-300"> 만원
										</span>
									</div>
								</div>
								
								<button
									class="btn rounded-pill property-search__btn property-search__col">
									<span class="material-symbols-rounded mat-icon"> search
									</span>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /Hotel Booking Hero -->

	<!-- Discount Card -->
	<div class="discount-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="swiper discount-slider">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div
									class="discount-card p-6 p-lg-8 p-xl-10 rounded-4 overflow-hidden position-relative z-1">
									<img src="/resources/img/main_hotel_img.jpg" alt="image"
										class="h-100 w-100 discount-card__img"> <span
										class="d4 fw-semibold d-block clr-neutral-0"> 25% OFF </span>
									<p class="mb-10 clr-neutral-0 fs-24 max-text-20">서울 마리나 호텔 할인 찬스</p>
									<a href="hotel-listing.html"
										class="link d-inline-block py-3 px-6 fw-semibold clr-primary-300 bg-neutral-0 rounded">
										예약하기 </a>
								</div>
							</div>
							<div class="swiper-slide">
								<div
									class="discount-card p-6 p-lg-8 p-xl-10 rounded-4 overflow-hidden position-relative z-1">
									<img src="/resources/img/main_hotel_img2.jpg" alt="image"
										class="h-100 w-100 discount-card__img"> <span
										class="d4 fw-semibold d-block clr-neutral-0"> 35% OFF </span>
									<p class="mb-10 clr-neutral-0 fs-24 max-text-20">남산타워호첼</p>
									<a href="hotel-listing.html"
										class="link d-inline-block py-3 px-6 fw-semibold clr-secondary-400 bg-neutral-0 rounded">
										예약하기 </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /Discount Card -->
	<!-- Featured Hotels -->
	<div class="section-space bg-primary-5p">
		<div class="section-space--sm-bottom">
			<div class="container">
				<div class="row g-4 align-items-center">
					<div class="col-md-9 col-lg-8 col-xl-7 col-xxl-6">
						<span
							class="d-inline-flex align-items-center bg-neutral-0 gap-4 rounded-pill py-1 ps-1 pe-5 mb-4">
							<span
							class="w-9 h-9 rounded-circle d-grid place-content-center bg-primary-300 clr-neutral-0 flex-shrink-0">
								<span class="material-symbols-outlined mat-icon fw-200">
									arrow_right_alt </span>
						</span> <span class="h5 lh-1 m-0 clr-primary-400 fw-semibold">
								이달의 추천 </span>
						</span>
						<h2 class="mb-0">국내 인기 휴양지</h2>
					</div>
					<div class="col-md-3 col-lg-4 col-xl-5 col-xxl-6">
						<div class="text-lg-end">
							<a href="/accommodation/accommodation_list"
								class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
								모든 호텔 보기 </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row g-4">
				<div class="col-md-6 col-xl-4">
					<div class="property-card">
						<div class="property-card__head">
							<div class="property-card__img">
								<img src="/resources/img/main_room_img1.jpg" alt="image"
									class="img-fluid w-100">
							</div>
							<button
								class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
								<span
									class="material-symbols-outlined mat-icon fw-200 property-card__heart">
									favorite </span>
							</button>
						</div>
						<div class="property-card__body">
							<div class="d-flex justify-content-between mb-2">
								<a href="/accommodation/accommodation_detail"
									class="link d-block flex-grow-1 clr-neutral-700 :clr-primary-300 fs-20 fw-medium">
									유탑 부티크호텔 & 레지던스 </a>
								<div class="d-flex align-items-center flex-shrink-0">
									<span
										class="material-symbols-outlined mat-icon solid clr-tertiary-300">
										star_rate </span> <span class="d-block clr-neutral-700"> 4.5 </span>
								</div>
							</div>
							<div class="d-flex justify-content-between mb-6">
								<div class="d-flex align-items-center gap-1">
									<span
										class="material-symbols-outlined mat-icon clr-tertiary-400">
										distance </span> <span class="d-inline-block"> 광주 </span>
								</div>
								<span class="d-inline-block fw-medium clr-secondary-400">
									20% 할인 </span>
							</div>
							<ul class="list list-row align-items-center flex-wrap gap-3">
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-car-parking.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-breakfast.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-room-service.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-fitness.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-swimming-pool.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-laundry.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-glob.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
							</ul>
						</div>
						<div class="property-card__body py-0">
							<div class="hr-dashed"></div>
						</div>
						<div class="property-card__body">
							<div
								class="d-flex flex-wrap justify-content-between align-items-center">
								<span class="d-block fs-20 fw-medium clr-primary-300">
									105,000원 <span
									class="d-inline-block clr-neutral-500 fs-16 fw-normal">
										/ 남은 객실 수 : 2 </span>
								</span> <a href="/accommodation/accommodation_detail"
									class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
									예약하기 </a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-xl-4">
					<div class="property-card">
						<div class="property-card__head">
							<div class="property-card__img">
								<img src="/resources/img/main_room_img2.jpg" alt="image"
									class="img-fluid w-100">
							</div>
							<button
								class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
								<span
									class="material-symbols-outlined mat-icon fw-200 property-card__heart">
									favorite </span>
							</button>
						</div>
						<div class="property-card__body">
							<div class="d-flex justify-content-between mb-2">
								<a href="/accommodation/accommodation_detail"
									class="link d-block flex-grow-1 clr-neutral-700 :clr-primary-300 fs-20 fw-medium">
									대구 라이온즈파크점 </a>
								<div class="d-flex align-items-center flex-shrink-0">
									<span
										class="material-symbols-outlined mat-icon solid clr-tertiary-300">
										star_rate </span> <span class="d-block clr-neutral-700"> 4.8 </span>
								</div>
							</div>
							<div class="d-flex justify-content-between mb-6">
								<div class="d-flex align-items-center gap-1">
									<span
										class="material-symbols-outlined mat-icon clr-tertiary-400">
										distance </span> <span class="d-inline-block"> 대구 </span>
								</div>
								<span class="d-inline-block fw-medium clr-secondary-400">
									20% 할인 </span>
							</div>
							<ul class="list list-row align-items-center flex-wrap gap-3">
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-car-parking.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-breakfast.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-room-service.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-fitness.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-swimming-pool.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-laundry.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-glob.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
							</ul>
						</div>
						<div class="property-card__body py-0">
							<div class="hr-dashed"></div>
						</div>
						<div class="property-card__body">
							<div
								class="d-flex flex-wrap justify-content-between align-items-center">
								<span class="d-block fs-20 fw-medium clr-primary-300">
									120,000원 <span
									class="d-inline-block clr-neutral-500 fs-16 fw-normal">
										/ 남은 객실 수 : 3 </span>
								</span> <a href="/accommodation/accommodation_detail"
									class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
									예약하기 </a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-xl-4">
					<div class="property-card">
						<div class="property-card__head">
							<div class="property-card__img">
								<img src="/resources/img/main_room_img3.jpg" alt="image"
									class="img-fluid w-100">
							</div>
							<button
								class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
								<span
									class="material-symbols-outlined mat-icon fw-200 property-card__heart">
									favorite </span>
							</button>
						</div>
						<div class="property-card__body">
							<div class="d-flex justify-content-between mb-2">
								<a href="/accommodation/accommodation_detail"
									class="link d-block flex-grow-1 clr-neutral-700 :clr-primary-300 fs-20 fw-medium">
									스탕달 호텔 </a>
								<div class="d-flex align-items-center flex-shrink-0">
									<span
										class="material-symbols-outlined mat-icon solid clr-tertiary-300">
										star_rate </span> <span class="d-block clr-neutral-700"> 4.8 </span>
								</div>
							</div>
							<div class="d-flex justify-content-between mb-6">
								<div class="d-flex align-items-center gap-1">
									<span
										class="material-symbols-outlined mat-icon clr-tertiary-400">
										distance </span> <span class="d-inline-block"> 대전
									</span>
								</div>
								<span class="d-inline-block fw-medium clr-secondary-400">
									20% 할인 </span>
							</div>
							<ul class="list list-row align-items-center flex-wrap gap-3">
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-car-parking.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-breakfast.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-room-service.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-fitness.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-swimming-pool.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-laundry.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-glob.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
							</ul>
						</div>
						<div class="property-card__body py-0">
							<div class="hr-dashed"></div>
						</div>
						<div class="property-card__body">
							<div
								class="d-flex flex-wrap justify-content-between align-items-center">
								<span class="d-block fs-20 fw-medium clr-primary-300">
									176,000원 <span
									class="d-inline-block clr-neutral-500 fs-16 fw-normal">
										/ 남은 객실 수 : 4 </span>
								</span> <a href="/accommodation/accommodation_detail"
									class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
									예약하기 </a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-xl-4">
					<div class="property-card">
						<div class="property-card__head">
							<div class="property-card__img">
								<img src="/resources/img/main_room_img4.jpg" alt="image"
									class="img-fluid w-100">
							</div>
							<button
								class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
								<span
									class="material-symbols-outlined mat-icon fw-200 property-card__heart">
									favorite </span>
							</button>
						</div>
						<div class="property-card__body">
							<div class="d-flex justify-content-between mb-2">
								<a href="/accommodation/accommodation_detail"
									class="link d-block flex-grow-1 clr-neutral-700 :clr-primary-300 fs-20 fw-medium">
									오션 더포인트 호텔 </a>
								<div class="d-flex align-items-center flex-shrink-0">
									<span
										class="material-symbols-outlined mat-icon solid clr-tertiary-300">
										star_rate </span> <span class="d-block clr-neutral-700"> 4.8 </span>
								</div>
							</div>
							<div class="d-flex justify-content-between mb-6">
								<div class="d-flex align-items-center gap-1">
									<span
										class="material-symbols-outlined mat-icon clr-tertiary-400">
										distance </span> <span class="d-inline-block"> 부산 </span>
								</div>
								<span class="d-inline-block fw-medium clr-secondary-400">
									20% 할인 </span>
							</div>
							<ul class="list list-row align-items-center flex-wrap gap-3">
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-car-parking.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-breakfast.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-room-service.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-fitness.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-swimming-pool.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-laundry.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-glob.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
							</ul>
						</div>
						<div class="property-card__body py-0">
							<div class="hr-dashed"></div>
						</div>
						<div class="property-card__body">
							<div
								class="d-flex flex-wrap justify-content-between align-items-center">
								<span class="d-block fs-20 fw-medium clr-primary-300">
									57,000원 <span
									class="d-inline-block clr-neutral-500 fs-16 fw-normal">
										/ 남은 객실 수 : 7 </span>
								</span> <a href="/accommodation/accommodation_detail"
									class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
									예약하기 </a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-xl-4">
					<div class="property-card">
						<div class="property-card__head">
							<div class="property-card__img">
								<img src="/resources/img/main_room_img5.jpg" alt="image"
									class="img-fluid w-100">
							</div>
							<button
								class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
								<span
									class="material-symbols-outlined mat-icon fw-200 property-card__heart">
									favorite </span>
							</button>
						</div>
						<div class="property-card__body">
							<div class="d-flex justify-content-between mb-2">
								<a href="/accommodation/accommodation_detail"
									class="link d-block flex-grow-1 clr-neutral-700 :clr-primary-300 fs-20 fw-medium">
									스카이베이호텔 경포 </a>
								<div class="d-flex align-items-center flex-shrink-0">
									<span
										class="material-symbols-outlined mat-icon solid clr-tertiary-300">
										star_rate </span> <span class="d-block clr-neutral-700"> 4.8 </span>
								</div>
							</div>
							<div class="d-flex justify-content-between mb-6">
								<div class="d-flex align-items-center gap-1">
									<span
										class="material-symbols-outlined mat-icon clr-tertiary-400">
										distance </span> <span class="d-inline-block"> 강원 </span>
								</div>
								<span class="d-inline-block fw-medium clr-secondary-400">
									20% 할인 </span>
							</div>
							<ul class="list list-row align-items-center flex-wrap gap-3">
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-car-parking.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-breakfast.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-room-service.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-fitness.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-swimming-pool.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-laundry.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-glob.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
							</ul>
						</div>
						<div class="property-card__body py-0">
							<div class="hr-dashed"></div>
						</div>
						<div class="property-card__body">
							<div
								class="d-flex flex-wrap justify-content-between align-items-center">
								<span class="d-block fs-20 fw-medium clr-primary-300">
									209,000원 <span
									class="d-inline-block clr-neutral-500 fs-16 fw-normal">
										/ 남은 객실 수 : 1 </span>
								</span> <a href="/accommodation/accommodation_detail"
									class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
									예약하기 </a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-xl-4">
					<div class="property-card">
						<div class="property-card__head">
							<div class="property-card__img">
								<img src="/resources/img/main_room_img6.jpg" alt="image"
									class="img-fluid w-100">
							</div>
							<button
								class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
								<span
									class="material-symbols-outlined mat-icon fw-200 property-card__heart">
									favorite </span>
							</button>
						</div>
						<div class="property-card__body">
							<div class="d-flex justify-content-between mb-2">
								<a href="/product/product_detail"
									class="link d-block flex-grow-1 clr-neutral-700 :clr-primary-300 fs-20 fw-medium">
									그랜드 하얏트 제주 </a>
								<div class="d-flex align-items-center flex-shrink-0">
									<span
										class="material-symbols-outlined mat-icon solid clr-tertiary-300">
										star_rate </span> <span class="d-block clr-neutral-700"> 4.8 </span>
								</div>
							</div>
							<div class="d-flex justify-content-between mb-6">
								<div class="d-flex align-items-center gap-1">
									<span
										class="material-symbols-outlined mat-icon clr-tertiary-400">
										distance </span> <span class="d-inline-block"> 제주 </span>
								</div>
								<span class="d-inline-block fw-medium clr-secondary-400">
									20% 할인 </span>
							</div>
							<ul class="list list-row align-items-center flex-wrap gap-3">
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-car-parking.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-breakfast.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-room-service.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-fitness.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-swimming-pool.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-laundry.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
								<li>
									<div
										class="d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-primary-300">
										<img src="/resources/img/icon-glob.png" alt="image"
											class="img-fluid w-7 h-7 object-fit-contain">
									</div>
								</li>
							</ul>
						</div>
						<div class="property-card__body py-0">
							<div class="hr-dashed"></div>
						</div>
						<div class="property-card__body">
							<div
								class="d-flex flex-wrap justify-content-between align-items-center">
								<span class="d-block fs-20 fw-medium clr-primary-300">
									266,000원 <span
									class="d-inline-block clr-neutral-500 fs-16 fw-normal">
										/ 남은 객실 수 : 2 </span>
								</span> <a href="/product/product_detail"
									class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
									예약하기 </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /Featured Hotels -->

	<script>
		$(document).ready(function() {
			
			let member = '<c:out value="${member.name}"/>';
			let company = '<c:out value="${seller.companyName}"/>';
			showAlertMember(member);
			showAlertCompany(company);
			
		    function showAlertMember(member) {
		        if (member === '') {
		          $("#showAlertLogin").hide();
		          return;
		        } else {
		        $('#showAlertLogin>h5').text(member +'님 환영합니다.');

		        $("#showAlertLogin").show();
		          // 일정 시간이 지난 후에 알림 메시지 숨김
		          setTimeout(function() {
		            $("#showAlertLogin").hide();
		          }, 5000); // 5초 후 숨김
		        
		        }
		      }
		    
		    function showAlertCompany(company) {
		        if (company === '') {
		          $("#showAlertLogin").hide();
		          return;
		        } else {
		        $('#showAlertLogin>h5').text(company +'사에 로그인하였습니다.');

		        $("#showAlertLogin").show();
		          // 일정 시간이 지난 후에 알림 메시지 숨김
		          setTimeout(function() {
		            $("#showAlertLogin").hide();
		          }, 5000); // 5초 후 숨김
		        
		        }
		      }
			
		})
	$(function() {
	  $('input[name="daterange"]').daterangepicker({
	    opens: 'left'
	  }, 
	  
	  function(start, end, label) {
	    console.log("새로운 날짜가 선택되었습니다.: " + start.format('YYYY-MM-DD') + ' ~ ' + end.format('YYYY-MM-DD'));
	  });
	});
		
		let result_del = "${result}";
		if(result_del === "delete") {
			alert('회원탈퇴가 정상적으로 완료되었습니다.');
		}
	</script>
		
	

	<!-- Footer -->

	<%@ include file="/resources/in/footer.jsp" %>


</body>

</html>