<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- preloader -->
	<div class="preloader">
		<div class="preloader__img">
			<img src="/resources/img/logo2.png" alt="image">
		</div>
	</div>
	<!-- preloader End -->
	<!-- Header Top  -->
	<div class="py-5 border-bottom header-top">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<ul
						class="list list-row flex-wrap gap-3 align-items-center justify-content-between">
						<li><a href="/" class="link d-inline-block"> <img
								src="/resources/img/logo2.png" alt="logo"
								class="logo d-xl-none"> <img
								src="/resources/img/logo1.png" alt="logo"
								class="logo d-none d-xl-inline-block">
						</a></li>
						<li>
							<ul
								class="list list-row flex-wrap align-items-center list-divider">
								<li>
									<div class="d-flex align-items-center gap-5">
										<div
											class="w-10 h-10 rounded-circle bg-primary-300 d-grid place-content-center flex-shrink-0">
											<span
												class="material-symbols-outlined mat-icon fs-24 clr-neutral-0 fw-300">
												phone_in_talk </span>
										</div>
										<div class="d-none d-lg-block">
											<span class="fs-12 d-block"> 예약 문의 </span> <a
												href="tel:406-555-0120"
												class="link d-block clr-neutral-700 :clr-primary-300">
												(02) 555-0000 </a>
										</div>
									</div>
								</li>
								<li>
									<div class="d-flex align-items-center gap-5">
										<div
											class="w-10 h-10 rounded-circle bg-secondary-300 d-grid place-content-center flex-shrink-0">
											<span
												class="material-symbols-outlined mat-icon fs-24 clr-neutral-700 fw-300">
												mark_as_unread </span>
										</div>
										<div class="d-none d-lg-block">
											<span class="fs-12 d-block"> 이메일 문의 </span> <a
												href="mailto:mail@example.com"
												class="link d-block clr-neutral-700 :clr-primary-300">
												mail@javava.com </a>
										</div>
									</div>
								</li>
								<li>
									<div class="d-flex align-items-center gap-5">
										<div
											class="w-10 h-10 rounded-circle bg-tertiary-300 d-grid place-content-center flex-shrink-0">
											<span
												class="material-symbols-outlined mat-icon fs-24 clr-neutral-700 fw-300">
												pin_drop </span>
										</div>
										<div class="d-none d-lg-block">
											<span class="fs-12 d-block"> 고객센터위치 </span> <span
												class="d-block"> 송파대로1 </span>
										</div>
									</div>
								</li>
							</ul>
						</li> 
						<c:choose>
       					 <c:when test="${member != null}">
							<li class="d-none d-md-block"><a href="/member/logout"
							class="link btn bg-primary-300 :bg-primary-300 clr-neutral-0 :clr-neutral-0 fw-600 py-4 px-8 rounded-pill">
								로그아웃 </a></li>
						</c:when>
						 <c:when test="${seller != null}">
							<li class="d-none d-md-block"><a href="/seller/logout"
							class="link btn bg-primary-300 :bg-primary-300 clr-neutral-0 :clr-neutral-0 fw-600 py-4 px-8 rounded-pill">
								로그아웃 </a></li>
						</c:when>
						<c:otherwise>
						<li class="d-none d-md-block"><a href="/member/login"
							class="link btn bg-primary-300 :bg-primary-300 clr-neutral-0 :clr-neutral-0 fw-600 py-4 px-8 rounded-pill">
								로그인/회원가입 </a></li>
						</c:otherwise>
						</c:choose>
						
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- /Header Top  -->
	<!-- Header -->
	<header class="header header--sticky border-bottom">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav
						class="menu d-lg-flex justify-content-lg-between align-items-lg-center">
						<div
							class="menu-mobile-nav d-flex align-items-center justify-content-between py-3 py-lg-0 order-lg-2">
							<button
								class="menu-toggle w-10 h-10 p-0 border-0 lh-1 bg-primary-50 clr-primary-500 transition :clr-primary-50 :bg-primary-500 rounded-1 flex-shrink-0 order-2 order-lg-1 d-lg-none">
								<span class="material-symbols-outlined mat-icon fs-28">
									menu </span>
							</button>
							<ul
								class="list list-row gap-4 flex-wrap align-items-center order-1">
								<li>
									
								</li>
								<li>
									<div class="dropdown">
										<a href="#"
											class="link d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-neutral-500"
											data-bs-toggle="dropdown" data-bs-offset="0,16"> <span
											class="material-symbols-rounded mat-icon position-relative">
												notifications <span
												class="d-inline-block position-absolute top-0 end-0 w-2 h-2 rounded-circle bg-primary-300"></span>
										</span>
										</a>
										<div
											class="dropdown-menu dropdown-menu-xl-end p-0 border border-neutral-30">
											<div class="p-4 p-xxl-6 max-width">
												<h5 class="mb-4">Notifications</h5>
												<ul class="list gap-2">
													<li><a href="#"
														class="link d-flex gap-4 dropdown-item px-0 px-md-4">
															<div class="flex-shrink-0 d-none d-sm-block">
																<img src="/resources/img/user-3.jpg" alt="image"
																	class="img-fluid w-12 h-12 rounded-circle objec-fit-cover">
															</div>
															<div
																class="flex-grow-1 white-space-normal notifications-content">
																<h6 class="mb-0">Peter Parker</h6>
																<p class="fs-14 clr-neutral-500 mb-1">New message
																	alert! @trending</p>
																<span class="d-block fs-12 clr-neutral-100"> 6
																	Sec ago </span>
															</div>
													</a></li>
													<li><a href="#"
														class="link d-flex gap-4 dropdown-item px-0 px-md-4">
															<div class="flex-shrink-0 d-none d-sm-block">
																<img src="/resources/img/user-1.jpg" alt="image"
																	class="img-fluid w-12 h-12 rounded-circle objec-fit-cover">
															</div>
															<div
																class="flex-grow-1 white-space-normal notifications-content">
																<h6 class="mb-0">Gal Gadot</h6>
																<p class="fs-14 clr-neutral-500 mb-1">Measure
																	actions your users take Me</p>
																<span class="d-block fs-12 clr-neutral-100"> 3
																	Min ago </span>
															</div>
													</a></li>
													<li><a href="#"
														class="link d-flex gap-4 dropdown-item px-0 px-md-4">
															<div class="flex-shrink-0 d-none d-sm-block">
																<img src="/resources/img/user-2.jpg" alt="image"
																	class="img-fluid w-12 h-12 rounded-circle objec-fit-cover">
															</div>
															<div
																class="flex-grow-1 white-space-normal notifications-content">
																<h6 class="mb-0">Eva Green</h6>
																<p class="fs-14 clr-neutral-500 mb-1">Measure
																	actions your users take</p>
																<span class="d-block fs-12 clr-neutral-100"> 1
																	Week ago </span>
															</div>
													</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="dropdown">
										<a href="#" class="link d-inline-block"
											data-bs-toggle="dropdown" data-bs-offset="0,16"> <img
											src="/resources/img/login_img.png" alt="image"
											class="img-fluid w-10 h-10 rounded-circle objec-fit-cover">
										</a>
										<div
											class="dropdown-menu dropdown-menu-end p-0 border border-neutral-30">
											<div class="p-6">
											<c:choose>
       					 						<c:when test="${member != null}">
												<div class="d-flex align-items-center gap-4 max-width">
													<img src="/resources/img/login_img.png" alt="image"
														class="img-fluid w-12 h-12 rounded-circle object-fit-cover flex-shrink-0">
													<div class="flex-grow-1">
														<h5 class="mb-0">${member.name}</h5>
													</div>
												</div>
												</c:when>
												<c:when test="${seller != null}">
												<div class="d-flex align-items-center gap-4 max-width">
													<img src="/resources/img/login_img.png" alt="image"
														class="img-fluid w-12 h-12 rounded-circle object-fit-cover flex-shrink-0">
													<div class="flex-grow-1">
														<h5 class="mb-0">${seller.companyName}</h5>
													</div>
												</div>
												</c:when>
											</c:choose>
												<div class="hr-dashed mt-4 mb-2"></div>
												<ul class="list">
													<li>
													<c:choose>
       					 								<c:when test="${member != null}">
													<a href="/member/read?email=${member.email }"
														class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
															<span
															class="material-symbols-outlined mat-icon fs-28 flex-shrink-0">
																person </span> <span
															class="d-block fs-14 fw-medium flex-grow-1"> 내 계정 </span>
													</a>
														</c:when>
														<c:when test="${seller != null}">
													<a href="/member/read?sellerID=${seller.sellerID }"
														class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
															<span
															class="material-symbols-outlined mat-icon fs-28 flex-shrink-0">
																person </span> <span
															class="d-block fs-14 fw-medium flex-grow-1"> 내 계정 </span>
													</a>
														</c:when>
														<c:otherwise>
														<a href="/member/login"
														class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
															<span
															class="material-symbols-outlined mat-icon fs-28 flex-shrink-0">
																person </span> <span
															class="d-block fs-14 fw-medium flex-grow-1"> 내 계정 </span>
													</a>
														</c:otherwise>
													</c:choose>
													</li>
													<li><a href="#"
														class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
															<span
															class="material-symbols-outlined mat-icon fs-28 flex-shrink-0">
																event_note </span> <span
															class="d-block fs-14 fw-medium flex-grow-1"> 내 예약 </span>
													</a></li>
													<li><a href="#"
														class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
															<span
															class="material-symbols-outlined mat-icon fs-28 flex-shrink-0">
																favorite </span> <span
															class="d-block fs-14 fw-medium flex-grow-1">
																찜 목록 </span>
													</a></li>
												</ul>
												<c:choose>
       												 <c:when test="${member != null}">
												<div class="hr-dashed my-2"></div>
												<ul class="list">
													
													<li><a href="/member/logout"
														class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
															<span
															class="material-symbols-outlined mat-icon fs-28 flex-shrink-0">
																exit_to_app </span> <span
															class="d-block fs-14 fw-medium flex-grow-1"> 로그아웃 </span>
													</a></li>
												</ul>
												</c:when>
												</c:choose>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
						
						<ul class="list list-lg-row menu-nav order-lg-1">
							<c:choose>
       					 	<c:when test="${member.admin != null || seller != null }">
							<li><button class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold"
							style="margin-top:10px;" onclick="location.href='<%= request.getContextPath() %>/admin/index'">숙소등록</button>
								<%-- <ul class="list menu-sub">
									<c:if test="${member.admin == 'admin'}">
									<li class="menu-sub-list"><a href="/admin/index"
										class="link menu-sub-link"> 관리자 </a></li>
									</c:if>
										<li class="menu-sub-list"><a href="/product/add_product"
										class="link menu-sub-link"> 숙소등록 </a></li>
								</ul> --%>
							</li>
							</c:when>
							</c:choose>
							<c:if test="${member.admin == null && seller == null}">
							<li class="menu-list current-page"><a href="#"
								class="link menu-link has-sub"> 숙박 </a>
								<ul class="list menu-sub">
									<li class="menu-sub-list"><a href="/"
										class="link menu-sub-link"> 호텔/리조트 </a></li>
									<li class="menu-sub-list"><a href="home-2.html"
										class="link menu-sub-link"> 펜션 </a></li>

								</ul></li>
							<li class="menu-list"><a href="#"
								class="link menu-link has-sub"> 지역 </a>
								<ul class="list menu-sub">
									<li class="menu-sub-list"><a href="/"
										class="link menu-sub-link"> 수도권 </a></li>
									<li class="menu-sub-list"><a href="home-4.html"
										class="link menu-sub-link"> 그 외 지역 </a></li>

								</ul></li>
							</c:if>
							<li class="menu-list"><a href="#"
								class="link menu-link has-sub"> 고객센터 </a>
								<ul class="list menu-sub">
									<li class="menu-sub-list"><a href="/"
										class="link menu-sub-link"> 공지사항 </a></li>
									<li class="menu-sub-list"><a href="#"
										class="link menu-sub-link"> 자주 묻는 질문 </a></li>
									<li class="menu-sub-list"><a href="#"
										class="link menu-sub-link"> 1:1 문의 </a></li>

								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>