package com.shx.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shx.jdbc.JdbcUtil;


@WebServlet("/Paper2")
public class Paper2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JdbcUtil db = new JdbcUtil();
        Connection conn = db.getConn();
        int count = 0;
        for(int i = 1;i <= 20;i++) {
        try {
                Statement stmt=conn.createStatement();
                String sql="select * from pdt where question_id = " + i;
            ResultSet rs=stmt.executeQuery(sql);
            while(rs.next()){
                    
            String k = rs.getString("answer");
            
            
            String s=String.valueOf(i);
            String d1 = request.getParameter(s).trim();
//            System.out.print(d1);
//      System.out.print(k);
            if(k.equals(d1)) {
                    count+=2;
            }
            
                
            }
        } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
        }
        }
//       
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<h1>您的成绩是"+count+"分</h1>");
        out.println("5秒后返回");
        response.setHeader("Refresh", "5;url=  Menu/studentMenu.jsp");
        
        
		
		
	}

}
