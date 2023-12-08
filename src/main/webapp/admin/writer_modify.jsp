<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long time2 = System.currentTimeMillis();
%>
<link rel="stylesheet" type="text/css" href="./css/writer_index.css?v=<%=time2%>">
<script src="../ckeditor/ckeditor.js"></script>
<form id="frm" class="wirterform" method="post" enctype="multipart/form-data">
	    
	     <input type="hidden" name="nidx" value="${notilist[0].nidx}">
	     
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
				<input type="text" class="input500" name="ntitle" value="${notilist[0].ntitle}">
			</div>
			<a>최대 150자까지 입력이 가능</a>
		</li>
		
		<li>
			<p>글쓴이</p>
			<div>
				${notilist[0].nwriter}
			</div>
			<a>관리자 이름이 노출 됩니다.</a>
		</li>
		
		<li>
			<p>첨부파일</p>
			<div>
				${notilist[0].nfilename}
			</div>
			<a>첨부파일 최대 용량은 2M입니다.</a>
		</li>
		
		<li>
			<p>공지내용</p>
			<div>
			<textarea id="indextest2" class="indextest2" name="nnotice"></textarea>
			</div>
		</li>
	</ul>
	
	        <div class="witer_btn">
            <input type="button" value="공지목록" id="noticelistgo">
            <input type="button" value="공지수정" id="writermodifygo">
        </div>

	</div>
</form>
<script src="./js/writer_modify.js?v=<%=time2%>"></script>
<script>
var indextest2 = document.getElementById("indextest2");
CKEDITOR.replace('indextest2', {
    width: "700px",
    height: "410px",
    editorplaceholder: "공지내용을 입력하세요!",
    startupFocus: true,
    on: {
        instanceReady: function (ev) {
            ev.editor.setData(`${notilist[0].nnotice}`);
        }
    }
});

CKEDITOR.instances['indextest'].config.resize_enabled = false;
</script>