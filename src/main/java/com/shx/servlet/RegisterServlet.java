package com.shx.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shx.jdbc.Dao;
import com.shx.jdbc.JdbcUtil;
import com.shx.pojo.User;

/**
 * 注册的servlet
 */

	@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 获取注册名和密码
		String username = request.getParameter("username").trim();
        String userpwd = request.getParameter("userpwd").trim();
        String again_userpwd = request.getParameter("again_userpwd").trim();
        
        
        //解决中文字符乱码
//        byte[] bytes = username.getBytes("ISO-8859-1");
//        username = new String(bytes,"utf-8");
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        JdbcUtil db = new JdbcUtil();
        // 创建一个用户保存下将密码和用户名保存
        User user = new User(username,userpwd);
        Dao dao = new Dao();
        
        try {
        	//数据库连接
            Connection conn = db.getConn();
            
            if(!userpwd.equals(again_userpwd)) {
            	out.println("<h2>两次输入的密码不一致</h2>");
	        	out.println("<h2>3秒以后返回注册页面</h2>");
            	response.setHeader("Refresh", "3;url=Register.jsp");
            } else {
            	if(dao.register(conn, user)) {
            		out.println("<h1>注册新用户成功</h1>");
                	out.println("<h2>3秒以后跳转登录页面</h2>");
                	response.setHeader("Refresh", "3;url =  index.jsp");                
                } else {
                	out.println("<h1>注册新用户失败,用户名已经存在</h1>");
                	out.println("<h2>3秒以后跳转回注册页面</h2>");
                	response.setHeader("Refresh", "3;url=Register.jsp");
                }
            }            
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
	}
}
