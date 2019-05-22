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
import com.scf.news.bao.NewsDao;
import com.scf.news.bao.NoticeDao;
import com.scf.news.bean.News;
import com.scf.news.bean.Notice;

/**
 * Servlet implementation class allCategorynotice
 */
public class allCategorynotice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String json =null;
		NoticeDao dao =new NoticeDao();
		try {
			List<Notice> list =dao.findAllNotice();
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
		System.out.println("noticeenddddddddd");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
