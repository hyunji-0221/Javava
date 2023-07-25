<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>Javava 관리자</title>

    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendors styles-->
    <link rel="stylesheet" href="/resources/admin/vendors/simplebar/css/simplebar.css">
    <link rel="stylesheet" href="/resources/admin/css/vendors/simplebar.css">
    <!-- Main styles for this application-->
    <link href="/resources/admin/css/style.css" rel="stylesheet">
    <!-- We use those styles to show code examples, you should remove them in your application.-->
    <link href="/resources/admin/css/examples.css" rel="stylesheet">
    <link href="/resources/admin/vendors/@coreui/chartjs/css/coreui-chartjs.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/fonts/material-icon.css">
  </head>
  <body>
    	<%@ include file="/resources/admin/in/sidebar.jsp" %>
    <div class="wrapper d-flex flex-column min-vh-100 bg-light">
   
	<form action="/admin/uploadMain" method="post" enctype="multipart/form-data">
		<input type="hidden" name="accommodationID" value="<%= request.getParameter("accommodationID") %>">
		메인 이미지 : <input type="file" name="main_img">
		<input type="submit" value="이미지 등록">
	</form>
	<form action="/admin/uploadRoom1" method="post" enctype="multipart/form-data">
		객실1 이미지 : <input type="file" name="room1_img">
		<input type="submit" value="이미지 등록">
	</form>
	<form action="/admin/uploadRoom2" method="post" enctype="multipart/form-data">
		객실2 이미지 : <input type="file" name="room2_img">
		<input type="submit" value="이미지 등록">
	</form>
	<form action="/admin/uploadRoom3" method="post" enctype="multipart/form-data">
		객실3 이미지 : <input type="file" name="room3_img">
		<input type="submit" value="이미지 등록">
	</form>
    
    
    </div>
      
  </body>
</html>