<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	long time11 = System.currentTimeMillis();
%>
<script src="./js/admin_menu.js?v=<%=time11%>"></script>
<div class="menu">
<ul class="menu_ul">
<li onclick="settinggo()">쇼핑몰 기본설정</li>
<li id="membergo">회원관리</li>
<li id="noticego">공지사항</li>
<li id="shopsetupgo">쇼핑몰관리</li>
<li id="shopproduct">상품리스트</li>
<li>주문내역</li>
<li>매출내역</li>
</ul>
</div>
