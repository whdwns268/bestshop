<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long time2 = System.currentTimeMillis();
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberList</title>
<link rel="stylesheet" type="text/css" href="./css/default.css?v=<%=time2%>">
<link rel="stylesheet" type="text/css" href="./css/font.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/admin_main.css?v=<%=time2%>">
<link rel="stylesheet" type="text/css" href="./css/admin_header.css?v=<%=time2%>">
<link rel="stylesheet" type="text/css" href="./css/admin_menu.css?v=<%=time2%>">
<link rel="stylesheet" type="text/css" href="./css/admin_footer.css?v=<%=time2%>">
<script src="./js/admin_header.js?v=<%=time2%>"></script>

<!-- 해당css -->
<link rel="stylesheet" type="text/css" href="./css/member_list.css?v=<%=time2%>">
</head>

<body>

<header>
<%@ include file="./admin_header.jsp"%>
</header>

<nav>
<%@ include file="./admin_menu.jsp"%>
</nav>
<main id="main">
	    <div class="member_list_div">
	        <ul class="member_list_topul">
	            <li>■</li>
	            <li>회원관리</li>
	        </ul>
	        <!--검색부분-->
<form id="frm"  method="post"  onsubmit="return mlistgo()">
<input type="hidden" name="sid" id="sid" value="">
	        <ul class="member_list_serchul">
	            <li>
	            

	            
	                <select name="search_member">
	                    <option value="sid">아이디</option>
	                    <option value="sname">고객명</option>
	                    <option value="smtel">휴대폰</option>
	                </select>
	            </li>
	            <li><input type="text" class="input270" id="member_input" name="member_input" value="${member_input}"></li>
	            <li><input type="hidden" name="currentPage" value="${currentPage}"><input type="submit" value="검색" id="member_search"></li>
	        </ul>
	        
	        <!--리스트 상단 출력부분-->
	        <ul class="member_list_inner_top listsize">
	            <li><input type="checkbox"class="ckboxall"></li>
	            <li>아이디</li>
	            <li>고객명</li>
	            <li>휴대폰</li>
	            <li>전화번호</li>
	            <li>레벨</li>
	            <li>포인트</li>
	            <li>최종접속</li>
	            <li>가입일</li>
	            <li>메일수신</li>
	            <li>SMS수신</li>
	            <li>관리</li>
	        </ul>
	        
	        
	       <!-- 페이징 처리 -->
<c:set var="totalPages" value="${totalCount / pageSize + (totalCount % pageSize == 0 ? 0 : 1)}" />
<c:set var="currentPageGroup" value="${(currentPage - 1) / pageGroupSize + 1}" />
<c:set var="startPage" value="${(currentPageGroup - 1) * pageGroupSize + 1}" />
<c:set var="endPage" value="${startPage + pageGroupSize - 1}" />
<c:if test="${endPage > totalPages}">
  <c:set var="endPage" value="${totalPages}" />
</c:if>
	        
	        
	        
	        <!--멤버 리스트 없을경우-->
	        <c:set var="ea" value="${fn:length(memberlist)}" />
			<c:if test="${ea == 0}">
			    <ul class="member_list_none">
			        <li>등록된 회원이 없습니다.</li>
			    </ul>
			</c:if>
	        
	<!--멤버 리스트 출력-->
<%-- 	    <c:out value="search_member: -${param.search_member}-" /> --%>
<%-- 		<c:out value="member_input: -${param.member_input}-" /> --%>
		<c:set var="counter" value="0" />
		<c:forEach var="item" items="${memberlist}" >
	     <c:set var="counter" value="${counter + 1}" />
	        <ul class="member_list_inner listsize">
	            <li><input type="checkbox" class="ckbox" name="cksid" value="${item.sid}"></li>
	            <li>${item.sid}</li>
	            <li>${item.sname}</li>
	            <li>${item.smtel}</li>
	            <li>${item.stel}</li>
	            <li>${item.slevel}</li>
	            <li><fmt:formatNumber value="${item.spoint}" pattern="#,##0" /></li>
	            <li>${item.slastdate}</li>
	            <li>${item.sjoindate}</li>
	            <li>${item.sadmail}</li>
	            <li>${item.sadsms}</li>
	            <li>
	                <div>
	                    <button type="button" name="member_sid" value="" onclick="modifygo('${item.sid}')">수정</button>
	                    <button type="button" onclick="memberstate('${item.sid}')">정지</button>
	                </div>
	            </li>
	        </ul>
	</c:forEach>
	                    

	        <!--리스트버튼-->
<!-- 페이징 네비게이션 -->
<ul class="member_list_eabtn">
  <c:if test="${currentPage > 0}">
    <a onclick="gogogo('${currentPage-1}')">&lt; </a>
  </c:if>

  <c:forEach begin="${startPage}" end="${endPage}" var="page">
    <c:choose>
      <c:when test="${page == currentPage}">
        <a class="current" style="background-color: gray">${page}</a>
      </c:when>
      <c:otherwise>
        <a onclick="gogogo('${page}')" >${page}</a>
      </c:otherwise>
    </c:choose>
  </c:forEach>

  <c:if test="${currentPage < totalPages}">
    <a onclick="gogogo('${currentPage+1}')"> &gt;</a>
  </c:if>
</ul>

	        
	        

		        <!--멤버 삭제버튼-->
		        <div class="member_list_delete">
		            <input type="button" value="선택삭제" onclick="ckdelete()">
		        </div>
	       </form>
	    </div>
	   
</main>
<footer>
<%@ include file="./admin_footer.jsp"%>
</footer>

</body>
<script src="./js/member_list.js?v=<%=time2%>"></script>
<script>
document.addEventListener('DOMContentLoaded', function() {
    var searchMember = '<%= request.getParameter("search_member") %>';
    var memberInput = '<%= request.getParameter("member_input") %>';
    if (searchMember) {
        var selectElement = document.querySelector('select[name="search_member"]');
        for (var i = 0; i < selectElement.options.length; i++) {
            if (selectElement.options[i].value === searchMember) {
                selectElement.selectedIndex = i;
                break;
            }
        }
    }
    if (memberInput != null && memberInput != "null") {
        console.log(memberInput);
        var memberInputElement = document.getElementById('member_input');
        memberInputElement.value = memberInput;
    }
    
});

    var searchMember = '<%= request.getParameter("search_member") %>';
    var memberInput = '<%= request.getParameter("member_input") %>';
    var memberInputElement = document.getElementById('member_input');

    function gogogo(z) {
    	console.log(z);
    	if("0" >= z){
    		alert("첫페이지입니다.");
    	}else if(${totalPages} < z){    	
    		alert("마지막페이지입니다.");
    	}
    	else{
         frm.action="./member_list.do?currentPage="+z;    		
         frm.submit();	    		
    	}
    }

function mlistgo(){
    var member_input = document.getElementById("member_input");
    var frm = document.getElementById("frm");
    var currentPage = document.querySelector('input[name="currentPage"]').value;
    if(member_input.value == ""){
    location.href="./member_list.do?currentPage=1";
    }
    else if(memberInputElement.value != memberInput){
            console.log("값다름")
            frm.currentPage.value = 1;
            frm.action="./member_list.do?currentPage=1"; 
            frm.submit();	
    }else{
    	frm.submit();	
    }
}
</script>
</html>