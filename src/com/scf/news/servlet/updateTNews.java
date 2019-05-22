package com.scf.news.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scf.news.bao.NewsDao;
import com.scf.news.bean.News;

/**
 * Servlet implementation class updateTNews
 */
public class updateTNews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String ntitle = request.getParameter("name");
		String ndate = request.getParameter("date");
		String ncontent = request.getParameter("context");
		News news =new News();
		//封装New对象
		news.setId(id);
		news.setNtitle(ntitle);
		news.setNdate(ndate);
		news.setNcontent(ncontent);
		NewsDao dao = new NewsDao();
		 try {
			boolean flag = dao.updateNews(news);
			if (flag) {
				System.out.println(news.getNtitle());
				System.out.println("修改成功");
				response.sendRedirect("SelectNews");
			}else {
				System.out.println(news.getNtitle());
				System.out.println("修改失败");
				response.sendRedirect("editTNews.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
