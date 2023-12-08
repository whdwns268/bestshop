<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
long time2 = System.currentTimeMillis();
%>
<link href="./css/banner.css?v=<%=time2%>" rel="stylesheet">

<div id="banner" class="bannercss"></div>
<div class="banner_div">
	<ul id="bannerul">
		<li><img src="./mall_img/banners/banner0.png"></li>
		<li><img src="./mall_img/banners/banner1.png"></li>
		<li><img src="./mall_img/banners/banner2.png"></li>
	</ul>
	<ul class="banner_num" id="discul">
		<!--js에서 자동생성 -->
	</ul>
</div>

<script src="./js/banner.js?v=<%=time2%>"></script>