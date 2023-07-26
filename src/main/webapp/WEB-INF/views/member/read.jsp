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
				<div class="p-6 bg-neutral-0 rounded-4 mb-10"
								style="border: 1px solid black;">
								<div
									class="d-flex align-items-center justify-content-between flex-wrap gap-3">
									<img src="/resources/img/jonghwantest.png" alt="image" />

									<div>
										<span class="mt-4 mb-8"
											style="font-size: 30px; font-weight: bold;">내 정보</span>
										<ul
											class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
											<li>
												<div class="d-flex align-items-center gap-2">
													<span
														class="material-symbols-outlined mat-icon clr-secondary-400">
														distance </span>
													<p class="mb-0">이메일 : ${ member.email }</p>
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
										<p class="mb-0">이름 : ${ member.name }</p>
									</div>
								</ul>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">비밀번호 : ${ member.password }</p>
									</div>
								</ul>
								<br>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">전화번호 : ${ member.phoneNumber }</p>
									</div>
								</ul>
								<div class="mx-auto p-2" style="height: 50px;"></div>
											<button class="btn btn-warning"
												style="margin: 0 auto; display: block;"
												onclick="location.href='<%= request.getContextPath() %>/member/modify?email=${member.email }'">내
												정보수정</button>



							</div>
				<!-- 내부 영역 (끝) -->



			</div>
			<!-- 영역 구분 (필수) -->
		</div>
	</div>

	<%@ include file="/resources/in/footer.jsp"%>

</body>

</html>