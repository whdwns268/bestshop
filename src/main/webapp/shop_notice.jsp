<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
long time2 = System.currentTimeMillis();
%>
<link href="./css/shop_notice.css?v=<%=time2%>" rel="stylesheet">

<div class="noticediv">
	<ul class="noti_bread">
		<li>HOME</li>
		<li><img src="./mall_img/step.png"></li>
		<li>NOTICE</li>
	</ul>
	<p class="noti_title">NOTICE</p>
	<div class="noti_index">
	<ul class="noti_top">
		<li>NO</li>
		<li>제목</li>
		<li>글쓴이</li>
		<li>날짜</li>
		<li>조회수</li>
	</ul>
	
	<ul>
		<li>1</li>
		<li>공지사항 제목이 출력되는 부분</li>
		<li>관리자</li>
		<li>2023-07-01</li>
		<li>13</li>
	</ul>
	</div>
</div>