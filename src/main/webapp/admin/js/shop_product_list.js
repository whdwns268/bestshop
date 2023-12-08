
function modifygo(z){
	var frm = document.getElementById("frm");
	frm.sid.value = z;
    console.log(z);
	
	var url = "./member_modify.do";
	var windowTargetName = "modify";
	var features = "scrollbars=no,width=550,height=450,location=no, resizable=yes";
	window.open(url, windowTargetName, features);
	
	
	frm.action="./member_modify.do"; 
	frm.method="post";
	frm.target=windowTargetName;
	frm.submit();
}

function proupload(){
	location.href='./shop_product_write.jsp';
}




function memberstate(z){
	var frm = document.getElementById("frm");
	frm.sid.value = z;
	
	frm.action = "./mstate.do";
	frm.method="post";
	frm.submit();
}

function ckdelete(){
	frm.action = "./product_ckdelete.do";
	frm.method="post";
	frm.submit();
}

document.addEventListener('DOMContentLoaded', function() {
	
        
var ckboxAll = document.querySelector(".ckboxall");
    ckboxAll.addEventListener("click", function() {
        var ckboxes = document.querySelectorAll(".ckbox");
       	
        for (var i = 0; i < ckboxes.length; i++) {
			if(ckboxes[i].checked ==  true){
            ckboxes[i].checked = false;				
			}
			else if(ckboxes[i].checked ==  false){
            ckboxes[i].checked = true;
        	}
        }
    });
    
 });