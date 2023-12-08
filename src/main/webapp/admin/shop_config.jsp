<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long time2 = System.currentTimeMillis();
%>
<div class="config_form">

<span class="config_form_back">

<!-- 홈페이지 가입환경 설정 -->
<ul class="list_top">
	<li>■</li>
	<li>홈페이지 가입환경 설정</li>
</ul>
<form id="setfrm" method="post">
<table class="tablecss">
	<tr>
		<td><a>홈페이지제목</a></td>
		<td><input type="text" class="input_250" name="stitle" value='${setuplist[0].stitle}'></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td><a>관리자 메일 주소</a></td>
		<td colspan="3"><input type="text" class="input_300" name="semail" value="${setuplist[0].semail}">
		<a style="font-size:10px;">관리자가 보내고 받는 용도로 사용하는 메일 주소를 입력합니다.(회원가입,인증메일,회원메일발송 등에서 사용)</a>
		</td>

	</tr>
	<tr>
		<td><a>포인트 사용 유/무</a></td>
		<td>
		<label class="radio_label"><input type="radio" name="spointok" value="Y">포인트 사용</label>
		<label class="radio_label"><input type="radio" name="spointok" value="N">포인트 미사용</label></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td><a>회원가입시 적립금</a></td>
		<td><input type="text" name="spoint" id="spoint" value="${setuplist[0].spoint}" maxlength="10" class="input_80" onkeyup="removeNonNumeric(this.value,this.name)" >점</td>
		<td><a>회원가입시 권한레벨</a></td>
		<td><input type="text" class="input_80" name="slevel" id="slevel" value="${setuplist[0].slevel}"  maxlength="2" onkeyup="removeNonNumeric(this.value,this.name)">레벨</td>
	</tr>
</table>
<!-- 홈페이지 가입환경 설정 끝 -->


<!-- 홈페이지 기본환경 설정 -->
<ul class="list_top">
	<li>■</li>
	<li>홈페이지 기본환경 설정</li>
</ul>
<table class="tablecss">
	<tr>
		<td><a>회사명</a></td>
		<td><input type="text" class="input_200" name="swork" value="${setuplist[0].swork}"></td>
		<td><a>사업자등록번호</a></td>
		<td><input type="text" class="input_200" name="sno" value="${setuplist[0].sno}"></td>
	</tr>
	<tr>
		<td><a>대표자명</a></td>
		<td><input type="text" class="input_200" name="sceo" value="${setuplist[0].sceo}"></td>
		<td><a>대표전화번호</a></td>
		<td><input type="text" class="input_200" name="stel" value="${setuplist[0].stel}"></td>
	</tr>
	<tr>
		<td><a>통신판매업 신고번호</a></td>
		<td><input type="text" class="input_200" name="snu" value="${setuplist[0].snu}"></td>
		<td><a>부가통신 사업자번호</a></td>
		<td><input type="text" class="input_200" name="scnu" value="${setuplist[0].scnu}"></td>
	</tr>
	<tr>
		<td><a>사업장 우편번호</a></td>
		<td><input type="text" class="input_200" name="sad" id="sad" value="${setuplist[0].sad}" onkeyup="removeNonNumeric(this.value,this.name)"></td>
		<td><a>사업장 주소</a></td>
		<td><input type="text" class="input_300" name="sare" value="${setuplist[0].sare}"></td>
	</tr>
	<tr>
		<td><a>정보관리책임자명</a></td>
		<td><input type="text" class="input_200" name="sname" value="${setuplist[0].sname}"></td>
		<td><a>정보책임자 E-mail</a></td>
		<td><input type="text" class="input_200" name="sema" value="${setuplist[0].sema}"></td>
	</tr>
</table>
<!-- 홈페이지 가입환경 설정 끝 -->

<!-- 결제 기본환경 설정 -->
<ul class="list_top">
	<li>■</li>
	<li>홈페이지 가입환경 설정</li>
</ul>
<table class="tablecss">
	<tr>
		<td><a>무통장 은행</a></td>
		<td><input type="text" class="input_200" name="sbank" value="${setuplist[0].sbank}"></td>
		<td><a>은행계좌번호</a></td>
		<td><input type="text" class="input_250" name="sbno" value="${setuplist[0].sbno}"></td>
	</tr>
	<tr>
		<td><a>신용카드 결제 사용</a></td>
		<td colspan="3">
		<label class="radio_label"><input type="radio" name="scard" value="Y">사용</label>
		<label class="radio_label"><input type="radio" name="scard" value="N">미사용</label>
		<a>※해당 PG사가 있을 경우 사용으로 변경합니다.</a>
		</td>
	</tr>
	<tr>
		<td><a>휴대폰 결제 사용</a></td>
		<td colspan="3">
		<label class="radio_label"><input type="radio" name="sphone" value="Y">사용</label>
		<label class="radio_label"><input type="radio" name="sphone" value="N">미사용</label>
		<a>※주문시 휴대폰 결제를 가능하게 할 것인지를 설정합니다.</a>
		</td>
	</tr>
	<tr>
		<td><a>도서상품권 결제 사용</a></td>
		<td colspan="3">
		<label class="radio_label"><input type="radio" name="smo" value="Y">사용</label>
		<label class="radio_label"><input type="radio" name="smo" value="N">미사용</label>
		<a>※도서상품권 결제만 적용이 되며, 그 외에 상품권은 결제 되지 않습니다.</a>
		</td>
	</tr>
	<tr>
		<td><a>결제 최소 포인트</a></td>
		<td><input type="text" class="input_200" name="sdo"  id="sdo" value="${setuplist[0].sdo}" onkeyup="removeNonNumeric(this.value,this.name)"></td>
		<td><a>결제 최대 포인트</a></td>
		<td><input type="text" class="input_200" name="spo"  id="spo" value="${setuplist[0].spo}" onkeyup="removeNonNumeric(this.value,this.name)"></td>
	</tr>
	<tr>
		<td><a>현금 영수증 발급사용</a></td>
		<td colspan="3">
		<label class="radio_label"><input type="radio" name="spaper" value="Y">사용</label>
		<label class="radio_label"><input type="radio" name="spaper" value="N">미사용</label>
		<a>※현금영수증 관련 사항은 PG사 가입이 되었을 경우 사용가능 합니다.</a>
		</td>
	</tr>
	<tr>
		<td><a>배송업체명</a></td>
		<td><input type="text" class="input_200" name="sden" value="${setuplist[0].sden}"></td>
		<td><a>배송비 가격</a></td>
		<td><input type="text" class="input_200" name="spri" id="spri" value="${setuplist[0].spri}" onkeyup="removeNonNumeric(this.value,this.name)"></td>
	</tr>
	<tr>
		<td><a>희망배송일</a></td>
		<td colspan="3">
		<label class="radio_label"><input type="radio" name="sdilve" value="Y">사용</label>
		<label class="radio_label"><input type="radio" name="sdilve" value="N">미사용</label>
		<a>※희망 배송일 사용시 사용자가 직접 설정 할 수 있습니다.</a>
		</td>
	</tr>
</table>
<!-- 결제 기본환경 설정 끝 -->

<div class="config_form_btnbakc">
<input type="button" value="설정 저장" onclick="setup_update()">
<input type="hidden" value="${setuplist[0].sidx}" name="sidx">
<input type="button" value="저장 취소">
</div>
</form>
</span>
</div>

<script src="./js/shop_config.js?v=<%=time2%>"></script>
<script>

if('${setuplist[0].spointok}' == 'Y'){
	setfrm.spointok[0].checked = true;
}else{
	setfrm.spointok[1].checked = true;
}

if('${setuplist[0].scard}' == 'Y'){
	setfrm.scard[0].checked = true;
}else{
	setfrm.scard[1].checked = true;
}

if('${setuplist[0].sphone}' == 'Y'){
	setfrm.sphone[0].checked = true;
}else{
	setfrm.sphone[1].checked = true;
}


if('${setuplist[0].smo}' == 'Y'){
	setfrm.smo[0].checked = true;
}else{
	setfrm.smo[1].checked = true;
}

if('${setuplist[0].spaper}' == 'Y'){
	setfrm.spaper[0].checked = true;
}else{
	setfrm.spaper[1].checked = true;
}

if('${setuplist[0].sdilve}' == 'Y'){
	setfrm.sdilve[0].checked = true;
}else{
	setfrm.sdilve[1].checked = true;
}


</script>