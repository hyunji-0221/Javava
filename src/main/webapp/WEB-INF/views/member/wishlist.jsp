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
					<a class="nav-link"
						href="<%= request.getContextPath() %>/member/read?email=${ member.email }">회원
						정보 수정</a> <a class="nav-link"
						href="<%= request.getContextPath() %>/member/myReservation?memberID=${ member.memberID }">예약
						내역</a> <a class="nav-link"
						href="<%= request.getContextPath() %>/member/wishlist?memberID=${ member.memberID }">찜
						내역</a> <a class="nav-link"
						href="<%= request.getContextPath() %>/member/modify?email=${ member.email }">내가
						쓴 리뷰</a> <a class="nav-link"
						href="<%= request.getContextPath() %>/member/modify?email=${ member.email }">회원탈퇴</a>
				</nav>
				<!-- 사이드바 영역 (끝) -->


				<!-- 내부 영역 (시작) -->

				<c:choose>
					<c:when test="${ wList[0].memberID ==null }">
						<h3>찜 목록이 비어있습니다.</h3>
					</c:when>
				</c:choose>

				<c:forEach items="${ wList }" var="item">
					<c:if test="${ item.full == 1 }">
						<div class="p-6 bg-neutral-0 rounded-4 mb-10"
							style="border: 1px solid black;">
							<div
								class="d-flex align-items-center justify-content-between flex-wrap gap-3">
								<img src="/resources/img/jonghwantest.png" alt="image" />

								<div>
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

								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">결제 금액 : ${ item.paymentAmount }원</p>
									</div>
								</ul>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">이미지 : ${ item.mainImg }원</p>
									</div>
								</ul>
								<div class="hr-dashed my-8"></div>
								<div class="d-flex align-items-center gap-1">
									<button type="button" class="btn btn-outline-primary">
										<a href="/product/product_detail" style="color: black;">숙소
											상세보기</a>
									</button>
									<button type="button" class="btn btn-outline-danger">
									<a href="/wish/delete?accommodationID=${ item.accommodationID }">찜 목록에서 제거</a>
									</button>
								</div>


							</div>
						</div>
					</c:if>
				</c:forEach>
				<!-- 내부 영역 (끝) -->



			</div>
			<!-- 영역 구분 (필수) -->
		</div>
	</div>

	<%@ include file="/resources/in/footer.jsp"%>

</body>

</html>