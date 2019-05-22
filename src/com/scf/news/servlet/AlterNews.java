package com.scf.news.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.scf.login.servlet.utils.C3P0Util;
import com.scf.news.bean.News;

/**
 * Servlet implementation class AlterNews
 */
public class AlterNews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println("xiugainew11111");
		String sql ="select * from news where id=?";
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		try {
			News news = runner.query(sql, new BeanHandler<>(News.class), id);
			
			HttpSession session = request.getSession();
			//存放键值对key:value
			session.setAttribute("news", news);
			System.out.println("xiugainew22222");
			response.sendRedirect("editTNews.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
