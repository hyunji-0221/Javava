<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- meta -->
    <%@ include file="/resources/in/meta.jsp" %>
    <link rel="stylesheet" href="/resources/css/member/join.css">
    <style>
        /* 중복아이디 존재하지 않는 경우 */
        .id_input_re_1 {
            color: green;
            display: none;
        }

        /* 중복아이디 존재하는 경우 */
        .id_input_re_2 {
            color: red;
            display: none;
        }

        .correct {
            color: green;
        }

        .incorrect {
            color: red;
        }
        
        .reserve_info{
        	margin-bottom: 30px;
        }
        
        .reserve_roomInfo{
        	font-weight : bold;
        	font-size : 20px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <%@ include file="/resources/in/header.jsp" %>
    <!-- /Header -->
    <div class="section-space--sm bg-primary-5p">
        <div class="container">
        <form action="/reservation/insert" method="post">
            <div class="row justify-content-center justify-content-xl-start">
                <div class="col-lg-10 col-xl-6" style="margin:0 auto">
					<div class=" rounded-4 p-6 p-lg-8">
						<input type="hidden" name="memberID" value="${ member.memberID }">
						<input type="hidden" name="accommodationID" value="${ reserve.accommodationID }">
							<h4 class="reserve_info">예약자 정보</h4>
							<p>예약자 이름</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
									<input type="text"
										class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5 id_input"
										name="reserveName"
										placeholder="체크인시 필요한 정보입니다.">
								</div>
							</div>
							<p>휴대폰 번호</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
									<input type="text"
										class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5 id_input"
										name="reservePhone"
										placeholder="체크인시 필요한 정보입니다.">
								</div>
							</div>
						
					</div>
				</div>
				<div class="col-lg-10 col-xl-6">
					<div class="bg-neutral-0 rounded-4 p-6 p-lg-8">
							<p>숙소 이름</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
									<p class="reserve_roomInfo">${ reserve.accommodationName }</p>
									<input type="hidden" name="accommodationName" value="${ reserve.accommodationName }">
									
								</div>
							</div>
							<p>객실 타입</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
								<p class="reserve_roomInfo">${ reserve.roomName }</p>
								<input type="hidden" name="roomName" value="${ reserve.roomName }">
								</div>
							</div>
							<p>체크인</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
								<p class="reserve_roomInfo">${ reserve.checkInDate }</p>
								<input type="hidden" name="checkInDate" value="${ reserve.checkInDate }">
								</div>
							</div>
							<p>체크 아웃</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
								<p class="reserve_roomInfo">${ reserve.checkOutDate }</p>
								<input type="hidden" name="checkOutDate" value="${ reserve.checkOutDate }">
								</div>
							</div>
						<div class="hr-dashed my-4"></div>
						<div
							class="d-flex align-items-center justify-content-between mb-10">
							<p class="mb-0 clr-neutral-500">총 결제 금액(VAT포함)</p>
							<p style="color:red; font-weight:bold; font-size:25px">${ reserve.paymentAmount }</p>
							<input type="hidden" name="paymentAmount" value="${ reserve.paymentAmount }">
						</div>
						<!-- <a href="#"
							class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-medium w-100 justify-content-center mb-6"> -->
							<input type="submit" class="d-inline-block" value="결제하기">
						<!-- </a> -->
					</div>
				</div>
            </div>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="/resources/in/footer.jsp" %>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
</body>
</html>
