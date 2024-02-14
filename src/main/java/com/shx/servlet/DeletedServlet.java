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
import com.shx.pojo.Pdt;


/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeletedServlet")
public class DeletedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String question_id=request.getParameter("question_id").trim();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		JdbcUtil db = new JdbcUtil();
		Pdt pdt= new Pdt(question_id);
		Dao dao=new Dao();
		
		try {
			Connection conn=db.getConn();
			if(dao.dpd(conn, pdt)) {
				response.setHeader("Refresh", "0,url=create.jsp");
				out.println("<h1>删完了</h1>");
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
