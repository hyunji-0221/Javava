<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<div class="col-lg-4 col-xxl-3">
					<div class="bg-primary-5p rounded-4 p-6 mb-6">
						<div class="list-group faq-nav">
							<a class="list-group-item faq-nav__link active"
								data-bs-toggle="list" href="#my_reservation"> 예약 내역 </a> <a
								class="list-group-item faq-nav__link" data-bs-toggle="list"
								href="#my_favourite"> 찜 내역 </a> <a
								class="list-group-item faq-nav__link" data-bs-toggle="list"
								href="#my_review"> 내가 쓴 리뷰 </a> <a
								class="list-group-item faq-nav__link" data-bs-toggle="list"
								href="#my_account"> 회원 정보 수정 </a> <a
								class="list-group-item faq-nav__link" data-bs-toggle="list"
								href="#delete"> 회원탈퇴 </a>
						</div>
					</div>
				</div>


				<div class="col-lg-8">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="my_reservation">
						
						
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
												<p class="mb-0">예약번호 : 062-154772-01-014</p>
											</div>
										</ul>
										<span class="mt-4 mb-8"
											style="font-size: 30px; font-weight: bold;">로이넷 호텔</span>
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
										<p class="mb-0">예약자 : 박종환</p>
									</div>
								</ul>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">연락처 : 010-4827-0401</p>
									</div>
								</ul>
								<br>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">체크인 : 2023.08.01 15:00</p>
									</div>
								</ul>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">체크아웃 : 2023.08.05 11:00</p>
									</div>
								</ul>
								<br>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">결제 금액 : 284,500원</p>
									</div>
								</ul>
								<div class="hr-dashed my-8"></div>
								<div class="d-flex align-items-center gap-1">
									<button type="button" class="btn btn-outline-primary">
										<a href="/product/product_detail" style="color: black;">숙소
											상세보기</a>
									</button>
									<button type="button" class="btn btn-outline-danger">
										<a href="/product/product_detail" style="color: black;">예약 취소하기</a>
									</button>
								</div>
							</div>
							
							
							
							
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
												<p class="mb-0">예약번호 : 062-154772-01-014</p>
											</div>
										</ul>
										<span class="mt-4 mb-8"
											style="font-size: 30px; font-weight: bold;">로이넷 호텔</span>
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
										<p class="mb-0">예약자 : 박종환</p>
									</div>
								</ul>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">연락처 : 010-4827-0401</p>
									</div>
								</ul>
								<br>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">체크인 : 2023.08.01 15:00</p>
									</div>
								</ul>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">체크아웃 : 2023.08.05 11:00</p>
									</div>
								</ul>
								<br>
								<ul
									class="list list-row flex-wrap align-items-center list-divider-dot gap-4 gap-md-0">
									<div class="d-flex align-items-center gap-2">
										<span
											class="material-symbols-outlined mat-icon clr-secondary-400">
											distance </span>
										<p class="mb-0">결제 금액 : 284,500원</p>
									</div>
								</ul>
								<div class="hr-dashed my-8"></div>
								<div class="d-flex align-items-center gap-1">
									<button type="button" class="btn btn-outline-primary">
										<a href="/product/product_detail" style="color: black;">숙소
											상세보기</a>
									</button>
									<button type="button" class="btn btn-outline-danger">
										<a href="/product/product_detail" style="color: black;">예약 취소하기</a>
									</button>
								</div>



							</div>
						</div>


						<div class="tab-pane fade show" id="my_favourite">
							<div class="accordion accordion--separated accordion--secondary"
								id="accordionExample">
								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											333</button>
									</h2>
									<div id="collapseOne" class="accordion-collapse collapse show"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">3333</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">
											333?</button>
									</h2>

									<div id="collapseTwo" class="accordion-collapse collapse"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">33333</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade show" id="my_review">
							<div class="accordion accordion--separated accordion--secondary"
								id="accordionExample">
								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											333</button>
									</h2>
									<div id="collapseOne" class="accordion-collapse collapse show"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">3333</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">1
										</button>
									</h2>

									<div id="collapseTwo" class="accordion-collapse collapse"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">33333</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade show" id="my_account">
							<div class="accordion accordion--separated accordion--secondary"
								id="accordionExample">
								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											<h3>내 정보</h3>
										</button>
									</h2>
									<div id="collapseOne" class="accordion-collapse collapse show"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<table align="center">
												<tr align="center">
													<td><h5>이메일</h5></td>
													<td><h5>${ member.email }</h5></td>
												</tr>
												<tr align="center">
													<td><h5>이름</h5></td>
													<td><h5>${ member.name }</h5></td>
												</tr>
												<tr align="center">
													<td><h5>비밀번호</h5></td>
													<td><h5>${ member.password }</h5></td>
												</tr>
												<tr align="center">
													<td><h5>전화번호</h5></td>
													<td><h5>${ member.phoneNumber }</h5></td>
												</tr>
											</table>
											<div class="mx-auto p-2" style="height: 50px;"></div>
											<button class="btn btn-warning"
												style="margin: 0 auto; display: block;"
												onclick="location.href='<%= request.getContextPath() %>/member/modify?email=${member.email }'">내
												정보수정</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade show" id="delete">
							<div class="d-grid gap-3" align="center">
								<div class="p-2"></div>
								<div class="p-2">
									<h3>비밀번호를 입력해주세요.</h3>
								</div>

								<form action="/member/delete" onsubmit="return confirmSubmit();">
									<div class="p-2">
										<input type="password" name="checkPwd" id="checkPwd">
										<input type="hidden" value="${member.email}" name="email">
										<input type="submit" value="회원탈퇴" class="btn btn-danger">
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>

	</div>
	<script>
		let result = "${result}";
		if (result === 'failDelete') {
			alert('비밀번호가 틀렸습니다!');
		}
		if (result === 'update') {
			alert('회원정보가 정상적으로 수정되었습니다.');
		}
		function confirmSubmit() {
			var confirmResult = confirm('정말로 회원탈퇴하시겠습니까?');
			return confirmResult; // '예'를 선택하면 true, '아니요'를 선택하면 false를 반환
		}
	</script>

	<%@ include file="/resources/in/footer.jsp"%>

</body>

</html>