<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1, user-scalable=yes,initial-scale=1.0, height=device-height" />
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
	
		<title>Blog Home</title>	
	</head>

	<body>
		<div class="content_container">
			<div class="content_title_area">
				<strong>
					<a href="#" class="content_category">카테고리</a>
				</strong>
				
				<h1 class="content_title">제목입니다.</h1>
				
				<span class="content_sub">
					userid
					&nbsp;|&nbsp;
					2020.12.12. 12:12
				</span>
			</div>
			
			<div class="content_content_area">
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
				<p>내용</p>
			</div>
		</div>
		
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>