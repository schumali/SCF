package com.scf.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.scf.login.servlet.utils.C3P0Util;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.xml.internal.bind.v2.runtime.Name;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("收到一个请求");
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		username=new String(username.getBytes("iso8859-1"),"UTF-8");
		password=new String(password.getBytes("iso8859-1"),"UTF-8");
		System.out.println("用户名"+username);
		System.out.println("密码"+password);
		//使用java代码查询数据库
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql ="select * from user where username=? and password=?";
		try {
			User user = runner.query(sql, new BeanHandler<>(User.class), username,password );
			PrintWriter writer=response.getWriter();
			if (user != null) {
				//登录成功
				System.out.println("登录成功");
//				writer.write("login sucess");
//				writer.write("login 成功");
				response.sendRedirect("guanli.jsp");
			}else {
				System.out.println("登录失败");
				writer.write("登录失败");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
