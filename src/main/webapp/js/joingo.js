$(function() { $("#postcodify_search_button").postcodifyPopUp(); }); 

function cancle(){
	if(confirm("입력하신 내용은 모두 삭제됩니다. 회원가입 취소 하시겠습니까?")){
		location.href="./index.html";
	}
	else{
	}
}


function joinok(){
var pwck1 = document.getElementById("pwck1");
var pwck2 = document.getElementById("pwck2");

var user_email1 = document.getElementById("user_email1");
var user_email2 = document.getElementById("user_email2");
join.semail.value = user_email1.value + "@" + user_email2.value;

var addr_post = document.getElementById("addr_post");
var addr_post2 = document.getElementById("addr_post2");
var addr_post3 = document.getElementById("addr_post3");
join.saddress.value= addr_post.value + addr_post2.value + addr_post3.value

if(join.sid.value ==""){
	alert("아이디를 입력하세요")
}
else if(join.spass.value ==""){
	alert("비밀번호를를 입력하세요")
}
else{
	if(pwck1.value != pwck2.value){
		alert("비밀번호가 일치하지 않습니다.")
	}else{
	join.submit();
	}
}

}