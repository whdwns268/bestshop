<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long time2 = System.currentTimeMillis();
%>
<link rel="stylesheet" type="text/css" href="./css/shop_index.css?v=<%=time2%>">
<form id="shopform" method="post">
<div class="prodiv1">
   <ul class="pro_ul1">
      <li>■</li>
      <li>상품 메인 배너 관리</li>
   </ul>
   
   <ul class="setup_ul">
   	<li>메인배너 등록</li>
   	<li>
   		<ul>
   			<li><input type="text" name="banner1" value="${bannerlist[0].banner1}">배너1<a>※ 배너 이미지 URL를 입력하세요</a></li>
   			<li><input type="text" name="link1" value="${bannerlist[0].link1}">링크 URL</li>
   			<li><input type="text" name="banner2" value="${bannerlist[0].banner2}">배너2<a>※ 배너 이미지 URL를 입력하세요</a></li>
   			<li><input type="text" name="link2" value="${bannerlist[0].link2}" >링크 URL</li>
   			<li><input type="text" name="banner3" value="${bannerlist[0].banner3}">배너3<a>※ 배너 이미지URL를 입력하세요</a></li>
   			<li><input type="text" name="link3"value="${bannerlist[0].link3}" >링크 URL</li>
   			<li><input type="text" name="banner4" value="${bannerlist[0].banner4}">배너4<a>※ 배너 이미지URL를 입력하세요</a></li>
   			<li><input type="text" name="link4" value="${bannerlist[0].link4}">링크 URL</li>
   		</ul>
   	</li>
   </ul>
   <div class="setup_btn">
   	<input type="button" value="배너 변경" onclick="bannergo()">
   </div>
   
   </form>
   
	   <ul class="pro_ul1">
	      <li>■</li>
	      <li>쇼핑몰 메인 팝업 관리</li>
	   </ul>
	   
	   <ul class="setup_ul">
	   	<li>메인 팝업 관리</li>
	   	<li>
		   	<ul>
	   			<li><input type="text">팝업</li>
	   			<li><input type="text">링크 URL</li>
	   			<li><input type="checkbox">팝업창 사용</li>
	   		</ul>
	   	</li>
	   </ul>
	   <div class="setup_btn">
	   	<input type="button" value="팝업창 변경">
	   </div>
	
   <ul class="pro_ul1">
      <li>■</li>
      <li>쇼핑몰 AD 배너</li>
   </ul>
   <form id="shop_ad_form" method="post">
   <ul class="setup_ul">
   	<li>AD 배너 등록</li>
   	<li>
   		<ul>
	   			<li><input type="text" name="ad1_img"  value="${adbannerlist[0].ad1_img}">AD 배너 1 <a>※이미지 URL를 입력하세요</a> </li>
	   			<li><input type="text" name="ad1_link" value="${adbannerlist[0].ad1_link}">링크 URL</li>
	   			<li><input type="text" name="ad2_img" value="${adbannerlist[0].ad2_img}">AD 배너 2 <a>※이미지 URL를 입력하세요</a></li>
	   			<li><input type="text" name="ad2_link" value="${adbannerlist[0].ad2_link}">링크 URL</li>
	   		</ul>
   	</li>
   </ul>
   <div class="setup_btn">
   	<input type="button" value="AD 배너 변경" onclick="adchange()">
   </div>
   

</form>
<script src="./js/shop_index.js?v=<%=time2%>"></script>