<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<%@ include file="/resources/in/meta.jsp"%>
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

.card_body {
	padding: 0px 2rem 1rem;
}

.container {
	display: flex;
	justify-content: space-between;
}

/* 이미지의 크기를 지정하지 않고 img-fluid 클래스로 유연하게 조절 */
.image-wrapper img {
	width: 100%;
	height: auto;
}

/* content-wrapper 설정 */
.content-wrapper {
	flex: 1; /* 남은 공간을 차지하도록 설정 */
	padding: 10px; /* 적절한 여백을 설정하여 디자인 조정 가능 */
	box-sizing: border-box; /* padding이 전체 크기에 포함되도록 설정 */
}

@media ( max-width : 576px) {
	.container {
		flex-direction: column;
	}
}

@media ( max-width : 768px) {
	.container {
		max-width: 720px;
		flex-direction: column;
	}
}

@media ( max-width : 992px) {
	.container {
		max-width: 960px;
	}
}
</style>




<body>
	<script>
		/* $(function() {
			$('input[name="daterange"]').daterangepicker(
					{
						opens : 'left'
					},
					
					function(start, end, label) {
						console.log("새로운 날짜가 선택되었습니다.: "
								+ start.format('YYYY-MM-DD') + ' ~ '
								+ end.format('YYYY-MM-DD'));
						//날짜 인풋 히든으로 추가하기
						var formObj = $("form[role='form']");
						
							let str="";
							$(".CheckInOutDate1").each(function(i, obj){
								var jobj = $(obj);
								console.dir(jobj);
								str += `<input type = 'hidden' name='checkInDate' value = '\${start.format('YYYY-MM-DD')}'>
								<input type = 'hidden' name='checkOutDate' value = '\${end.format('YYYY-MM-DD')}'>`;
								console.log("날짜 히든 추가 됐니?");
							});
							formObj.append(str)//.submit();
						//submit button event
					});
			
			/* window.onbeforeunload = function() {
				$.ajax({
					type:'post',
					url:'/wish/full',
					data:{"address" : "aaa"},
					dataType:'text',
					success : function(data){
						alert("데이터 전송 성공");
					}
				});
				  return false;
			}; */
		//}); */
		
		
		let full=${ wishlist.full };
		$(function() {
			$('input[name="daterange"]').daterangepicker(
					{
						opens : 'left'
					},
					
					function(start, end, label) {
						console.log("새로운 날짜가 선택되었습니다.: "
								+ start.format('YYYY-MM-DD') + ' ~ '
								+ end.format('YYYY-MM-DD'));
						//날짜 인풋 히든으로 추가하기
						var formObj = $("form[role='form']");
						
							let str="";
							$(".CheckInOutDate1").each(function(i, obj){
								var jobj = $(obj);
								console.dir(jobj);
								str += `<input type = 'hidden' name='checkInDate' value = '\${start.format('YYYY-MM-DD')}'>
								<input type = 'hidden' name='checkOutDate' value = '\${end.format('YYYY-MM-DD')}'>`;
								console.log("날짜 히든 추가 됐니?");
							});
							formObj.append(str)//.submit();
						//submit button event
					});
			
			const imageElement=document.getElementById('img');
			
			imageElement.addEventListener('click', function () {
				  if (full==0) {
				    imageElement.src = '/resources/img/fullheart.png';
				    full=1;
				    
				  }else {
				    imageElement.src = '/resources/img/emptyheart.png';
				    full=0;
				  }
				  
			});
			
			
		});
		/* window.onbeforeunload = function() {
			$.ajax({
				type:'post',
				url:'/wish/full',
				data:{"full" : full, "memberID" : ${ wishlist.memberID }},
				dataType:'text',
				success : function(data){
				}
			});
			  return false;
		}; */
		
		window.addEventListener('unload', function() {
			$.ajax({
				type:'post',
				url:'/wish/full',
				data:{"full" : full, "MemberID" : ${ wishlist.memberID }},
				dataType:'text',
				success : function(data){
				}
			});
		});
	</script>

	<%@ include file="/resources/in/header.jsp"%>

	<!-- 내용 -->

	<!-- Property Gallery  -->
	<div class="container-fluid p-0">
		<div class="row g-0">
			<div class="col-12">
				<div class="swiper property-gallery-slider">
					<div class="swiper-wrapper property-gallery-slider">
						<div class="swiper-slide">
							<a href="/resources/img/property-gallery-slider-1.jpg"
								class="link property-gallery"> <img
								src="/resources/img/product_img1.jpg" alt="image"
								class="img-fluid">
							</a>
						</div>
						<div class="swiper-slide">
							<a href="/resources/img/property-gallery-slider-2.jpg"
								class="link property-gallery"> <img
								src="/resources/img/product_img2.jpg" alt="image"
								class="img-fluid">
							</a>
						</div>
						<div class="swiper-slide">
							<a href="/resources/img/property-gallery-slider-3.jpg"
								class="link property-gallery"> <img
								src="/resources/img/product_img3.jpg" alt="image"
								class="img-fluid">
							</a>
						</div>
						<div class="swiper-slide">
							<a href="/resources/img/property-gallery-slider-4.jpg"
								class="link property-gallery"> <img
								src="/resources/img/product_img4.jpg" alt="image"
								class="img-fluid">
							</a>
						</div>
					</div>
					<div
						class="swiper-button-prev property-gallery-slider__btn property-gallery-slider__btn-prev">
					</div>
					<div
						class="swiper-button-next property-gallery-slider__btn property-gallery-slider__btn-next">
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
				<div class="section-space--sm">
					<div class="p-6 bg-neutral-0 rounded-4 mb-10">
						<div
							class="d-flex align-items-center justify-content-between flex-wrap gap-3">
							<div class="py-3 px-6 bg-primary-50 rounded-pill">
								<h5 class="clr-primary-300 d-inline-block mb-0">3성급</h5>
							</div>
							
							
							
							<!-- 좋아요 하트 영역 -->


							<ul class="list list-row gap-3 align-items-center">
								<li>
								<c:set var="test" value="${ wishlist.full }" scope="page"/> 
								<c:if test="${ test==0 }">
										<button class="like"
											style="background-color: white; border: 0px;">
											<img id="img" src="/resources/img/emptyheart.png" />
										</button>
								</c:if>
								<c:if test="${ test==1 }">
										<button class="like"
											style="background-color: white; border: 0px;">
											<img id="img" src="/resources/img/fullheart.png" />
										</button>
								</c:if>
								</li>
							</ul>


							<!-- 좋아요 하트 영역 -->
							
							
							
							
						</div>
						<h2 class="mt-4 mb-8">로이넷 호텔</h2>
						<ul
							class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
							<li>
								<div class="d-flex align-items-center gap-2">
									<span
										class="material-symbols-outlined mat-icon clr-secondary-400">
										distance </span>
									<p class="mb-0">마포대로 67, 마포, 서울, 대한민국, 04157</p>
								</div>
							</li>

							<li>
								<div class="d-flex align-items-center gap-1">
									<span
										class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span>
									<p class="mb-0">4.0(21)</p>
								</div>
							</li>

						</ul>
						<div class="hr-dashed my-8"></div>
						<ul
							class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
							<li>
								<div class="d-flex align-items-center gap-2">
									<span class="material-symbols-outlined mat-icon">
										home_work </span>
									<p class="mb-0">총 객실 수 : 250</p>
								</div>
							</li>

						</ul>
					</div>
					<div class="p-6 bg-neutral-0 rounded-4 mb-10">
						<h4 class="mb-5">상세설명</h4>
						<p class="mb-5 clr-neutral-500">모든 객실 내 무료 Wi-Fi이/가 제공되는 이
							숙소에서 즐거운 여행을 시작하세요. 서울의 마포에 위치한 본 숙소는 관광 명소 및 흥미로운 레스토랑과 가깝습니다.
							떠나기 전 유명한 경복궁을/를 방문해 보세요. 별 4개를 받은 본 고급 숙소는 투숙객에게 숙소 내 레스토랑 및
							피트니스 센터을/를 제공합니다..</p>
					</div>
					<div class="p-6 bg-neutral-0 rounded-4 mb-10">
						<h4 class="mb-5">편의시설</h4>
						<div class="mb-10">
							<div class="row g-4">
								<div class="col-md-4 col-lg-3">
									<ul class="list gap-4">
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block">에어컨 </span>
											</div>
										</li>
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block"> 세탁실</span>
											</div>
										</li>
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block"> 주차가능 </span>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-md-4 col-lg-3">
									<ul class="list gap-4">
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block"> 와이파이 </span>
											</div>
										</li>
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block"> 수영장</span>
											</div>
										</li>
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
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
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block"> 조식운영 </span>
											</div>
										</li>
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block"> 금연 </span>
											</div>
										</li>
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
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
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block"> 스파 </span>
											</div>
										</li>
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block"> 오션뷰</span>
											</div>
										</li>
										<li>
											<div class="d-flex align-items-center gap-2">
												<div
													class="w-6 h-6 d-grid place-content-center rounded-circle flex-shrink-0 bg-primary-50">
													<span
														class="material-symbols-outlined mat-icon fs-20 clr-primary-300">
														check </span>
												</div>
												<span class="d-inline-block"> 연회장 </span>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>

<c:if test="${ acc.room1_Name != ''}">


					<!-- 객실1 -->
			
					<form method="POST" action="/reservation/reserve" role="form">
					<div class="p-6 bg-neutral-0 rounded-4 mb-10">
						<div class="d-flex justify-content-between flex-wrap gap-3 mb-5">
							<h4 class="mb-0">객실</h4>

							<div
								class="d-flex bg-primary-3p gap-3 py-4 px-8 rounded-pill border border-neutral-40 mb-4">
								<span
									class="material-symbols-outlined mat-icon clr-neutral-200 fs-32 flex-shrink-0">
									calendar_month </span>
								<div class="flex-grow-1 CheckInOutDate1" >
									<input type="text" class="form-control input1" name="daterange">
								</div>
							</div>

						</div>


						<div class="container">

							<div class="container">
								<div class="image-wrapper">
									<img src="/resources/img/img_400_280.jpg" alt="image"
										class="img-fluid">
								</div>
								<input type="hidden" value="<%= request.getParameter("accommodationID") %>" name="accommodationID">
								<input type="hidden" name="accommodationName" value="${ acc.accommodationName} }">
								<div class="content-wrapper">
									<div class="property-card__body">
										<span class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium">
										<input name="roomName" value="${ acc.room1_Name }">
										</span>
									</div>
									<div class="card_body">
										<div
											class="d-flex flex-wrap justify-content-between align-items-center">
											<span class="d-block fs-20 fw-medium clr-primary-300">
												가격 </span> 
											<span class="d-block fs-20 fw-medium clr-primary-300">
											<input type="text" name="paymentAmount" value="${ acc.room1_Price }">
												 </span>
										</div>
									</div>
									<div class="property-card__body py-0">
										<div class="hr-dashed"></div>
									</div>
									<div class="property-card__body">
										<div
											class="d-flex flex-wrap justify-content-between align-items-center">
											<span class="d-block fs-20 fw-medium clr-primary-300">
											&nbsp; </span> <!-- <a href="/reservation/reserve"
												class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
												예약하기 </a> -->
												<input type="submit" value="예약하기">
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
</form>
</c:if>
<c:if test="${ acc.room2_Name != ''}">
<!-- 객실2 -->
			
					<form method="POST" action="/reservation/reserve" role="form">
					<div class="p-6 bg-neutral-0 rounded-4 mb-10">
						<div class="d-flex justify-content-between flex-wrap gap-3 mb-5">
							<h4 class="mb-0">객실</h4>

							<div
								class="d-flex bg-primary-3p gap-3 py-4 px-8 rounded-pill border border-neutral-40 mb-4">
								<span
									class="material-symbols-outlined mat-icon clr-neutral-200 fs-32 flex-shrink-0">
									calendar_month </span>
								<div class="flex-grow-1 CheckInOutDate" >
									<input type="text" class="form-control input1" name="daterange">
								</div>
							</div>

						</div>


						<div class="container">

							<div class="container">
								<div class="image-wrapper">
									<img src="/resources/img/img_400_280.jpg" alt="image"
										class="img-fluid">
								</div>
								<input type="hidden" value="<%= request.getParameter("accommodationID") %>" name="accommodationID">
								<input type="hidden" name="AccommodationName" value="${ acc.accommodationName }">
								<div class="content-wrapper">
									<div class="property-card__body">
										<span class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium">
										<input name="roomName" value="${ acc.room2_Name }">
										</span>
									</div>
									<div class="card_body">
										<div
											class="d-flex flex-wrap justify-content-between align-items-center">
											<span class="d-block fs-20 fw-medium clr-primary-300">
												가격 </span> 
											<span class="d-block fs-20 fw-medium clr-primary-300">
											<input type="text" name="paymentAmount" value="${ acc.room2_Price }">
												 </span>
										</div>
									</div>
									<div class="property-card__body py-0">
										<div class="hr-dashed"></div>
									</div>
									<div class="property-card__body">
										<div
											class="d-flex flex-wrap justify-content-between align-items-center">
											<span class="d-block fs-20 fw-medium clr-primary-300">
											&nbsp; </span> <!-- <a href="/reservation/reserve"
												class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
												예약하기 </a> -->
												<input type="submit" value="예약하기">
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
</form>
</c:if>
<c:if test="${ acc.room3_Name != ''}">
<!-- 객실3 -->
			
					<form method="POST" action="/reservation/reserve" role="form">
					<div class="p-6 bg-neutral-0 rounded-4 mb-10">
						<div class="d-flex justify-content-between flex-wrap gap-3 mb-5">
							<h4 class="mb-0">객실</h4>

							<div
								class="d-flex bg-primary-3p gap-3 py-4 px-8 rounded-pill border border-neutral-40 mb-4">
								<span
									class="material-symbols-outlined mat-icon clr-neutral-200 fs-32 flex-shrink-0">
									calendar_month </span>
								<div class="flex-grow-1 CheckInOutDate" >
									<input type="text" class="form-control input1" name="daterange">
								</div>
							</div>

						</div>


						<div class="container">

							<div class="container">
								<div class="image-wrapper">
									<img src="/resources/img/img_400_280.jpg" alt="image"
										class="img-fluid">
								</div>
								<input type="hidden" value="<%= request.getParameter("accommodationID") %>" name="accommodationID">
								<input type="hidden" name="AccommodationName" value="${ acc.accommodationName }">
								<div class="content-wrapper">
									<div class="property-card__body">
										<span class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium">
										<input name="roomName" value="${ acc.room3_Name }">
										</span>
									</div>
									<div class="card_body">
										<div
											class="d-flex flex-wrap justify-content-between align-items-center">
											<span class="d-block fs-20 fw-medium clr-primary-300">
												가격 </span> 
											<span class="d-block fs-20 fw-medium clr-primary-300">
											<input type="text" name="paymentAmount" value="${ acc.room3_Price }">
												 </span>
										</div>
									</div>
									<div class="property-card__body py-0">
										<div class="hr-dashed"></div>
									</div>
									<div class="property-card__body">
										<div
											class="d-flex flex-wrap justify-content-between align-items-center">
											<span class="d-block fs-20 fw-medium clr-primary-300">
											&nbsp; </span> <!-- <a href="/reservation/reserve"
												class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold">
												예약하기 </a> -->
												<input type="submit" value="예약하기">
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
</form>
</c:if>

					<div class="p-6 bg-neutral-0 rounded-4 mb-10">
						<div
							class="d-flex align-items-center justify-content-between flex-wrap gap-3 mb-5">
							<h4 class="mb-0">위치</h4>

						</div>
						<div class="w-100">
							<iframe class="w-100 h-400 rounded-4"
								src="https://maps.google.com/maps?q=서울특별시+마포구+마포대로+67+로이넷+호텔+서울+마포&t=&z=15&ie=UTF8&iwloc=&output=embed"></iframe>
						</div>
					</div>

					<div class="bg-neutral-0 rounded-4 py-8 px-5 mb-10">
						<div
							class="d-flex align-items-center gap-4 justify-content-between flex-wrap mb-10">
							<div class="d-flex align-items-center gap-2">
								<c:choose>
								<c:when test="${ reviews.size() != 0 }">
								<h3 class="mb-0">총 ${ reviews.size() }개 리뷰</h3>
								</c:when>
								<c:otherwise>
								<h3 class="mb-0">해당 숙소에 리뷰가 없습니다.</h3>
								</c:otherwise>
								</c:choose>
							</div>
						</div>
						<c:forEach var="review" items="${reviews }">
						<div class="bg-primary-5p rounded-4 p-6 mb-8">
							<div
								class="d-flex align-items-center flex-wrap justify-content-between gap-4">
								<div class="d-flex gap-5 align-items-center">
									
									<div class="flex-grow-1">
										<h5 class="mb-1 fw-semibold">${ review.title }</h5>
									</div>
								</div>
								<div class="text-sm-end"><h6 class="mb-1 fw-semibold">
								작성자 : ${ review.writer } <br>
								<fmt:formatDate value="${review.creationDate}" pattern="yyyy-MM-dd"/>
								</h6></div>
							</div>
							<div class="hr-dashed my-6"></div>
							<ul class="list list-row mb-2">
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate_half </span></li>
							</ul>
							<p class="mb-0 clr-neutral-500">${review.content }</p>
						</div>
						</c:forEach>
						<!-- <div class="bg-primary-5p rounded-4 p-6 mb-8">
							<div
								class="d-flex align-items-center flex-wrap justify-content-between gap-4">
								<div class="d-flex gap-5 align-items-center">
									<div
										class="w-15 h-15 flex-shrink-0 rounded-circle overflow-hidden">
										<span class="material-symbols-outlined mat-icon"
											style="font-size: 4em; color: orange;"> face </span>
									</div>
									<div class="flex-grow-1">
										<p class="mb-0 clr-neutral-500">베스트 리뷰</p>
										<h5 class="mb-1 fw-semibold">전체적으로 만족스러웠어요.</h5>
									</div>
								</div>
								<div class="text-sm-end"></div>
							</div>
							<div class="hr-dashed my-6"></div>
							<ul class="list list-row mb-2">
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>

								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate_half </span></li>
							</ul>
							<p class="mb-0 clr-neutral-500">매번 방문해서 그런지 객실 업그레이드까지 해주셔서
								너무 편히 잘쉬다 왔습니다</p>

						</div>

						<div class="bg-primary-5p rounded-4 p-6 mb-8">
							<div
								class="d-flex align-items-center flex-wrap justify-content-between gap-4">
								<div class="d-flex gap-5 align-items-center">
									<div
										class="w-15 h-15 flex-shrink-0 rounded-circle overflow-hidden">
										<span class="material-symbols-outlined mat-icon"
											style="font-size: 4em; color: orange;">
											sentiment_satisfied </span>
									</div>
									<div class="flex-grow-1">
										<p class="mb-0 clr-neutral-500">베스트 리뷰</p>
										<h5 class="mb-1 fw-semibold">기대 이상이네요.</h5>
									</div>
								</div>
								<div class="text-sm-end"></div>
							</div>
							<div class="hr-dashed my-6"></div>
							<ul class="list list-row mb-2">
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>


							</ul>
							<p class="mb-0 clr-neutral-500">룸 컨디션도 좋았고 가격두 괜춘하고 다음에 또
								이용할려구요 다만 밤에 슈퍼카 소리 좀 시끄러움 앞에 공사하고있어서 오전에시끄러움 퇴실시간쯤 엘레베이터
								층층마다서요^^.. 그래도 위치조음</p>

						</div>
						<div class="bg-primary-5p rounded-4 p-6 mb-8">
							<div
								class="d-flex align-items-center flex-wrap justify-content-between gap-4">
								<div class="d-flex gap-5 align-items-center">
									<div
										class="w-15 h-15 flex-shrink-0 rounded-circle overflow-hidden">
										<span class="material-symbols-outlined mat-icon"
											style="font-size: 4em; color: orange;">
											sentiment_very_satisfied </span>
									</div>
									<div class="flex-grow-1">
										<p class="mb-0 clr-neutral-500">베스트 리뷰</p>
										<h5 class="mb-1 fw-semibold">여기만한 곳은 어디에도 없을 거예요.</h5>
									</div>
								</div>
								<div class="text-sm-end"></div>
							</div>
							<div class="hr-dashed my-6"></div>
							<ul class="list list-row mb-2">
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate_half </span></li>
							</ul>
							<p class="mb-0 clr-neutral-500">체크인 카운터가 고층에 있습니다 가습기도 요청하면
								받을 수 있고 다만 옆이 공사중이라 그런지는 몰라도 객실 창문이 막혀있는점은 아쉬웠습니다 작은 창문은 열리기는
								하는데 큰 창은 가림막으로 완전히 막혀있습니다 주차비는 하루 만원으로 따로 나오고 직원분들도 친절하고 객실도
								깔끔해서 좋습니다 바로 건너편에 코엑스랑 파르나스몰도 있어서 구경하기에 좋습니다 횡단보도 하나만 건너면 도착해요</p>

						</div>

						<div class="bg-primary-5p rounded-4 p-6 mb-8">
							<div
								class="d-flex align-items-center flex-wrap justify-content-between gap-4">
								<div class="d-flex gap-5 align-items-center">
									<div
										class="w-15 h-15 flex-shrink-0 rounded-circle overflow-hidden">
										<span class="material-symbols-outlined mat-icon"
											style="font-size: 4em; color: orange;">
											sentiment_very_dissatisfied </span>
									</div>
									<div class="flex-grow-1">
										<h5 class="mb-1 fw-semibold">종환이랑 또 오고싶어요.</h5>
									</div>
								</div>
								<div class="text-sm-end"></div>
							</div>
							<div class="hr-dashed my-6"></div>
							<ul class="list list-row mb-2">
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate </span></li>
								<li><span
									class="material-symbols-outlined mat-icon solid fs-32 clr-tertiary-300">
										star_rate_half </span></li>
							</ul>
							<p class="mb-0 clr-neutral-500">이번에 처음 온건데 너무 설레고 좋았어요 분위기도
								좋았구요 남자친구도 정말 좋아했어요 깔금하고 향도 되게 좋더라구요 강추합니다!!</p>
						</div> -->


						<a href="#"
							class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill active">
							더 많은 리뉴 보기 </a>
					</div>
					<div class="bg-neutral-0 rounded-4 py-8 px-5">
						<h4 class="mb-0">리뷰 쓰기</h4>
						<div class="hr-dashed my-6"></div>
						<!-- <p class="fs-20 fw-medium">별점 *</p>
						<ul class="list list-row mb-6">
							<li><span
								class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300">
									star_rate </span></li>
							<li><span
								class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300">
									star_rate </span></li>
							<li><span
								class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300">
									star_rate </span></li>
							<li><span
								class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300">
									star_rate_half </span></li>
							<li><span
								class="material-symbols-outlined mat-icon fs-32 solid clr-tertiary-300">
									star_rate_half </span></li>
						</ul> -->
						<c:choose>
					    <c:when test="${member != null }">
						<form action="review/write" method="POST">
							<input type="hidden" value="<%= request.getParameter("accommodationID") %>" name="accommodationID">
							<input type="hidden" value="${member.memberID }" name="memberID">
							<div class="row g-4">
								<div class="col-12">
									<label for="review-name" class="fs-20 fw-medium d-block mb-3">작성자
										</label> 
										<input type="text"
										class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5"
										value="${member.name }" id="review-name" name="writer" readonly>
								</div>
								<div class="col-12">
									<label for="review-email" class="fs-20 fw-medium d-block mb-3">제목
										</label> 
										<input type="text"
										class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5"
										id="review-name" name="title">
									<!-- 	<select name="item"
										class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5"
										id="review-email">
										<option selected>제목을 선택 해주세요</option>
										<option value="title1">기대 이상이에요.</option>
										<option value="title2">너무 행복해요.</option>
										<option value="title3">다시 오고싶어요.</option>
									</select> -->
								</div>
								<div class="col-12">
									<label for="review-review" class="fs-20 fw-medium d-block mb-3">리뷰
										</label>
									<textarea id="review-review" rows="5" name="content"
										class="form-control bg-primary-3p border border-neutral-40 rounded-5 py-3 px-5"></textarea>
								</div>
								<div class="col-12">
									<input type="submit" value="리뷰작성" style="border:0px;"
										class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill active">
								</div>
							</div>
						</form>
						</c:when>
						<c:otherwise>
						<b>로그인 후 이용해주시기 바랍니다.</b>
						<a href="/member/login" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold">
						로그인하러가기</a>
						</c:otherwise>
						</c:choose>
						
					</div>
				</div>
				
			</div>
		</div>

	</div>
	<!-- /Property Details Body -->
	<script>
	let result = "${review}";
	
	if(result === 'success') {
		alert('리뷰가 등록되었습니다.');
	}
	
	</script>
	<%@ include file="/resources/in/footer.jsp"%>
</body>

</html>