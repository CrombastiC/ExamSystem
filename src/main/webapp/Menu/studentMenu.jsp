<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生菜单</title>
<script>
      function cj() {
    	  alert("考试结束自动显示成绩");
      }
       
    </script>
 <style>
        .box {
            height: 40px;
            border-top: 3px #ff8500 solid;
            border-bottom: 1px solid #edeef0;
          	text-align: center;
        }

        .box a {
            /* line-height减去font-size的值会均分到文本底部和顶部 */
            /* width: 80px; */
            padding: 0 16px     ;
            height: 40px;

            display: inline-block;
            text-align: center;
            line-height: 40px;
            font-size: 20px;
            color: #4c4c4c;
            text-decoration: none;
        }

        .box a:hover {
            background-color: #edeef0;
            color: #ff8400;
        }
        img{
        width:1900px;
        height:863px;}
        
    </style>
</head>

<body>
    <div class="box">
        <a target="_self"  href="${pageContext.request.servletContext.contextPath}/test/paper.jsp">开始单选考试</a>
        <a target="_self" href="${pageContext.request.servletContext.contextPath}/test/paper1.jsp" >开始判断考试</a>
        <a href="#" onclick="cj()">查看成绩</a>
        <a href="${pageContext.request.servletContext.contextPath}/index.jsp">退出登录</a>
    </div>
    <div>
    <img alt="" src="../images/ks.jpg"></div>
</body>
</html>