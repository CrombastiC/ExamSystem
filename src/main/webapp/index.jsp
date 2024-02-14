<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="http://at.alicdn.com/t/font_1786038_m62pqneyrzf.css"
    />
    <link rel="stylesheet" href="./css/index.css" />
    <title>登陆页</title>
    <script>
      function zhuce() {
        document.login.action = "${pageContext.request.servletContext.contextPath}/Register.jsp";
        document.login.submit();
      }
    </script>
    
  </head>
<body>
<form name="login"action="${pageContext.request.servletContext.contextPath}/Login" method="post">
    <div class="form-wrapper">
      <div class="header">login</div>
      <div class="input-wrapper">
        <div class="border-wrapper">
          <input
            type="text"
            name="username"
            placeholder="用户名"
            class="border-item"
            autocomplete="off"
          />
        </div>
        <div class="border-wrapper">
          <input
            type="password"
            name="userpwd"
            placeholder="密码"
            class="border-item"
            autocomplete="off"
          />
        </div>
      </div>
      <div class="action">
        <input type="submit" value="登陆" class="btn" />
        <input type="button" value="注册"class="btn"  onclick="zhuce()" />
        <input type="reset" value="重置" class="btn" />
      </div>
      <input type="radio" name="Type" value="1"  required="required"/>我是学生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="Type" value="2" required="required" />我是老师
      <div class="icon-wrapper">
        <i class="iconfont icon-weixin"></i>
        <i class="iconfont icon-qq"></i>
        <i class="iconfont icon-git"></i>
      </div>
    </div>
    </form>
  </body>
</html>