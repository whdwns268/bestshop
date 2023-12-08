<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
long time2 = System.currentTimeMillis();
%>
<link rel="stylesheet" type="text/css" href="./css/admin_notice.css?v=<%=time2%>">
<div class="notice_div">
	<div class="notice_div_first">
		<a>■</a>
		<p>공지사항 관리페이지</p>
	</div>
	<div class="notice_div_title">
		<ul>
			<li><input type="checkbox"></li>
			<li>NO</li>
			<li>제목</li>
			<li>글쓴이</li>
			<li>날짜</li>
			<li>조회</li>
		</ul>
	</div>
	
	<div class="notice_div_title">
		<ul>
			<li><input type="checkbox"></li>
			<li>1</li>
			<li>테스트 제목</li>
			<li>관리자</li>
			<li>2023-06-17</li>
			<li>100</li>
		</ul>
	</div>
	
	<div class="notice_div_title">
		<span>등록된 공지 내용이 없습니다.</span>
	</div>
	
	<div class="notice_btn">
		<input type="button" value="공지삭제">
		<input type="button" value="공지등록">
	</div>
	
	<div>
		<span> << </span>
		<span>◀</span>
		<ul>
			<li>1</li>
		</ul>
		<span>▶</span>
		<span> >> </span>
	</div>
</div>