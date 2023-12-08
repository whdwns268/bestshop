<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long time2 = System.currentTimeMillis();
%>
<link rel="stylesheet" type="text/css" href="./css/writer_index.css?v=<%=time2%>">
<script src="../ckeditor/ckeditor.js"></script>
<form id="frm" class="wirterform" method="post" enctype="multipart/form-data">
	    <div class="wirter_div">
	        <ul class="writer_topul">
	            <li>■</li>
	            <li>공지사항 관리페이지</li>
	        </ul>
	        
	        
	<ul class="witer_main_ul">
		<li>
			<p>공지사항 여부</p>
			<div>
				<input type="checkbox" name="nprint" value="Y">
				<a>공지출력</a>
			</div>
			<a>공지출력을 체크할 시 해당 글 내용은 최상단에 노출 되어 집니다.</a>
		</li>
		
		<li>
			<p>공지사항 제목</p>
			<div>
				<input type="text" class="input500" name="ntitle">
			</div>
			<a>최대 150자까지 입력이 가능</a>
		</li>
		
		<li>
			<p>글쓴이</p>
			<div>
				<input type="text" class="input200" name="nwriter">
			</div>
			<a>관리자 이름이 노출 됩니다.</a>
		</li>
		
		<li>
			<p>첨부파일</p>
			<div>
				<input type="file" name="file">
				<input type="hidden" name="nfilename" id="hiddenFilename">
			</div>
			<a>첨부파일 최대 용량은 2M입니다.</a>
		</li>
		
		<li>
			<p>공지내용</p>
			<div>
			<textarea id="indextest" class="indextest" name="nnotice" placeholder="공지내용을 입력하세요"></textarea>
			</div>
		</li>
	</ul>
	
	        <div class="witer_btn">
            <input type="button" value="공지목록" id="writerlistgo">
            <input type="button" value="공지등록" id="writeruploadgo">
        </div>

	</div>
</form>
<script src="./js/writer_index.js?v=<%=time2%>"></script>
<script>
var indextest = document.getElementById("indextest");
CKEDITOR.replace('indextest',{
    width:"700px",
    height:"410px",
    editorplaceholder:"공지내용을 입력하세요!",
});

CKEDITOR.instances['indextest'].config.resize_enabled = false;
</script>