package com.scf.news.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scf.news.bao.Articledao;
import com.scf.news.bean.Article;
import com.scf.news.utils.DateUtil;
import com.scf.news.utils.InviteCodeGenerator;

/**
 * Servlet implementation class AddArticle
 */
public class AddArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String atitle = request.getParameter("ntitle");

		String acontent = request.getParameter("ncontent");
		//生成id
		String id = InviteCodeGenerator.generateInviteCode();
		String adate = DateUtil.getCurrentDate();
		
		//封装New对象
		Article article =new Article(); 
		article.setId(id);
		article.setAdate(adate);
		article.setAtitle(atitle);
		article.setAcontent(acontent);
		//存数据到数据库中
		Articledao dao = new Articledao();
			 try {
				boolean flag = dao.saveArticle(article);
				if (flag) {
					System.out.println("插入成功");
					response.sendRedirect("SellectArticle");
				}else {
					System.out.println("添加失败");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
