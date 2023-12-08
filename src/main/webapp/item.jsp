<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품선택 및 사용자 정보 로그인 상태</title>
</head>
<body>
<form id="frm" method="post" action="./order.do">
상품코드 <input type="text" name="product_code" value="${product_no}" readonly="readonly">
<br>
상품명 : <input type="text" name="product_name" value="청바지">
<br>
결제금액 : <input type="text" name="product_money" value=""> * 1000원 이상 입력
<br>
상품수량 : <input type="text" name="product_ea" value="1">
<br>
<button type="button" id="btn">상품구매확정</button>
</form>
</body>
<script>
	document.querySelector("#btn").addEventListener("click",function(){
		if(frm.product_money==""){
			alert("1000원 이상 금액을 입력하세요");
		}
		else{
			frm.submit();
		}
	});
</script>
</html>