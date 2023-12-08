var timer;
var lefts = 0;
var node = 1;
	//디스크 갯수 배너갯수에 맞춰 자동 체크
	var disc = document.getElementById("discul"); 
	const disLi = disc.querySelector("li:first-child");
	var discea = document.querySelectorAll("#bannerul > li");
	var ea = discea.length;
	var discck=1;
	while(discck <= ea){
		disc.innerHTML+="<li id='disck"+discck+"'>"+discck+"</li>";
		discck++;
	}
	

function bannerani(){
	
    var banner = document.getElementById("bannerul"); 
    timer = setTimeout(bannerani,10); //슬라이드 배너 형태로 애니메이션이 작동 되도록 함

    lefts -= 10; 
    if(lefts < -1100){ //최종 -100보다 작을 경우 타이머종료
        lefts = 0;
        clearTimeout(timer);
        const firstLi = banner.querySelector("li:first-child");
    	const copy = firstLi.cloneNode(true);
    	banner.removeChild(firstLi);
    	banner.appendChild(copy);
    	setTimeout(bannerani,5000);
    	banner.style.left = lefts + "px";
    	 
    	//디스크핸들링
        document.getElementById("disck"+node).style.backgroundColor = "black";
        node += 1;
        console.log(node);
        if(node > 3){
        	node = 1;
        }
        
    }
    else{ //시간함수를 이용하여 애니메이션 처럼 움직임
    banner.style.left = lefts + "px";
    }
}
setTimeout(bannerani,5000);