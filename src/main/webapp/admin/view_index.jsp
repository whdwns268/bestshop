<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long time2 = System.currentTimeMillis();
%>

<link rel="stylesheet" type="text/css" href="./css/view_index.css?v=<%=time2%>">

<form id="frm" class="wirterform" method="post" enctype="multipart/form-data">
	    <input type="hidden" name="nidx" value="${notilist[0].nidx}">
	    <input type="hidden" name="nidxArray" value="${notilist[0].nidx}">
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
			${notilist[0].ntitle}
			</div>

		</li>
		
		<li>
			<p>글쓴이</p>
			<div>
			${notilist[0].nwriter}
			</div>

		</li>
		
		<li>
			<p>첨부파일</p>
			<div>
				<a href="./download.do?filename=${notilist[0].nfilename}" onclick="downloadFile()">${notilist[0].nfilename}</a>
			</div>
		</li>
		
		<li>
			<p>공지내용</p>
			<div>
				<div class="nnotice" id="nnotice"></div>
			</div>
		</li>
	</ul>
	
	        <div class="witer_btn">
            <input type="button" value="공지목록" id="listgo">
            <input type="button" value="공지수정" id="writermodify">
            <input type="button" value="공지삭제" onclick="ckdelete()">
        </div>

	</div>
</form>
<script src="./js/view_index.js?v=<%=time2%>"></script>
<script>
var nnotice = document.getElementById("nnotice");
nnotice.innerHTML = `${notilist[0].nnotice}`;

</script>