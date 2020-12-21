<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1, user-scalable=yes,initial-scale=1.0, height=device-height" />
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/write.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/apply_button.css">
		<script src="//cdn.ckeditor.com/4.15.1/full/ckeditor.js"></script>
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		
		<title>Blog Home</title>	
	</head>

	<body>
		<form entrype="multipart/form-data">
			<table>
				<colgroup>
					<col width="25%" />
					<col width="75%" />
				</colgroup>
				
				<tr>
					<td>
						<select id="category">
							<option value="">카테고리 선택</option>
							<option value="가">가</option>
							<option value="나">나</option>
							<option value="다">다</option>
							<option value="라">라</option>
						</select>
					</td>
					<td>
						<input type="text" id="title" placeholder="제목을 입력하세요." />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="5" cols="60" name="content" id="content"></textarea>
					</td>
				</tr>
			</table>
			
			<table class="button_table">
				<tr>
					<td><button class="cancel_btn">취소</button><button class="write_btn">작성</button></td>
				</tr>
			</table>
		</form>
		<jsp:include page="footer.jsp"></jsp:include>
		
		<script src="${pageContext.request.contextPath}/js/ckeditor.js"></script>
		
		<script>
		$(document).on("click", ".cancel_btn", function(e) {
				var url = '<%= request.getSession().getAttribute("prev_url")%>';
				e.preventDefault();
				
				if (url == 'null') {
					location.href = 'homepage.do';
				} else {
					location.href = url;
				}
			});
		</script>
	</body>
</html>