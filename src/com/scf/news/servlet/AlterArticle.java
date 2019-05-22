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
import com.scf.news.bean.Article;


/**
 * Servlet implementation class AlterArticle
 */
public class AlterArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println("xiugainew11111");
		String sql ="select * from article where id=?";
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		try {
			Article article = runner.query(sql, new BeanHandler<>(Article.class), id);
			
			HttpSession session = request.getSession();
			//存放键值对key:value
			session.setAttribute("article", article);
			System.out.println("xiugaiarticle22222");
			response.sendRedirect("editTArticle.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
