function lgbtn(){

	if(mainok.ad_id.value==""){
	alert("아이디를 입력하세요");
	mainok.ad_id.focus();
	return false;
	}
	else if(mainok.ad_pw.value==""){
	alert("패스워드를 입력하세요");
	mainok.ad_pw.focus();
	return false;
	}
	else{
	
	}
}


function new_join(){
location.href="./add_master.html";
}

function serch_id(){
location.href="./add_master_search.html";
}
