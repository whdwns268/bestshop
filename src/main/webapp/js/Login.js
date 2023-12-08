    function logingo(){
		userfrm.action="./user_loginck.do";
        if(userfrm.sid.value == "" || userfrm.spass.value==""){
        alert("아이디와 비밀번호를 확인해주세요");   
        return false;
        }
        else{
					sessionStorage.setItem("userid",sid.value);
                if(ck.checked == true){
                    localStorage.setItem("userid",sid.value);
                }
        }
    }

	function non_ckgo(){
        var frm = document.getElementById("frm");

        if(non_uname.value == "" || non_orderno.value==""){
            alert("주문자명과주문번호를입력해주세요")
            return false;
        }
         else if(non_orderno.lenght < 8){
			alert("주문번호는 8자리입니다.")
        }
    }
	
    function idck(z){
        console.log(z);
            if(z==false){
                localStorage.setItem("userid",null);
                sessionStorage.setItem("userid",null);
            };
    }
    
    function member_join(){
    location.href="./join.jsp";
    }
    
    function id_search(){
    alert("서비스 준비중 입니다");
    }
    
    function pw_search(){
    alert("서비스 준비중 입니다");
    }

    var saveid = localStorage.getItem("userid");
    var sid = document.getElementById("sid");
    if(saveid != "null"){
        sid.value = saveid;
        document.getElementById("ck").checked = true;
    }

