<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删题</title>
<link rel="stylesheet" href="./css/delete.css" />
</head>
<body>
<div class="title">
<form action="${pageContext.request.servletContext.contextPath}/DeleteServlet" method="post" class="box wrapper">
<b>删除单选</b><br/>
请输入题号:<input type="text" name="question_id" placeholder="题号" required><br>
<input type="submit" value="删除">
<input type="reset" value="重置">

</form>
<form action="${pageContext.request.servletContext.contextPath}/DeletedServlet" method="post" class="box1 wrapper">
<b>删除判断</b><br/>
请输入题号:<input type="text" name="question_id" placeholder="题号" required><br>
<input type="submit" value="删除">
<input type="reset" value="重置">

</form>
</div>
<div>
<img alt="" src="./images/ks.jpg"></div>

</body>
</html>