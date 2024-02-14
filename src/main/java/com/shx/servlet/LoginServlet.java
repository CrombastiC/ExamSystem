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
	 * 登录的 Servlet
	 */
	@WebServlet(name="LoginServlet",urlPatterns = "/Login")
	public class LoginServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
			this.doPost(request, response);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {				
			request.setCharacterEncoding("utf-8");
		        // 获取账号和密码
	        String username = request.getParameter("username");        
	        String userpwd = request.getParameter("userpwd");
	        String strUtype =request.getParameter("Type");
	        System.out.println(userpwd);

	        // 账号密码登录的方式
	        if(username != null && userpwd != null) {
	            //解决中文字符乱码
	            response.setContentType("text/html;charset=utf-8");
	            PrintWriter out = response.getWriter();
	            System.out.println(username);
	     
	        	JdbcUtil db = new JdbcUtil();
	            // 创建一个用户保存下将密码和用户名保存
	            User user = new User(username,userpwd);
	         
	            Dao dao = new Dao();
	          
	            try {
	                //数据库连接
	                Connection conn = db.getConn();
	              
	                
	                if(dao.login(conn, user) != null) {
	                	request.getSession().setAttribute("user", user);
	                	
	            	    if("1".equals(strUtype)) {
	            	    	response.sendRedirect(request.getContextPath()+"/Menu/studentMenu.jsp");
	            	    	return;
	            	    }else if("2".equals(strUtype)) {
//	            	    	request.getRequestDispatcher("Menu/teacherMenu.jsp").forward(request, response);
	            	    	response.sendRedirect(request.getContextPath()+"/Menu/teacherMenu.jsp");
	            	    	return;
	            	    }
	                
	                	
	                } else {
	                	out.println("<h1>用户名或者密码错误，验证失败</h1>");
	                	out.println("<h2>2秒以后跳转回登录页面</h2>");
	                	response.setHeader("Refresh", "2;index.jsp");
	                }   
	                
	            } 
	            catch (Exception e) {
	                e.printStackTrace();
	            } finally {
	    			out.close();
	    			
	    		}
	        } 
	  
	              
		}
}
	

