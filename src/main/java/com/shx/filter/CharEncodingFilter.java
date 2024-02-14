package com.shx.filter;

import java.io.IOException;
import javax.servlet.*;
public class CharEncodingFilter implements Filter {
       
	 @Override
	    public void destroy() {
	        System.out.println("CharEncodingFilter销毁");
	    }

	    @Override
	    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
	            throws IOException, ServletException {
	        request.setCharacterEncoding("utf-8");
	        response.setCharacterEncoding("utf-8");
	        chain.doFilter(request, response);
	    }

}
