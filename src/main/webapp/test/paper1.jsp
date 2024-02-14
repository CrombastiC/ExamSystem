<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>判断题</title>
<style type="text/css">
.box input[type="submit"] {
    background: transparent;
    border: none;
    outline: none;
    color: #fff;
    background: #03a9f4;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
</style>
</head>
<body>
<h2>判断题（针对以下题目，请判断题目的正确与否）（每题2分）</h2>
   <form action="${pageContext.request.servletContext.contextPath}/Paper2" method="post" class="box">
   <%
     
     String driverClass="com.mysql.cj.jdbc.Driver";
     String url= "jdbc:mysql://localhost:3306/work?useUnicode=true&characterEncoding=utf-8&useSSL=false";
     String user = "root";
     String password = "123456";
     Connection conn;
     for(int i= 1;i<= 20;i++){
     try{
      Class.forName(driverClass);
      conn=DriverManager.getConnection(url, user, password);
      Statement stmt=conn.createStatement();
      String sql="select * from pdt where question_id = " + i;
      ResultSet rs=stmt.executeQuery(sql);
      
     
      while(rs.next()){
   %>
     
       <b><%=i%>.<%=rs.getString("subject") %><br> </b>
       <input type="radio" name="<%=i %>" value="对" required="required">对<br>
       <input type="radio" name="<%=i %>" value="错" required="required">错<br>
   <%
      }
     }catch (Exception ex){
      ex.printStackTrace();
     
     }
     }
   %>
   <input type="submit" value="提交">
</form>

</body>
</html>