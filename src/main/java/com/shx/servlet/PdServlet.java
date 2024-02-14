package com.shx.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shx.jdbc.JdbcUtil;
import com.shx.jdbc.Dao;
import com.shx.pojo.Pdt;

/**
 * Servlet implementation class PdServlet
 */
@WebServlet("/Pdt.do")
public class PdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String subject = request.getParameter("subject").trim();    
        String answer =request.getParameter("answer").trim();
	       
//		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html:charset=utf-8");
        //解决中文字符乱码
//        byte[] bytes = question.getBytes("ISO-8859-1");
//        question = new String(bytes,"utf-8");
       
        
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        
        JdbcUtil db = new JdbcUtil();
        // 创建一个用户保存下将密码和用户名保存
        Pdt pdt= new Pdt(subject,answer);
        Dao dao = new Dao();
        
        try {
        	//数据库连接
            Connection conn = db.getConn();
            
          
            	if(dao.sqp(conn, pdt)) {
            		//out.println("<h1>插入成功</h1>");
                	
                	response.setHeader("Refresh", "0;url = create.jsp");                
                } else {
                	out.println("<h1>插入失败</h1>");
                	
                	response.setHeader("Refresh", "2;url = create.jsp");
                }
                        
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
	
	}

}
