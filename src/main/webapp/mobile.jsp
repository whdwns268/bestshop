<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>모바일 전용 사용시 오브젝트 변화 (calc)</title>
</head>
<!--  340~ 580px -->
<style>
body {
  margin: 0;
  padding: 0;
}

/* 가로 340px -> object 크기 300 */
.mid {
  width: calc(100% - 40px);
  height: 30px;
  box-sizing: border-box;
}

.btn {
  width: calc(100% - 40px);
  height: 30px;
  box-sizing: border-box;
}

@media screen and (min-width: 341px) and (max-width: 580px) {
  .mid {
    max-width: 580px;
  }
  .btn {
    max-width: 580px;
  }
}

@media screen and (min-width: 581px) {
  .mid {
    width: 340px;
  }
  .btn {
    width: 340px;
  }
}
</style>
<script>
	//es형
	window.addEventListener("resize",function(){
		console.log("test");
	});
	//js형태
	window.onresize=function(){
		var w = window.innerWidth;
		if(w > 580){
			alert("모바일전용 사이트입니다.");
			location.href="about:blank";
		}
		//var w = document.getElementById("body").style.width;
		console.log(w);
		console.log("test");
	}
	 
</script>
<body id="body">
<input type="text" class="mid" placeholder="아이디를 입력하세여"><br>
<input type="submit" value="로그인" class="btn">
</body>
</html>