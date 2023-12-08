<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
long time = System.currentTimeMillis();
%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<link href="./css/joingo.css?v=<%=time%>" rel="stylesheet">

<form id="join" method="post" action="./joinok.do">
<div class="join_div">
	<span>
	HOME ▶ 로그인 ▶ 정보입력
	</span>
	
	<!--회원가입 상단 -->
	<div class="join_title">
		<p>회원가입</p>
		<ul>
			<li>01 약관동의 <img src="./mall_img/step.png"></li>
			<li>02 정보입력 <img src="./mall_img/step.png"></li>
			<li>03 가입완료</li>
		</ul>
	</div>
	
	<!-- 약관동의란 -->
	<div class="join_ok">
		<h3>기본정보</h3>
		<ul class=join_ul>
			<li>
				<a>아이디</a>
				<div>
				<input type="text" class="input_350" name="sid">
				</div>
			</li>
			
			<li>
				<a>비밀번호</a>
				<div>
				<input type="password" class="input_200" name="spass" id="pwck1">
				</div>
			</li>
			
			<li>
				<a>비밀번호 확인</a>
				<div>
				<input type="password" class="input_200" id="pwck2">
				</div>
			</li>
			<li>
				<a>이름</a>
				<div>
				<input type="text" class="input_350" name="sname">
				</div>
			</li>
			<li>
				<a>이메일</a>
				<div>
					<input type="text" class="input_250" id="user_email1">
					<select class="input_100" id="user_email2">
						<option value="">직접입력</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="Hotmail.com">Hotmail.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
					</select>
					<input type="hidden" name="semail">
					<label class="cklabel">
						<input type="checkbox" name="sadmail" value="Y">
						<a>정보/이벤트 메일 수신에 동의합니다.</a>
					</label>
				</div>
			</li>
			<li>
				<a>휴대폰번호</a>
				<div>
					<input type="text" class="input_250" name="smtel" maxlength="11" placeholder="- 없이 입력하세요">
					<label class="cklabel">
						<input type="checkbox" name="sadsms" value="Y">
						<a>정보/이벤트 메일 수신에 동의합니다.</a>
					</label>
				</div>
			</li>
			<li>
				<a>전화번호</a>
				<div>
				<input type="text" class="input_250" placeholder="- 없이 입력하세요" maxlength="11" name="stel">
				</div>
			</li>
			<li>
				<a>주소</a>
				<div>
				<input type="text" class="input_250 postcodify_postcode5" maxlength="5" id="addr_post" pattern="[0-9]{5}" readonly>
				<input type="button" value="우편번호검색" class="input_100" id="postcodify_search_button">
				<input type="text" class="input_450 postcodify_address" id="addr_post2">
				<input type="text" class="input_450" id="addr_post3">
				<input type="hidden" name="saddress">
				</div>
			</li>
		</ul>
		<div class="join_btn">
		<input type="button" value="취소" onclick="cancle()">
		<input type="button" value="회원가입" onclick="joinok()">
		</div>
		
	</div>
</div>
</form>
<script src="./js/joingo.js?v=<%=time%>"></script>