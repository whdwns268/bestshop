<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./ckeditor/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
</head>
<style>
.texts{
width:400px;
height: 800px
}
</style>
<body>
<textarea  id="texts" class="texts"></textarea>

</body>
<script>
                        CKEDITOR.replace( 'texts' );
                </script>
</html>