<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<!-- JSTL 표현식으로 리스트 출력 -->
<%@ taglib prefix="app" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 배열 갯수를 확인하는 라이브러리 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="./js/admin_list.js"></script>
<form id="frm">
<div class="list">

<ul class="list_top">
	<li>■</li>
	<li>신규등록 관리자</li>
</ul>


<ul class="list_ul1">
	<li>NO</li>
	<li>관리자명</li>
	<li>아이디</li>
	<li>전화번호</li>
	<li>이메일</li>
	<li>담당부서</li>
	<li>담당직책</li>
	<li>가입일자</li>
	<li>승인여부</li>
</ul>


<!-- 찾는 내용이 없을 경우 또는 게시글이 하나도 없을 경우 -->
<app:set var="ea" value="${fn:length(portfoliolist)}"></app:set>
<app:set var="count" value="0"></app:set>
<app:forEach items="${portfoliolist}" var="portfolio">
    <app:if test="${portfolio.mage == 'N'}">
        <app:set var="count" value="${count + 1}"></app:set>
    </app:if>
</app:forEach>
<app:if test="${count==0}">
    <ul class="list_ul_none">
        <li>신규 등록된 관리자가 없습니다.</li>
    </ul>
</app:if>


<span class="ulset">
<app:forEach var="item" items="${portfoliolist}">
<app:if test="${item.mage=='N'}">
<app:set var="w" value="${w+1}"></app:set>
<ul>
	<li>${w}</li>
	<li>${item.uname}</li>
	<li>${item.uid}</li>
	<li>${item.utel}</li>
	<li>${item.umail}</li>
	<li>${item.udepart}</li>
	<li>${item.uposition}</li>
	<li>${item.udate}</li>
	<li>
		<input type="button" value="승인" class="list_btn" onclick="confirm('${item.uid}')">
		<input type="button" value="미승인" class="list_btn" onclick="unapproved()">
	</li>
</ul>
</app:if>
</app:forEach>
</span>
<input type="hidden" name="uid" value="">
</div>
</form>