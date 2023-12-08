function confirm(z){

frm.uid.value=z;

frm.method="post";
frm.action="./admin_confirm.do";
frm.submit();


}

function unapproved(){
alert("해당사용자는미승인처리되어로그인하실수없습니다");
}
