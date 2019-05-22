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
import com.scf.news.bean.News;

/**
 * Servlet implementation class SelectNews
 */
public class SelectNews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql ="select * from news";
		try {
			List<News> list = runner.query(sql, new BeanListHandler<>(News.class));
			//获取session对象
			HttpSession session = request.getSession();
			//存放键对值数据
			session.setAttribute("new",list);
			System.out.println(list);
			//重定向
			response.sendRedirect("Tnews.jsp");
			System.out.println("1111111111");
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
