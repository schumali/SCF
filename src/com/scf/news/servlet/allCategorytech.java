package com.scf.news.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.scf.news.bao.Articledao;
import com.scf.news.bao.NewsDao;
import com.scf.news.bean.Article;
import com.scf.news.bean.News;

/**
 * Servlet implementation class allCategorytech
 */
public class allCategorytech extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String json =null;
		Articledao dao =new Articledao();
		try {
			List<Article> list =dao.findAllArticle();
			//将json转换为数组字符串
			Gson gson= new Gson();
			json = gson.toJson(list);
			System.out.println(json);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//将json写给客户端
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter writer =response.getWriter();
		writer.write(json);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
