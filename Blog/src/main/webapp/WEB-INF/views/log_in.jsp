<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
	<head>
		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
			<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1, user-scalable=yes,initial-scale=1.0, height=device-height" />
		
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
			<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
			
			<title>Blog Home</title>	
		</head>
	</head>
	
	<body>
		<div class="login_container">	
            <form method="post" action="loginaction.do">
                <h2><a href="javascript:void(0)">Blog</a></h2>
                <table>
                    <tr><td><input type="id" name="inputId" id="inputId" placeholder="아이디" autocomplete="off" required autofocus></td></tr>
                    <tr><td><input type="password" name="inputPassword" id
                    ="inputPassword" placeholder="비밀번호" autocomplete="new-password" required></td></tr>
                </table>

                <button type="submit">로그인</button>

                <div class="checkbox_container">
                    <label><input type="checkbox">로그인 상태 유지</label>

                    <span class="find_span"><a class="signup_btn" href="#">회원가입</a> · <a class="find_id_button" href="#">아이디</a> · <a class="find_password_btn" href="#">비밀번호 찾기</a></span>
                </div>
                
                <p class="fail_message">ID/PW가 일치하지 않습니다.</p>
                <img src="${pageContext.request.contextPath}/css/images/login_background.jpg" />
            </form>
		</div>
	</body>
</html>