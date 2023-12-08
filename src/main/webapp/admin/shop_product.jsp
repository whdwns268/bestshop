<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long time = System.currentTimeMillis();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<link rel="stylesheet" type="text/css" href="./css/default.css?v=<%=time%>">
<link rel="stylesheet" type="text/css" href="./css/font.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/admin_main.css?v=<%=time%>">
<link rel="stylesheet" type="text/css" href="./css/admin_header.css?v=<%=time%>">
<link rel="stylesheet" type="text/css" href="./css/admin_menu.css?v=<%=time%>">
<link rel="stylesheet" type="text/css" href="./css/admin_footer.css?v=<%=time%>">
</head>
<body>

<header>
<%@ include file="./admin_header.jsp"%>
</header>

<nav>
<%@ include file="./admin_menu.jsp"%>
</nav>

<main id="main">
<%@ include file="./shop_product_list.jsp"%>
</main>

<footer>
<%@ include file="./admin_footer.jsp"%>
</footer>
 
</body>
</html>