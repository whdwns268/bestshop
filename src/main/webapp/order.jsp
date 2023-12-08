<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String mid = (String)session.getAttribute("mid");
    String mname = (String)session.getAttribute("mname");
    String mtel = (String)session.getAttribute("mtel");
    String memail = (String)session.getAttribute("memail");
    out.print(mid);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제자 정보 확인 및 배송 정보</title>
</head>
<body>
<form id="frm" enctype="application/x-www-form-urlencoded">
<!--PG사에 제공되는 모든 hidden값들-->
<input type="hidden" name="version" value="1.0">
<input type="hidden" name="mid" value="">
<input type="hidden" name="oid" value="">
<input type="hidden" name="price" value="${product_money}">
<input type="hidden" name="timestamp" value="">
<input type="hidden" name="currency" value="WON">
<input type="hidden" name="goodname" value="${product_name}">
<input type="hidden" name="buyername" value="<%=mname%>">
<input type="hidden" name="buyertel" value="<%=mtel%>">
<input type="hidden" name="buyerid" value="<%=mid%>">
<input type="hidden" name="goodcode" value="${product_code}">
<input type="hidden" name="goodea" value="${product_ea}">
<p>------배송정보 입력------</p>
수령인 : <input type="text" name="rec_name" value=""><br>
수령인 연락처 : <input type="text" name="rec_tel" value=""><br>
배송지 주소 : <input type="text" name="rec_addr" value=""><br>
적립금 사용 : <input type="text" name="point" value="0" readonly="readonly">
<p>------결제파트------</p>
<input type="radio" name="gopaymethod" value="CARD" checked>신용카드
<input type="radio" name="gopaymethod" value="Directback" checked>계좌이체
<input type="radio" name="gopaymethod" value="vbank" checked>가상계좌
<input type="button" id="payment" value="결제하기">
</form>
</body>
<script>
	document.querySelector("#payment").addEventListener("click",function(){
		if(frm.rec_name.value==""){
			alert("수령인을 입력하세요");
		}
		else if(frm.rec_tel.value==""){
			alert("수령인 연락처를 입력하세요")
		}
		else{
			frm.method="post";
			frm.action="./payok.do"
			frm.submit();
		}
	});
</script>
</html>