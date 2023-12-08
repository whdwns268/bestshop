    document.querySelector("#writeruploadgo").addEventListener("click", function() {
	 frm.action="./notice_writer_upload.do";
	 frm.submit(); 
  }, true);

  document.querySelector('input[type="file"]').addEventListener('change', function(e) {
    document.getElementById('hiddenFilename').value = e.target.files[0].name;
  });
  
      document.querySelector("#writerlistgo").addEventListener("click", function() {

	if (confirm("목록으로 돌아갈까요?")) {
    location.href="./notice_list.do?currentPage=1";
  }	
}, true);
