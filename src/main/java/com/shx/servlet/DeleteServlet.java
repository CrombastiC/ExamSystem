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
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String question_id=request.getParameter("question_id").trim();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		JdbcUtil db = new JdbcUtil();
		Sub sub = new Sub(question_id);
		Dao dao=new Dao();
		
		try {
			Connection conn=db.getConn();
			if(dao.dsq(conn, sub)) {
				response.setHeader("Refresh", "0,url=create.jsp");
				
			}else {
				out.println("<h1>插入失败</h1>");
				response.setHeader("Refresh", "2,url=create.jsp");
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
