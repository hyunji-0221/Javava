<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
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
								data-bs-toggle="list" href="#my_reservation"> 주문예약내역(최근 1년) </a>
							<a class="list-group-item faq-nav__link" data-bs-toggle="list"
								href="#my_favourite"> 찜리스트 </a> <a
								class="list-group-item faq-nav__link" data-bs-toggle="list"
								href="#my_review"> 나의 리뷰 </a> <a
								class="list-group-item faq-nav__link" data-bs-toggle="list"
								href="#my_inquiry"> 나의 문의 내역 </a> <a
								class="list-group-item faq-nav__link" data-bs-toggle="list"
								href="#my_account"> 내 정보 수정 </a> <a
								class="list-group-item faq-nav__link" data-bs-toggle="list"
								href="#delete"> 회원탈퇴 </a>
						</div>
					</div>
				</div>


				<div class="col-lg-8">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="my_reservation">
							<div class="accordion accordion--separated accordion--secondary"
								id="accordionExample">
								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											12312312313</button>
									</h2>
									<div id="collapseOne" class="accordion-collapse collapse show"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">3213213321</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">
											12321321321?</button>
									</h2>
									<div id="collapseTwo" class="accordion-collapse collapse"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">321321321</div>
									</div>
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

						<div class="tab-pane fade show" id="my_inquiry">
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
											<div class="mx-auto p-2" style="height:50px;"></div>
												<button class="btn btn-warning" style="margin:0 auto; display:block;"
												onclick="location.href='<%= request.getContextPath() %>/member/modify?email=${member.email }'">내 정보수정</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade show" id="delete">
							<div class="d-grid gap-3">
								<div class="p-2"></div>
								<div class="p-2"><h3>비밀번호를 입력해주세요.</h3></div>
								
								<form action="/member/delete" onsubmit="return confirmSubmit();">
									<div class="p-2"><input type="password" name="checkPwd" id="checkPwd">
									<input type="hidden" value="${member.email}" name="email"> 
									<input type="submit" value="회원탈퇴" class="btn btn-danger"></div>
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