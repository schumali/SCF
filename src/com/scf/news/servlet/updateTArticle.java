package com.scf.news.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scf.news.bao.Articledao;
import com.scf.news.bean.Article;

/**
 * Servlet implementation class updateTArticle
 */
public class updateTArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String atitle = request.getParameter("name");
		String adate = request.getParameter("date");
		String acontent = request.getParameter("context");
		Article article =new Article();
		//封装New对象
		article.setId(id);
		article.setAtitle(atitle);
		article.setAdate(adate);
		article.setAcontent(acontent);
		Articledao dao = new Articledao();
		 try {
			boolean flag = dao.updateArticle(article);
			if (flag) {
				System.out.println("修改成功");
				response.sendRedirect("SellectArticle");
			}else {
				System.out.println("修改失败");
				response.sendRedirect("editTArticle.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
