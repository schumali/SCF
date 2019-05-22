package com.scf.news.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.scf.login.servlet.utils.C3P0Util;
import com.scf.news.bean.Document;

/**
 * Servlet implementation class SelectDocument
 */
public class SelectDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("documentser1111");
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql ="select * from document";
		try {
			List<Document> list = runner.query(sql, new BeanListHandler<>(Document.class));
			HttpSession session = request.getSession();
			session.setAttribute("document", list);
			//重定向跳转到Tuser.jsp
			response.sendRedirect("TDocument.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
