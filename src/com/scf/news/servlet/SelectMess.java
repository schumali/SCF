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
import com.scf.news.bean.Messag;

/**
 * Servlet implementation class SelectMess
 */
public class SelectMess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("mess111111111");
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql ="select * from message";
		try {
			List<Messag> list = runner.query(sql, new BeanListHandler<>(Messag.class));
			HttpSession session = request.getSession();
			session.setAttribute("message", list);
			response.sendRedirect("TMess.jsp");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
