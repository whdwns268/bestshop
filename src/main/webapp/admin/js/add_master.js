
var id_check = "no";  //아이디 중복체크 유/무

//아이디 중복체크
function id_ck(){

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
            if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
                var msg = xhr.responseText;
                if(msg == "yes"){
                    alert("사용 가능한 아이디입니다.");
                    joinok.uid.readOnly = true;
                    id_check="ok";
                }else if(msg == "no"){
                    alert("사용하실 수 없는 아이디입니다.");
                }else{
                    console.log("중복체크에서 에러남");
                }
            }
        }
        xhr.open("POST","./idcheck.do",true);
        xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
        xhr.send("uid=" + joinok.uid.value);
}

function id_ck2(){
	
	if(joinok.uid.value == ""){
		alert("아이디를 입력하세요");
		throw new Error("Iteration terminated");
	}
	else{
		array.datalist.forEach(function(a,b){
		if(joinok.uid.value == a.uid){
		alert("중복된 아이디입니다.");
			throw new Error("Iteration terminated");
		}else{
			id_check = "ok";
		}
		
		});g
	}
	if(id_check == "ok"){
	alert("사용가능한 아이디입니다.");	
	}
}


function joinbtn(){
var joinok = document.getElementById("joinok");
var uname = document.getElementById("uname");
var umail = document.getElementById("umail");
var pw1 = document.getElementById("pw1");
var pw2 = document.getElementById("pw2");
	if(id_check == "no"){
		alert("아이디 중복체크 하세요");
		joinok.uid.focus();
	}
	else if(joinok.pw1.value == ""||joinok.pw2.value == ""){
		alert("패스워드를 입력 하세요");
		joinok.pw2.focus();
	}
	else if(uname.value == ""){
	alert("담당자 이름을 입력하세요");
		joinok.uname.focus();
	}
	else if(joinok.umail.value == ""){
		alert("담당자 이메일을 입력하세요");
		joinok.umail.focus();
	}
	else if(joinok.utel[0].value==""||joinok.utel[1].value==""||joinok.utel[2].value==""){
		alert("전화번호를 확인해주세요");
		joinok.utel[0].focus();
	}
	else if(joinok.udepart.value == ""){
	alert("담당자 부서를 확인해주세요");
		joinok.udepart.focus();
	}
	else if(joinok.uposition.value == ""){
	alert("담당자 직책을 확인해주세요");
		joinok.uposition.focus();
	}
	else{
		
		 if(joinok.pw1.value != joinok.pw2.value){
			alert("패스워드가 동일하지 않습니다.");
			joinok.pw2.focus();
		}
		else{ //이메일 확인
			var emailck = /[0-9a-z]+@[0-9a-z]+.[a-z]+/gi;
			var ck = emailck.test(joinok.umail.value);

			if(ck == true){//이메일 정규식일때
			
				//핸드폰번호검토\d{3,4}\d{4}
				var telck = /0\d{1,2}/;
				var telck2 = /\d{3,4}/;
				var telck3 = /\d{4}/;
				
				var ck2 = telck.test(joinok.utel[0].value);
				var ck3 = telck2.test(joinok.utel[1].value);
				var ck4 = telck3.test(joinok.utel[2].value);	
					if(ck2 == false || ck3 == false || ck4 == false){
					alert("전화번호를 확인해주세요");
					}					
					else{
					joinok.submit();
					}
			
			}
			else{
				alert("이메일을 올바르게 입력하세요")
			}
		}
	}
}

function cancle(){
	if(confirm("가입취소하시겠습니까?")){
		location.href="./index.jsp";
	}
}
