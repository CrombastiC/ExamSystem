<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>老师出题页</title>
<link rel="stylesheet" href="./css/create.css" />
</head>
<body>
<form action="${pageContext.request.servletContext.contextPath}/Question.do" class="box wrapper">
<b>添加单选题:</b><br>
<input type="text" name="subject" placeholder="题目" required="required"><br>
<input type="text" name="choice_a" placeholder="a" required="required"><br>
<input type="text" name="choice_b" placeholder="b" required="required"><br>
<input type="text" name="choice_c" placeholder="c" required="required"><br>
<input type="text" name="choice_d" placeholder="d" required="required"><br>答案
<input type="radio" name="answer" value="a" required="required">a
<input type="radio" name="answer" value="b" required="required">b
<input type="radio" name="answer" value="c" required="required">c
<input type="radio" name="answer" value="d" required="required">d<br>
<input type="submit" value="提交试题" required="required">
<input type="reset" value="重置" required="required">
</form>
<details>

<summary>查看试题</summary>
<div class="top1">选择题汇总</div>
<table border="1" class="s">
   <tr>
      <th class="text">编号</th>
      <th>题目</th>
      <th>A</th>
      <th>B</th>
      <th>C</th>
      <th>D</th>
      <th>正确答案</th>
   </tr>
   <%
     String driverClass="com.mysql.cj.jdbc.Driver";
     String url="jdbc:mysql://localhost:3306/work?useUnicode=true&characterEncoding=utf-8&useSSL=false";
     String user="root";
     String password="123456";
     Connection conn;
     try{
    	 Class.forName(driverClass);
    	 conn=DriverManager.getConnection(url, user, password);
    	 Statement stmt=conn.createStatement();
    		String sql1= "SET @i=0";
            Statement stmt1 = null;
            stmt1 = conn.createStatement();
    	 int count1 = stmt1.executeUpdate(sql1);
         System.out.println("影响了"+count1+"行！");
         
         String sql2= "UPDATE `sub` SET `question_id`=(@i :=@i+1)";
         Statement stmt2 = null;
         stmt2 = conn.createStatement();
         int count2 = stmt2.executeUpdate(sql2);
         System.out.println("影响了"+count2+"行！");
        
         String sql3= "ALTER TABLE `sub` AUTO_INCREMENT=0";
         Statement stmt3 = null;
         stmt3 = conn.createStatement();
         
          int count3 = stmt3.executeUpdate(sql3);
    	 String sql="select * from sub";
    	 ResultSet rs=stmt.executeQuery(sql);
    	 
    	 while(rs.next()){
   %>
   <tr>
      <td><%=rs.getString("question_id") %></td>
      <td><%=rs.getString("subject") %></td>
      <td><%=rs.getString("choice_a") %></td>
      <td><%=rs.getString("choice_b") %></td>
      <td><%=rs.getString("choice_c") %></td>
      <td><%=rs.getString("choice_d") %></td>
      <td><%=rs.getString("answer") %></td>
   </tr>
   <%
    	 }
    	 
    	
     }catch (Exception ex){
    	 ex.printStackTrace();
    	
     }
     
    
   %>
  
</table>
</details>


<form action="${pageContext.request.servletContext.contextPath}/Pdt.do" method="post" class="box1 wrapper">
  <b>添加判断题:</b>
  <br>
    <input type="text" name="subject" placeholder="问题" required="required"><br/>
    正确答案：
    <input type="radio" name="answer" value="対" required="required">対
	<input type="radio" name="answer" value="错" required="required">错
	
    <br/>
    <button type="submit">提交</button>
    <input type="reset" value="重置" >
    
    
</form>
<details>

<summary>查看试题</summary>
<div class="top">判断题汇总</div>
<table border="1" class="s">
   <tr>
      <th>编号</th>
      <th>题目</th>
      <th>正确答案</th>
   </tr>
   <%
   
     try{
    	 Class.forName(driverClass);
    	 conn=DriverManager.getConnection(url, user, password);
    	 Statement stmt=conn.createStatement();
    	 String sql1= "SET @i=0";
         Statement stmt1 = null;
         stmt1 = conn.createStatement();
 	 int count1 = stmt1.executeUpdate(sql1);
      System.out.println("影响了"+count1+"行！");
      
      String sql2= "UPDATE `pdt` SET `question_id`=(@i :=@i+1)";
      Statement stmt2 = null;
      stmt2 = conn.createStatement();
      int count2 = stmt2.executeUpdate(sql2);
      System.out.println("影响了"+count2+"行！");
     
      String sql3= "ALTER TABLE `pdt` AUTO_INCREMENT=0";
      Statement stmt3 = null;
      stmt3 = conn.createStatement();
      
       int count3 = stmt3.executeUpdate(sql3);
    	 String sql="select * from pdt";
    	 ResultSet rs=stmt.executeQuery(sql);
    	 while(rs.next()){
   %>
   <tr>
      <td><%=rs.getString("question_id") %></td>
      <td><%=rs.getString("subject") %></td>
      <td><%=rs.getString("answer") %></td>
   </tr>
   <%
    	 }
     }catch (Exception ex){
    	 ex.printStackTrace();
    	
     }
   %>
</table>
</details>

</body>
</html>