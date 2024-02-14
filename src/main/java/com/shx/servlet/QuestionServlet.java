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
import com.shx.pojo.Sub;

/**
 * Servlet implementation class QuestionServlet
 */
@WebServlet("/Question.do")
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");//注意此语句一定要设置在取参数的语句之前

		String subject = request.getParameter("subject").trim();    
        String choice_a = request.getParameter("choice_a").trim();
        String choice_b =request.getParameter("choice_b").trim();
        String choice_c =request.getParameter("choice_c").trim();
        String choice_d =request.getParameter("choice_d").trim();
        String answer =request.getParameter("answer").trim();
        
      //解决中文字符乱码
//        byte[] bytes = subject.getBytes("ISO-8859-1");
//        subject = new String(bytes,"utf-8");
//        byte[] bytes1 = choice_a.getBytes("ISO-8859-1");
//        choice_a = new String(bytes1,"utf-8");
//        byte[] bytes2 = choice_b.getBytes("ISO-8859-1");
//        choice_b = new String(bytes2,"utf-8");
//        byte[] bytes3 = choice_c.getBytes("ISO-8859-1");
//        choice_c = new String(bytes3,"utf-8");
//        byte[] bytes4 = choice_d.getBytes("ISO-8859-1");
//        choice_d = new String(bytes4,"utf-8");
        
        
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        
        
        JdbcUtil db = new JdbcUtil();
        Sub sub = new Sub(subject,choice_a,choice_b,choice_c,choice_d,answer);
        Dao dao = new Dao();
        
        
        try {
            //数据库连接
        Connection conn = db.getConn();
        
      
                if(dao.insert(conn, sub)) {
                        out.println("<h1>插入成功</h1>");
                    
                    response.setHeader("Refresh", "1;url =create.jsp");                
            } else {
                    out.println("<h1>插入失败</h1>");
                    
                    response.setHeader("Refresh", "2;url =create.jsp");
            }
                    
            } catch (Exception e) {
                    e.printStackTrace();
            } finally {
                    out.close();
            }
		}
        
        
        
        
	}


