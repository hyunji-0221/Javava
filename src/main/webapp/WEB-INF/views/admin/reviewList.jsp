<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<div class="body flex-grow-1 px-3">
			<div class="container-lg">
				<div class="row">
					<h1>내 숙소 리뷰목록</h1>
					<hr class="border border-primary border-1 opacity-75">
					<table class="table">
						<thead class="table-dark" align="center">
							<th>숙소명</th>
							<th>작성자</th>
							<th>제목</th>
							<th>내용</th>
							<th>작성일</th>
							<th>평점</th>
						</thead>
					<c:forEach items="${ reviews }" var="review">
						<tbody align="center">
							<td>${review.accommodationName }</td>
							<td>${review.writer }</td>
							<td>${review.title }</td>
							<td>${review.content}</td>
							<td><fmt:formatDate value="${review.creationDate }" pattern="yyyy-MM-dd" /></td>
							<td>${review.rating }</td>
						</tbody>
					</c:forEach>
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
	<script>
		
	</script>
	</div>


</body>
</html>