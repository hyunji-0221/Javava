<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<style>
a {
	text-decoration: none !important
}

a:hover {
	text-decoration: none !important
}
</style>
<%@ include file="/resources/in/meta.jsp"%>

</head>

<body>
	<%@ include file="/resources/in/header.jsp"%>

	<div class="section-space">
		<div class="container">
			<div class="row g-4 justify-content-xxl-between">
				<!-- 영역 구분 (필수) -->



				<!-- 사이드바 영역 (시작) -->
				<nav class="nav flex-column">
					<a class="nav-link" href="<%= request.getContextPath() %>/member/read?email=${ member.email }">회원 정보 수정</a>
					<a class="nav-link" href="<%= request.getContextPath() %>/member/myReservation?memberID=${ member.memberID }">예약 내역</a>
					<a class="nav-link" href="<%= request.getContextPath() %>/member/wishlist?memberID=${ member.memberID }">찜 내역</a>
					<a class="nav-link" href="<%= request.getContextPath() %>/member/modify?email=${ member.email }">내가 쓴 리뷰</a>
					<a class="nav-link" href="<%= request.getContextPath() %>/member/modify?email=${ member.email }">회원탈퇴</a>
				</nav>
				<!-- 사이드바 영역 (끝) -->


				<!-- 내부 영역 (시작) -->
				<c:forEach items="${ rList }" var="item">
				<div class="p-6 bg-neutral-0 rounded-4 mb-10"
					style="border: 1px solid black;">
					<div
						class="d-flex align-items-center justify-content-between flex-wrap gap-3">
						<img src="/resources/img/jonghwantest.png" alt="image" />

						<div>
							<ul
								class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
								<div class="d-flex align-items-center gap-2">
									<span
										class="material-symbols-outlined mat-icon clr-secondary-400">
										distance </span>
									<p class="mb-0">예약번호 : ${ item.reservationID }</p>
								</div>
							</ul>
							<span class="mt-4 mb-8"
								style="font-size: 30px; font-weight: bold;">${ item.accommodationName }</span>
							<ul
								class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
								<li>
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">${ item.address }</p>
									</div>
								</li>
							</ul>
						</div>
						<ul class="list list-row gap-3 align-items-center">
							<li><a href="#"
								class="link w-8 h-8 d-grid place-content-center bg-primary-50 clr-primary-300 rounded-circle :bg-primary-300 :clr-neutral-0">
									<span class="material-symbols-outlined mat-icon fs-20">
										favorite </span>
							</a></li>
						</ul>
					</div>
					<br>
					<ul
						class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
						<div class="d-flex align-items-center gap-2">
							<span
								class="material-symbols-outlined mat-icon clr-secondary-400">
								distance </span>
							<p class="mb-0">예약자 : ${ item.reserveName }</p>
						</div>
					</ul>
					<ul
						class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
						<div class="d-flex align-items-center gap-2">
							<span
								class="material-symbols-outlined mat-icon clr-secondary-400">
								distance </span>
							<p class="mb-0">연락처 : ${ item.reservePhone }</p>
						</div>
					</ul>
					<br>
					<ul
						class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
						<div class="d-flex align-items-center gap-2">
							<span
								class="material-symbols-outlined mat-icon clr-secondary-400">
								distance </span>
							<p class="mb-0">체크인 : ${ item.checkInDate }</p>
						</div>
					</ul>
					<ul
						class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
						<div class="d-flex align-items-center gap-2">
							<span
								class="material-symbols-outlined mat-icon clr-secondary-400">
								distance </span>
							<p class="mb-0">체크아웃 : ${ item.checkOutDate }</p>
						</div>
					</ul>
					<br>
					<ul
						class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
						<div class="d-flex align-items-center gap-2">
							<span
								class="material-symbols-outlined mat-icon clr-secondary-400">
								distance </span>
							<p class="mb-0">결제 금액 : ${ item.paymentAmount }원</p>
						</div>
					</ul>
					<div class="hr-dashed my-8"></div>
					<div class="d-flex align-items-center gap-1">
						<button type="button" class="btn btn-outline-primary">
							<a href="/product/product_detail" style="color: black;">숙소
								상세보기</a>
						</button>
						<button type="button" class="btn btn-outline-danger">
							<a href="/product/product_detail" style="color: black;">예약
								취소하기</a>
						</button>
					</div>



				</div>
				</c:forEach>
				<!-- 내부 영역 (끝) -->



			</div>
			<!-- 영역 구분 (필수) -->
		</div>
	</div>

	<%@ include file="/resources/in/footer.jsp"%>

</body>

</html>