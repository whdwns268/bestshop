<%@page import="portfolio.smembervo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	long time = System.currentTimeMillis();
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/default.css?v=<%=time%>">
<link rel="stylesheet" type="text/css" href="./css/font.css?v=1<%=time%>">
</head>
<style>

.modifytitle{
width: 100%;
height: 60px;
background-color: rgb(61, 60, 60);
color: #333333;
font-size: 19px;
font-weight: bold;
text-indent: 20px;
line-height: 60px;
color: #ffffff;
}
.modifyul{
margin: 0 auto;
margin-top: 10px;
width: 500px;
height: auto;
display: flex;
flex-direction: column;
}
.modifyul > li{
width: 500px;
height: 45px;
display: flex;
border-bottom: 1px solid black;
box-sizing:border-box;
line-height: 45px;
align-items: center;
}
.modifyul > li > a:nth-of-type(1){
width: 150px;
height: 45px;
font-size: 15px;
color:#000000;
font-weight: bold;
}

.modifyul > li > input[type="text" i] {
width: 230px;
height: 35px;
border: 1px solid black;
text-indent: 10px;
}

.modiftydiv{
width: 100%;
height: 100px;
display: flex;
 justify-content: center;
 align-items: center;
}

.modiftydiv > input{
width: 150px;
height: 45px;
margin-right: 15px;
font-size:13px;
font-weight: bold;
color: #ffffff;
display: flex;
line-height: 45px;
text-align: center;
}

.modiftydiv > input:nth-of-type(1){
background-color: #513d3d;
}

.modiftydiv > input:nth-of-type(2){
background-color: #000000;
margin: 0;
}
</style>
<body>
<form id="frm" method="post" action="./membermodifyok.do">
<% List<smembervo> memberList = (List<smembervo>) request.getAttribute("memberlist"); %>
<p class="modifytitle">[고객정보 수정]</p>
<% for (smembervo mb : memberList) { %>
    <ul class="modifyul">
        <li>
            <a>아이디</a>
            <a><%= mb.getSid()%></a>
            <input type="hidden" value="<%= mb.getSid()%>" name="sid">
        </li>
        <li>
            <a>고객명</a>
            <a><%= mb.getSname()%></a>
        </li>
        <li>
            <a>레벨</a>
            <input type="text" name="slevel" value="<%= mb.getSlevel()%>">
        </li>
        <li>
            <a>포인트</a>
            <input type="text" name="spoint" value="<%= mb.getSpoint()%>" >
        </li>
        <li>
            <a>휴먼상태</a>
            <%-- 휴먼상태에 대한 로직 --%>
            <a>
	<input type="radio" name="sstate" <%= mb.getSstate().equals("Y") ? "checked='checked'" : "" %>>적용
	<input type="radio" name="sstate" <%= mb.getSstate().equals("N") ? "checked='checked'" : "" %>>미적용
            </a>
        </li>
        <li>
            <a>탈퇴일자</a>
            <a><%= mb.getSleavedate() != null ? mb.getSleavedate() : "미탈퇴" %></a>
        </li>
    </ul>
<% } %>

<div class="modiftydiv">
		<input type="button" value="정보수정" onclick="modifyok()">
		<input type="button" value="창닫기" onclick="modifyclose()">
</div>
</form>
</body>
<script>
function modifyok(){
	opener.parent.location.reload();
	frm.submit();
}

function modifyclose(){
	
	window.close();
}
</script>
</html>