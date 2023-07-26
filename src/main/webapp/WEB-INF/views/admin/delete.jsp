<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<meta name="description"
	content="CoreUI - Open Source Bootstrap Admin Template">
<meta name="author" content="Łukasz Holeczek">
<meta name="keyword"
	content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
<title>숙소 삭제</title>

<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="assets/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!-- Vendors styles-->
<link rel="stylesheet"
	href="/resources/admin/vendors/simplebar/css/simplebar.css">
<link rel="stylesheet" href="/resources/admin/css/vendors/simplebar.css">
<!-- Main styles for this application-->
<link href="/resources/admin/css/style.css" rel="stylesheet">
<!-- We use those styles to show code examples, you should remove them in your application.-->
<link href="/resources/admin/css/examples.css" rel="stylesheet">
<link
	href="/resources/admin/vendors/@coreui/chartjs/css/coreui-chartjs.css"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/fonts/material-icon.css">
</head>
<body>
	<%@ include file="/resources/admin/in/sidebar.jsp"%>
	<%@ include file="/resources/admin/in/header.jsp"%>
	<div class="wrapper d-flex flex-column min-vh-100 bg-light">
		<div class="tab-pane fade show" id="delete">
			<div class="d-grid gap-3" align="center">
				<div class="p-2"></div>
				<div class="p-2">
					<h3>비밀번호를 입력해주세요.</h3>
				</div>

				<form action="/admin/deleteProc" onsubmit="return confirmSubmit();">
					<div class="p-2">
						<input type="password" name="checkPwd" id="checkPwd"> 
						<input type="hidden" value="${seller.businessNumber}" name="businessNumber"> 
						<input type="hidden" value="<%= request.getParameter("accommodationID") %>" name="accommodationID"> 
						<input type="submit" value="회원탈퇴" class="btn btn-danger">
					</div>
				</form>	
			</div>
		</div>
	</div>
	<script>
		function confirmSubmit() {
			var confirmResult = confirm('정말로 해당숙소를 삭제하시겠습니까?');
			return confirmResult; // '예'를 선택하면 true, '아니요'를 선택하면 false를 반환
		}
	</script>
</body>
</html>