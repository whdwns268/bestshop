<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMINISTARTOR</title>
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/login.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/font.css?v=1">
</head>
<body>
<header>
<img src="./img/logo.png"></img>
<a>ADMINISTARTOR</a></header>
<form id="mainok" method="post" action="./loginok.do">
<section class="sc">
<div class="boxcss">
<span>
	<ul>
	<li><input type="button" value="MAIN GO" class="btn" onclick="lg2btn()"></li>
	<span class="admin_noti">회원가입이 완료 되었습니다.</span>
	</ul>
</span>
</div>
</section>
</form>
</body>
<script>
function lg2btn() {
	location.href="./index.jsp";
}
</script>
</html>