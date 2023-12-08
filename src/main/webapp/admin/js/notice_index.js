    document.querySelector("#writergo").addEventListener("click", function() {
	 location.href="./notice_writer.do";
  }, true);
  
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
    
function ntitlego(z){	
frm.hidendix.value = z;
  	
location.href="./notice_view.do?nidx="+z;
};
	
	
function ckdelete(z){	

	frm.action="notice_ckdelete.do";
	frm.submit();
};
	
	