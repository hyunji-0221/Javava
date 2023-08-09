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
    
    <!-- PortOne SDK -->
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    <script>
	    function createOrderNum(){
	    	const date = new Date();
	    	const year = date.getFullYear();
	    	const month = String(date.getMonth() + 1).padStart(2, "0");
	    	const day = String(date.getDate()).padStart(2, "0");
	    	
	    	let orderNum = year + month + day;
	    	for(let i=0;i<10;i++) {
	    		orderNum += Math.floor(Math.random() * 8);	
	    	}
	    	return orderNum;
	    }
	    
        var IMP = window.IMP; 
        IMP.init("imp05080136"); 
    	
        function requestPay() {
            IMP.request_pay({
                pg : 'kakaopay',
                pay_method : 'card',
                merchant_uid: createOrderNum(), 
                name : '${reserve.roomName}',
                amount : ${reserve.paymentAmount},
                //buyer_email : 'Iamport@chai.finance',
                buyer_name : reserveName.value,
                buyer_tel : reservePhone.value,
                buyer_addr : '${reserve.address}' //호텔 주소
                //buyer_postcode : '123-456'	호텔 우편번호
            }, function (rsp) {
                if (rsp.success) {
                    console.log('rsp : ',rsp);
                    jQuery.ajax({
                    	url: '/order/verify_iamport/' + rsp.imp_uid,
                      	type: "POST"
                    }).done(function (data) {
                    		console.log('data1 : ',data);
                    		let amount = $(data).find('amount').text();//xml
                      if(rsp.paid_amount == amount){//토큰으로 받아온 값이 오른쪽 amount
                     		data = JSON.stringify({
	                        	imp_uid : rsp.imp_uid,
                    		  	reservationID : rsp.merchant_uid,
                    		  	memberID : memberID.value,
                    		  	accommodationID : accommodationID.value,
                    		  	accommodationName : accommodationName.value,
                    		  	address : address.value,
                    		  	checkInDate : checkInDate.value,
                    		  	checkOutDate : checkOutDate.value,
                    		  	paymentAmount : rsp.paid_amount,
                    		  	reserveName : rsp.buyer_name,
                    		  	reservePhone : rsp.buyer_tel,
                    		  	roomName : rsp.name
                    		});
                      		console.log('data : ',data);
                    		console.log('결제금액과 화면 금액이 같다면 콘솔출력');
                    		$.ajax({
                    			url : '/order/complete',
                    			type : 'POST',
                    			dataType : 'json',
                    			contentType : 'application/json', 
                    			data : data
                    		}).done(function(res) {
	                            if (res > 0) {
	                            	console.log('안떠?');
	                                alert('주문정보 저장 성공');
	                                createPayInfo(uid);
	                            }
	                            else {
	                                alert('주문정보 저장 실패');
	                            }
	                            
                        	})
                    	}
	                      else {
	                          alert('결제 실패');
	                      }
                    })
                  } else {
                    alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
                  }
                });
        }
        
    </script>
</head>
<body>
    <!-- Header -->
    <%@ include file="/resources/in/header.jsp" %>
    <!-- /Header -->
    <div class="section-space--sm bg-primary-5p">
        <div class="container">
        <!-- <form id=""> -->
            <div class="row justify-content-center justify-content-xl-start">
                <div class="col-lg-10 col-xl-6" style="margin:0 auto">
					<div class=" rounded-4 p-6 p-lg-8">
						<input type="hidden" id="memberID" name="memberID" value="${ member.memberID }">
						<input type="hidden" id="accommodationID" name="accommodationID" value="${ reserve.accommodationID }">
						<input type="hidden" id="address" name="address" value="${ reserve.address }">
							<h4 class="reserve_info">예약자 정보</h4>
							<p>예약자 이름</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
									<input type="text"
										class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5 id_input"
										name="reserveName" id="reserveName"
										placeholder="체크인시 필요한 정보입니다.">
								</div>
							</div>
							<p>휴대폰 번호</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
									<input type="text"
										class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5 id_input"
										name="reservePhone" id="reservePhone"
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
									<input type="hidden" id="accommodationName" name="accommodationName" value="${ reserve.accommodationName }">
									
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
								<input type="hidden" id="checkInDate" name="checkInDate" value="${ reserve.checkInDate }">
								</div>
							</div>
							<p>체크 아웃</p>
							<div class="row g-4">
								<div class="col-12 reserve_info">
								<p class="reserve_roomInfo">${ reserve.checkOutDate }</p>
								<input type="hidden" id="checkOutDate" name="checkOutDate" value="${ reserve.checkOutDate }">
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
							<!-- <input type="submit" class="d-inline-block" onclick="requestPay()" value="결제하기"> -->
							<button class="d-inline-block" onclick="requestPay()" >결제하기</button>
						<!-- </a> -->
					</div>
				</div>
            </div>
          <!-- </form> -->
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="/resources/in/footer.jsp" %>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
</body>
</html>
