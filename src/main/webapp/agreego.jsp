<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
long time = System.currentTimeMillis();
%>
<link href="./css/agree.css?v=<%=time%>" rel="stylesheet">

<div class="agree_div">
	<span>
	HOME ▶ 로그인 ▶ 약관동의
	</span>
	
	<!--회원가입 상단 -->
	<div class="agree_title">
		<p>회원가입</p>
		<ul>
			<li>01 약관동의 <img src="./mall_img/step.png"></li>
			<li>02 정보입력 <img src="./mall_img/step.png"></li>
			<li>03 가입완료</li>
		</ul>
	</div>
	
	<!-- 약관동의란 -->
	<div class="agree_ok">
		<h3>약관동의</h3>
		<div class="cklist1">
			<input type="checkbox" onclick="agreeall(this.checked)">
			<a>베스트샵의 모든 약관을 확인하고 전체 동의합니다.</a>
			<a>(전체동의, 선택항목도 포함됩니다.)</a>
		</div>
		<div class="agree_box">
			<span>
				<input type="checkbox" class="ckbox">
				<a>(필수)</a>
				<a>이용약관</a>
				<em>전체보기</em>
				<img src="./mall_img/step.png">
			</span>
			<div id="agbox"> agree1내용</div>
			<span>
				<input type="checkbox" class="ckbox">
				<a>(필수)</a>
				<a>이용약관</a>
				<em>전체보기</em>
				<img src="./mall_img/step.png">
			</span>
			<div id="agbox2">agree2내용</div>
		</div>
		<div class="agree_btn"><input type="button" value="다음단계" onclick="joingo()" ></div>
	</div>
</div>

<script src="./js/agree.js?v=<%=time%>"></script>