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
<title>Javava 관리자</title>

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
</head>
<body>
	<%@ include file="/resources/admin/in/sidebar.jsp"%>

	<div class="wrapper d-flex flex-column min-vh-100 white">
		<%@ include file="/resources/admin/in/header.jsp"%>
		<div class="body flex-grow-1 px-3">
			<div class="container-lg">
				<div class="row">
					<h1>공지사항 조회</h1>
					<hr class="border border-primary border-1 opacity-75">
					<table class="table">
						<thead class="table-dark" align="center">
							<td width="10%">No.</td>
							<td width="60%">제목</td>
							<td width="20%">작성일</td>
							<td width="10%">조회수</td>
						</thead>
						<tbody align="center">
							<td>1</td>
							<td>성수기 요금 인상 안내</td>
							<td>2023.07.19</td>
							<td>34</td>
						</tbody>
						<tbody align="center">
							<td>2</td>
							<td>신한카드 페이백 이벤트</td>
							<td>2023.07.30</td>
							<td>45</td>
						</tbody>
						<tbody align="center">
							<td>3</td>
							<td>장마철 운휴 액티비티</td>
							<td>2023.07.15</td>
							<td>73</td>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- CoreUI and necessary plugins-->
	<script
		src="/resources/admin/vendors/@coreui/coreui/js/coreui.bundle.min.js"></script>
	<script src="/resources/admin/vendors/simplebar/js/simplebar.min.js"></script>
	<!-- Plugins and scripts required by this view-->
	<script src="/resources/admin/vendors/chart.js/js/chart.min.js"></script>
	<script
		src="/resources/admin/vendors/@coreui/chartjs/js/coreui-chartjs.js"></script>
	<script src="/resources/admin/vendors/@coreui/utils/js/coreui-utils.js"></script>
	<script src="resources/admin/js/main.js"></script>
	<script>
		
	</script>
	</div>


</body>
</html>