 document.querySelector("#writermodifygo").addEventListener("click", function() {
	 frm.action="./notice_modify_update.do";
	 frm.submit();
  }, true);

   document.querySelector("#noticelistgo").addEventListener("click", function() {
	 location.href="./notice_list.do";
  }, true);