<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <%@ include file="/resources/in/meta.jsp" %>
  
</head>

<body>
  <div class="alert alert-success" role="alert" id="showAlert" align="center">
  	<h5></h5>
		</div>
<%@ include file="/resources/in/header.jsp" %>
  
  <!-- /Header -->
  <div class="section-space--sm bg-primary-5p signup-section">
    <div class="container">
      <div class="row justify-content-center justify-content-xl-start">
        <div class="col-lg-10 col-xl-6">
          <div class="bg-neutral-0 rounded-4 p-6 p-lg-8">
            <form action="/member/login" method="POST">
              <h3 class="mb-4"> 반갑습니다! </h3>
              <p class="mb-10"> 로그인 후 이용하시기 바랍니다.  </p>
              <p style="text-align:right;">사업자이신가요? <a href='/seller/login' class="link fw-semibold clr-primary-300">사업자로그인으로 가기</a> </p>
              <div class="row g-4">
                <div class="col-12">
                  <label for="email" class="fs-20 fw-medium d-block mb-3">이메일</label>
                  <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5" placeholder="이메일 입력해주세요" id="email" name="email">
                </div>
                <div class="col-12">
                  <label for="password" class="fs-20 fw-medium d-block mb-3">비밀번호</label>
                  <input type="text" class="form-control bg-primary-3p border border-neutral-40 rounded-pill py-3 px-5 mb-3" placeholder="비밀번호 입력해주세요" id="password" name="password">
                </div>
                <div class="col-12">
                  <p class="mb-0"> 아직 회원이 아니신가요? <a href="/member/join" class="link fw-semibold clr-primary-300">회원가입</a>
                  </p>
                </div>
                <div class="col-12">
                  <input type="submit" value="로그인"
                  class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold">
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
	<script>
		$(document).ready(function() {
			
			let result = '<c:out value="${result}"/>';
			showAlert(result);
			
		    function showAlert(result) {
		        if (result === '') {
		          $("#showAlert").hide();
		          return;
		        }
		        if (result === 'join') {
		        	$('#showAlert>h5').text('회원가입에 성공하였습니다!');
		        }
		        if (result === 'notEqual') {
		        	$('#showAlert>h5').text('이메일아이디 혹은 비밀번호가 일치하지 않습니다!');
		        	$("#showAlert").attr("class", "alert alert-danger");
		        }
		        if (result === 'empty') {
		        	$('#showAlert>h5').text('회원정보가 없습니다!');
		        	$("#showAlert").attr("class", "alert alert-danger");
		        }
		        
		          $("#showAlert").show();
		          // 일정 시간이 지난 후에 알림 메시지 숨김
		          setTimeout(function() {
		            $("#showAlert").hide();
		          }, 5000); // 5초 후 숨김
		        
		      }
			
		})
	</script>
  <%@ include file="/resources/in/footer.jsp" %>
  
</body>

</html>