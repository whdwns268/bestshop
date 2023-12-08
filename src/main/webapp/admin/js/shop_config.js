function setup_update(){
	
	if(setfrm.stitle.value==""){
		alert("홈페이지 제목을 입력하세요");
	}
	else if(setfrm.semail.value==""){
		alert("관리자 메일주소를 입력하세요");
	}
	else if(setfrm.spoint.value==""){
		alert("회원가입 시 적립금을 설정 해주세요");
	}
	else if(setfrm.slevel.value==""){
		alert("회원가입시 권한레벨을 설정 해주세요");
	}
	else if(setfrm.swork.value==""){
		alert("회사명을 입력 해주세요");
	}
	else if(setfrm.sno.value==""){
		alert("사업자등록번호를 입력 해주세요");
	}
	else if(setfrm.sceo.value==""){
		alert("대표를 입력 해주세요");
	}
	else if(setfrm.stel.value==""){
		alert("대표전화번호를 입력 해주세요");
	}
	else if(setfrm.snu.value==""){
		alert("통신판매업 신고번호를 입력 해주세요");
	}
	else if(setfrm.scnu.value==""){
		alert("부가통신 사업자번호를 입력 해주세요");
	}
	else if(setfrm.sad.value==""){
		alert("사업장 우편번호를 입력 해주세요");
	}
	else if(setfrm.sare.value==""){
		alert("사업장 주소를 입력 해주세요");
	}
	else if(setfrm.sname.value==""){
		alert("정보관리 책임자명를 입력 해주세요");
	}
	else if(setfrm.sema.value==""){
		alert("정보책임자 E-mail를 입력 해주세요");
	}
	else if(setfrm.sbank.value==""){
		alert("무통장 은행을 입력 해주세요");
	}
	else if(setfrm.sbno.value==""){
		alert("은행계좌번호를 입력 해주세요");
	}
	else if(setfrm.sdo.value==""){
		alert("결제 최소 포인트를 입력 해주세요");
	}
	else if(setfrm.spo.value==""){
		alert("결제 최대 포인트를 입력 해주세요");
	}
	else if(setfrm.sden.value==""){
		alert("배송업체명을 입력 해주세요");
	}
	else if(setfrm.spri.value==""){
		alert("배송비 가격을 입력 해주세요");
	}
	else{
		const emailPattern = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
		if( setfrm.slevel.value >= 100){
			alert("최대 권한 레벨은 99입니다.")
		}
		else if(!emailPattern.test(setfrm.semail.value)){
			alert("이메일 주소를 확인해주세요.")
		}
		else{
		setfrm.action="./config_form_update.do";
		setfrm.submit();
		}
	}
}


function removeNonNumeric(value,name) {

  	const numname = document.getElementById(name);
  	const validValue = value.replace(/[^0-9]/g, '');
  	numname.value = validValue;
}

