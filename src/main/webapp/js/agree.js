var agree = function(z){
    var http = new XMLHttpRequest();
    http.open("GET",z,false);
    http.send();
    return http.responseText.replace(/\n/g, "<br>").replace(/ /g, "&nbsp;");
}

document.getElementById("agbox").innerHTML = agree("./agreement/agree1.txt");
document.getElementById("agbox2").innerHTML = agree("./agreement/agree2.txt");


function agreeall(z) {
  var ckbox = document.getElementsByClassName("ckbox");

  let w = 0;
  var ck = ckbox.length;
  
  while (w < ck) {
    ckbox[w].checked = z;

    w++;
  }
}

function joingo(){
  var ckbox = document.getElementsByClassName("ckbox");

  let w = 0;
  var ck = ckbox.length;
  let msg = "yes";
  
  while (w < ck) {
    	if(ckbox[w].checked == false){

    		msg="no";
    	}
    w++;
  }

  if(msg == "no"){
  	alert("약관동의 필수 항목은 모두 동의 해 주셔야합니다");
  }else{
  	location.href='./join.jsp';
  }
}