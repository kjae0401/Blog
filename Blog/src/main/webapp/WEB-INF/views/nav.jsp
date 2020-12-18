<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nav.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/side_nav.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		
<div class="nav_container">
	<div class="nav_header">
		<div class="container">
			<div id="mySidenav" class="sidenav" data-keyboard="false" data-backdrop="static">
			  	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			  	<a href="#">About</a>
			  	<a href="#">Services</a>
				<a href="#">Clients</a>
				<a href="#">Contact</a>
			</div>
			
			<button class="menu_btn" onclick="openNav()"><img src="${pageContext.request.contextPath}/css/images/menu.png"></button>
			<button class="search_btn"><img src="${pageContext.request.contextPath}/css/images/search.png"></button>
		</div>

		<div class="nav_title">
			<h1>Personal Blog</h1>
		</div>
	
		<div class="nav_bottom">
	        <button class="write_btn" href="javascript:void(0)"><img src="${pageContext.request.contextPath}/css/images/write.png"></button>
	        <button class="book_btn" href="javascript:void(0)"><img src="${pageContext.request.contextPath}/css/images/book.png"></button>
	        <button class="rss_btn" href="javascript:void(0)"><img src="${pageContext.request.contextPath}/css/images/rss.png"></button>
	        <button class="settings_btn" href="javascript:void(0)"><img src="${pageContext.request.contextPath}/css/images/settings.png"></button>
	    </div>
	</div>
</div>

<div class="contents_container">
	<ul>
		<li>
		    <div class="content" id="content-1">
		        <a class="img"><img src="${pageContext.request.contextPath}/css/images/nav_background_image.jpg"></a>
		        
		        <a class="content_content">
		            <strong class="content_title">Title</strong>
		            <p>[REST] RESTful 웹서비스 만들기 지난번 REST의 개념에 대해 알아본데 이어, 이번시간에는 RESTful 웹 프로젝트를 만들어보겠다. RESTful 웹서비스는 Spring Boot를 사용해서 프로젝트를 만들것이며, 간단하게 REST에서 사용하는 HTTP에서 제공하는 4가지 메소드를 사용해 RESTful 웹서비스를 만들어보겠다. Spring Boot 프로젝트가 생성되어 있다는 가정하에 포스팅을 시작할 것이며, 혹시 Spring Boot 프로젝트를 처음부터 생성해야한다면, 아래의 주소를 참고하길 바란다. 2018/04/24 - [Dev.Back-End/Spring Boot] - [SpringBoot] 스프링부트(SpringBoot) 프로젝트 생성하기(with gradle) 생성해야한다면, 아래의 ..</p>
		        </a>
		        
		        <p class="content_sub"><a class="content_category">category</a><span class="tab">&#9;</span>2020.12.02 11:11:11</p>
		    </div>
    	</li>
    	
    	<li>
		    <div class="content" id="content-2">
		        <a class="img"><img src="${pageContext.request.contextPath}/css/images/nav_background_image.jpg"></a>
		        
		        <a class="content_content">
		            <strong class="content_title">Title</strong>
		            <p>[REST] RESTful 웹서비스 만들기 지난번 REST의 개념에 대해 알아본데 이어, 이번시간에는 RESTful 웹 프로젝트를 만들어보겠다. RESTful 웹서비스는 Spring Boot를 사용해서 프로젝트를 만들것이며, 간단하게 REST에서 사용하는 HTTP에서 제공하는 4가지 메소드를 사용해 RESTful 웹서비스를 만들어보겠다. Spring Boot 프로젝트가 생성되어 있다는 가정하에 포스팅을 시작할 것이며, 혹시 Spring Boot 프로젝트를 처음부터 생성해야한다면, 아래의 주소를 참고하길 바란다. 2018/04/24 - [Dev.Back-End/Spring Boot] - [SpringBoot] 스프링부트(SpringBoot) 프로젝트 생성하기(with gradle) 생성해야한다면, 아래의 ..</p>
		        </a>
		        
		        <p class="content_sub"><a class="content_category">category</a><span class="tab">&#9;</span>2020.12.02 11:11:11</p>
		    </div>
    	</li>
    </ul>
    
    
	<ul class="pagination">
		<li><a class="prev" href="#0">&lt;</a></li>
		<li><a class="active" href="#0">1</a></li>
		<li><a href="#0">2</a></li>
		<li><a href="#0">3</a></li>
		<li><a class="next" href="#0">&gt;</a></li>
	</ul>
</div>

<script>
	$(document).ready(function() {
		$('.nav_container').css("background-image","url(css/images/nav_background_image.jpg)");
	});

    $('li > div').hover(function() {
    	$(this).find('.content_title').css("color", "#6bacce");
    }, function() {
    	$(this).find('strong').css("color", "black");
    });
    
    function openNav() {
    	$('.menu_btn').hide();
    	$('.search_btn').hide();
    	$('.nav_title').hide();
    	$('.nav_bottom').hide();
    	$('.footer_container').hide();
    	$('.contents_container').hide();
    	$('.nav_container').height(window.innerHeight);
    	document.getElementById("mySidenav").style.width = "100%";
    }
    
    function closeNav() {
    	$('.menu_btn').show();
    	$('.search_btn').show();
    	$('.nav_title').show();
    	$('.nav_bottom').show();
    	$('.footer_container').show();
    	$('.contents_container').show();
    	$('.nav_container').height(500);
    	document.getElementById("mySidenav").style.width = "0px";
    }
    
    $(document).on("click", ".nav_title > h1", function() {
    	location.href = 'homepage.do';
    });
    
    $('.write_btn').click(function() {
    	location.href = "write.do";
    });
    
    $('.book_btn').click(function () {
    	location.href = "book.do";
    });
    
    $('.settings_btn').click(function() {
    	location.href =  "setting.do";
    });
    
    $(document).on("click", ".content", function() {
    	location.href = 'detail.do?content_id=' + $(this).attr('id');
    });
</script>