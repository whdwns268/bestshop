<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	long time2 = System.currentTimeMillis();
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="./css/notice_index.css?v=<%=time2%>">

<div class="member_list_div">
    <ul class="member_list_topul">
        <li>■</li>
        <li>공지사항 관리페이지</li>
    </ul>

<form id="frm"  method="post"  onsubmit="return mlistgo()">

<ul class="member_list_inner_top listsize">
    <li><input type="checkbox"class="ckboxall"></li>
	<li>NO</li>
	<li>제목</li>
	<li>글쓴이</li>
	<li>날짜</li>
	<li>조회</li>
</ul>
	        
<c:set var="totalPages" value="${totalCount / pageSize + (totalCount % pageSize == 0 ? 0 : 1)}" />
<c:set var="currentPageGroup" value="${(currentPage - 1) / pageGroupSize + 1}" />
<c:set var="startPage" value="${(currentPageGroup - 1) * pageGroupSize + 1}" />
<c:set var="endPage" value="${startPage + pageGroupSize - 1}" />
<c:if test="${endPage > totalPages}">
  <c:set var="endPage" value="${totalPages}" />
</c:if>
    <c:set var="ea" value="${fn:length(noticelist)}" />
	<c:if test="${ea == 0}">
	    <ul class="member_list_none">
	        <li>등록된 공지 내용이 없습니다.</li>
	    </ul>
	</c:if>
	<c:set var="counter" value="0" />
		<c:forEach var="item" items="${noticelist}" >
	    <c:set var="counter" value="${counter + 1}" />
	        <ul class="member_list_inner listsize">
	            <li><input type="checkbox" class="ckbox" name="nidxArray" value="${item.nidx}"></li>
	            <li>${item.nidx}</li>
	            <li onclick="ntitlego('${item.nidx}')">${item.ntitle}</li>
	            <li>${item.nwriter}</li>
	            <li>${item.nupdate}</li>
	            <li>${item.nviews}</li>
	        </ul>
	</c:forEach>
	                    
	<input type="hidden" name="hidendix">
	        <!--리스트버튼-->
<!-- 페이징 네비게이션 -->
<ul class="member_list_eabtn">
  <c:if test="${currentPage > 0}">
  <a onclick="gogogo('1')">&lt;&lt;</a>
    <a onclick="gogogo('${currentPage-1}')">&lt;</a>
  </c:if>

  <c:forEach begin="${startPage}" end="${endPage}" var="page">
    <c:choose>
      <c:when test="${page == currentPage}">
        <a class="current" style="background-color: white">${page}</a>
      </c:when>
      <c:otherwise>
        <a onclick="gogogo('${page}')" >${page}</a>
      </c:otherwise>
    </c:choose>
  </c:forEach>

  <c:if test="${currentPage < totalPages}">
    <a onclick="gogogo('${currentPage+1}')"> &gt;</a>
  	<a onclick="gogogo(parseInt('${totalPages}'))"> &gt;&gt;</a>
  </c:if>
</ul>

	        
	        

        <!--멤버 삭제버튼-->
        <div class="member_list_delete">
            <input type="button" value="공지삭제" onclick="ckdelete()">
            <input type="button" value="공지등록" id="writergo">
        </div>
      </form>
   </div>
   
<script src="./js/notice_index.js?v=<%=time2%>"></script>
<script>
function gogogo(z) {
	console.log(z);
	if("0" >= z){
		alert("첫페이지입니다.");
	}else if(${totalPages} < z){    	
		alert("마지막페이지입니다.");
	}
	else{
         frm.action="./notice_list.do?currentPage="+z;    		
         frm.submit();	
    }
}
function mlistgo(){
    frm.submit();
    
    
}
</script>