document.querySelector("#listgo").addEventListener("click", function() {
	 location.href="./notice_list.do";
}, true);

document.querySelector("#writermodify").addEventListener("click", function() {
	 frm.action="./notice_modify.do";
	 frm.submit();
}, true);

function ckdelete(z){	

	frm.action="notice_ckdelete.do";
	frm.submit();
};
