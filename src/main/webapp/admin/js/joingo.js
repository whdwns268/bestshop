function joinok(){
var pwck1 = document.getElementById("pwck1");
var pwck2 = document.getElementById("pwck2");

var user_email1 = document.getElementById("user_email1");
var user_email2 = document.getElementById("user_email2");
frm.semail.value = user_email1.value + "@" + user_email2.value;

var user_email2 = document.getElementById("addr_post");
var user_email2 = document.getElementById("addr_post2");
var user_email2 = document.getElementById("addr_post3");
frm.saddress.value= user_email2.value + user_email2.value + user_email2.value

if(frm.sid.value ==""){
	alert("아이디를 입력하세요")
}
else if(frm.spass.value ==""){
	alert("비밀번호를를 입력하세요")
}
else{
	if(pwck1.value != pwck2.value){
		alert("비밀번호가 일치하지 않습니다.")
	}
}

}