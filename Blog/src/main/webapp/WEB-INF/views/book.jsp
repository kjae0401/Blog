<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1, user-scalable=yes,initial-scale=1.0, height=device-height" />
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/setting.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/apply_button.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts/fontello/css/fontello.css">
	
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		
		<title>Blog Home</title>	
	</head>

	<body>
		<div class="setting_container">
			<form>
				<table class="setting_table">
					<colgroup>
						<col width="25%" />
						<col width="75%" />
					</colgroup>
				
					<tr>
						<td><h4>타이틀 제목</h4></td>
						<td><input type="text" autocomplete="off"/></td>
					</tr>
					
					<tr>
						<td><h4>타이틀 배경</h4></td>
						<td class="setting_background">
							<div class="inputArea">
								<div class="select_img"><img src="${pageContext.request.contextPath}/css/images/nav_background_image.jpg" /></div>
							 	<input type="file" id="gdsImg" name="file" />
							 	
							 	<script>
							  		$("#gdsImg").change(function(){
							   			if(this.files && this.files[0]) {
							    			var reader = new FileReader;
							    			
							    			reader.onload = function(data) {
								     			$(".select_img img").attr("src", data.target.result).width(500);        
							    			}
							    			reader.readAsDataURL(this.files[0]);
							   			} else {
							   				$(".select_img img").attr("src", "css/images/nav_background_image.jpg").width(500);
							   				
							   			}
							  		});
							 	</script>
							</div>
						</td>
					</tr>
					
					<tr>
						<td><h4>카테고리</h4></td>
						<td>
							<ul class="tree">
    							<li>
      								<input type="checkbox" id="root" />
      								<label for="root">전체</label>
      								<input type="button" class="add_btn" value="추가" />
      								
      								<ul class="tree_items">
        								<li>
        									<input type="checkbox" id="1" />
		          							<label for="1">node3</label>
		          							<input type="button" class="add_btn" value="추가"/>
		          							<input type="button" class="delete_btn" value="삭제"/>
		          							<ul>
		            							<li><a href="https://opentutorials.org">node31</a> <input type="button" class="delete_btn" value="삭제"/></li>
		            							<li><a href="https://opentutorials.org">node32</a> <input type="button" class="delete_btn" value="삭제"/></li>
		            							<li><a href="https://opentutorials.org">node33</a> <input type="button" class="delete_btn" value="삭제"/></li>
		          							</ul>
        								</li>
      								</ul>
      								
      								<ul class="tree_items">
        								<li>
        									<input type="checkbox" id="2" />
		          							<label for="2">node3</label>
		          							<input type="button" class="add_btn" value="추가"/>
		          							<input type="button" class="delete_btn" value="삭제"/>
		          							<ul>
		            							<li><a href="https://opentutorials.org">node31</a> <input type="button" class="delete_btn" value="삭제"/></li>
		            							<li><a href="https://opentutorials.org">node32</a> <input type="button" class="delete_btn" value="삭제"/></li>
		            							<li><a href="https://opentutorials.org">node33</a> <input type="button" class="delete_btn" value="삭제"/></li>
		          							</ul>
        								</li>
      								</ul>
    							</li>
  							</ul>
						</td>
					</tr>
				</table>
			
				<table class="button_table">
					<tr>
						<td><button class="cancel_btn" href="javascript:void(0)">취소</button><button class="write_btn" href="javascript:void(0)">수정</button></td>
					</tr>
				</table>
			</form>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		
		<script>			
			$(document).on("click", ".add_btn", function() {
				var add_category = prompt('추가할 카테고리 명을 입력하세요.');
				
				if (add_category == null) {
					alert("추가 실패");
				} else if (add_category == "") {
					alert("추가 실패");
				} else {
					var check = $(this).siblings('input[type=checkbox]');
					
					if (check.attr('id') == 'root') {
						var li = $(this).parent('li');
						var cate_number = $('.tree_items').length + 1;
						
						var html = '<ul class="tree_items">' +
								'<li><input type="checkbox" id=' + cate_number + '>' +
								'<label style="margin-right: 6px;" for=' + cate_number + '>' + add_category +
								'</label><input type="button" class="add_btn" value="추가" style="margin-right: 6px;"/>' +
								'<input type="button" class="delete_btn" value="삭제"/><ul>' +
								'</ul></li></ul>';
						
						li.append(html);
					} else {
						var ul = $(this).siblings('ul');
						var html = '<li><a href="https://opentutorials.org">' + add_category + '</a> <input type="button" class="delete_btn" value="삭제"/></li>';
						ul.append(html);
					}
				}
			});
			
			$(document).on("click", ".delete_btn", function() {
				var li = $(this).parent('li');
				var result = confirm("삭제하시겠습니까?");
				
				if (result) {
					li.remove();
				}
			});
			
			$(document).on("click", ".cancel_btn", function(e) {
				var prev_url = "${prev_url}";
				e.preventDefault();
				
				if (prev_url == null || prev_url == '') {
					location.href = 'homepage.do';
				} else {
					history.go(-1);
				}
			});
		</script>
	</body>
</html>