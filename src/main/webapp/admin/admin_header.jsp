<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="./js/admin_header.js?v=8"></script>
<div class="header">
	<span>
	<ul class="header_ul1">
		<li><img src="./img/logo.png" class="img_logo" ></img></li>
		<li><a class="logo_font">ADMINISTARTOR</a></li>
	</ul>
	
	<ul class="header_ul2">
		<li>${uname} 관리자</li>
		<li>[개인정보 수정]</li>
		<li onclick="logout()">[로그아웃]</li>
	</ul>
	</span>
</div>
