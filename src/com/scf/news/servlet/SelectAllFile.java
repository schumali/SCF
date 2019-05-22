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
import com.scf.news.bao.DocumentDao;
import com.scf.news.bean.Document;

/**
 * Servlet implementation class SelectAllFile
 */
public class SelectAllFile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String json =null;
		request.setCharacterEncoding("UTF-8");//jia
		DocumentDao dao =new DocumentDao();
		try {
			List<Document> list =dao.findAllFiles();
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
		System.out.println("endddddddddselecfile");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
