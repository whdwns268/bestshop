function prolist(){
   location.href="./shop_product.do";
}

function progo(){

var editorData = CKEDITOR.instances.prtx1.getData();
  if (editorData === "") {
	  alert("내용이 비어있습니다.");
  }
	frm.method="post";
	frm.action="./product_upload.do"
	frm.submit();
}


function pcodeck(){

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function(){
        if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
            var msg = xhr.responseText;
            if(msg == "yes"){
                alert("사용 가능한 코드");
            }else if(msg == "no"){
                alert("중복된 코드입니다.");
            }else{
                console.log("중복체크에서 에러남");
            }
        }
    }
    xhr.open("POST","./shop_setup_code.do",true);
    xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
    xhr.send("pcodeck=" + frm.pcode.value);
}

window.addEventListener('DOMContentLoaded', function() {
    var productCode = generateProductCode();
    var productCodeField = document.querySelector('input[name="pcode"]');
    productCodeField.value = productCode;
});

function generateProductCode() {
    var code = '';
    var characters = '0123456789';
    for (var i = 0; i < 6; i++) {
        var randomIndex = Math.floor(Math.random() * characters.length);
        code += characters.charAt(randomIndex);
    }
    return code;
}


function price(z){
if(frm.pdiscount.value != 0){
	var dispay = Math.round(z - (z * (frm.pdiscount.value/100)));
	frm.pdisprice.value = dispay
		if (frm.pdisprice.value % 10 >= 5) {
		  frm.pdisprice.value = Math.ceil(frm.pdisprice.value / 10) * 10;
		} else {
		  frm.pdisprice.value = Math.floor(frm.pdisprice.value / 10) * 10;
		}
	}else{
	frm.pdisprice.value = 0;
	}
}

function discount(value){
	if(value != 0){
	var dispay = Math.round(frm.pprice.value - (frm.pprice.value * (value / 100)));
	frm.pdisprice.value = dispay
		if (frm.pdisprice.value % 10 >= 5) {
		  frm.pdisprice.value = Math.ceil(frm.pdisprice.value / 10) * 10;
		} else {
		  frm.pdisprice.value = Math.floor(frm.pdisprice.value / 10) * 10;
		}
	}else{
	frm.pdisprice.value = 0;
	}
}

function peack(z){
	if (z != 0) {
        frm.psold[1].checked = true;
        frm.pbuy[0].checked = true;
    } else {
        frm.psold[0].checked = true;
        frm.pbuy[1].checked = true;
    }
}

document.querySelector('input[type="file"]').addEventListener('change', function(e) {
   document.getElementById('hiddenFilename').value = e.target.files[0].name;
});


