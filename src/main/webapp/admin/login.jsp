<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long time = System.currentTimeMillis();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=2">
<link rel="stylesheet" type="text/css" href="./css/login.css?v=2">
<link rel="stylesheet" type="text/css" href="./css/font.css?v=3">
<script src="./js/login.js?v=<%=time%>>"></script>
</head>
<body>
<header>
<img src="./img/logo.png"></img>
<a>ADMINISTARTOR</a></header>
<form id="mainok" method="post" action="./loginok.do" onsubmit="return lgbtn()">
<section class="sc">
<div class="boxcss">
<span>
	<ul class="ulcss_login">
	<li><input type="text" class="text" name="ad_id" placeholder="관리자 아이디를 입력하세요"></li>
	<li><input type="password" class="text" name="ad_pw" placeholder="관리자 패스워드를 입력하세요"></li>
	<li><input type="submit" value="MASTER LOGIN" class="btn"></li>
	</ul>
	<span class="admin_noti">
	※본 사이트 관리자 외에는 접근을 금합니다. 페이지 접근에 대한 접속 정보는 모두 기록 됩니다.
	<p> 테스트용 ID : admin / PW : a123456</p>
	</span>
	
	<ul class="ulcss_join">
	<li><label onclick="new_join()">신규 관리자 등록요청</label></li>
	<li onclick="serch_id()"><label>아이디/패스워드 찾기</label></li>
	</ul>
</span>
</form>
</div>
</section>
</body>
</html>