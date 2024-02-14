<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>注册界面</title>
        <link rel="stylesheet" href="css/register.css" />
    </head>

    <body>
        <div id="test">
            <form action="${pageContext.request.servletContext.contextPath}/RegisterServlet" method="post">
                		<h2>注册页面</h2>
                    <p>用户名<input type="text" name="username" required="required"><label></label></p>
                   <p>密码<input type="password" name="userpwd" required="required"><label></label></p>
                    <p>确认密码<input type="password" name="again_userpwd" required="required"><label></label></p>
                
                
                <input type="submit" value="注册">
                <input type="reset" value="重新输入">
	
            </form>
        </div>
    </body>

    </html>