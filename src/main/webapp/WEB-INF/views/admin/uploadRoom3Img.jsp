<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/admin/uploadRoom3Img" method="post" enctype="multipart/form-data">
		<input type="hidden" name="accommodationID" value="<%= request.getParameter("accommodationID") %>">
		메인 이미지 : <input type="file" name="room3_img">
		<input type="submit" value="이미지 등록">
	</form>
</body>
</html>