package com.scf.news.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scf.news.bao.NewsDao;
import com.scf.news.bean.News;
import com.scf.news.utils.DateUtil;
import com.scf.news.utils.InviteCodeGenerator;

/**
 * Servlet implementation class AddNew
 */
public class AddNew extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String ntitle = request.getParameter("ntitle");
//		String ndate = request.getParameter("ndate");
		String ncontent = request.getParameter("ncontent");
		//生成id
//		String id = UUID.randomUUID().toString();
		String ndate = DateUtil.getCurrentDate();
		String id = InviteCodeGenerator.generateInviteCode();
		//封装New对象
		News news =new News();
		news.setId(id);
		news.setNtitle(ntitle);
//		转换类型
		news.setNdate(ndate);
		news.setNcontent(ncontent);
		//存数据到数据库中
		System.out.println(news.getNcontent());
		System.out.println(news.getId());
		NewsDao dao = new NewsDao();
			 try {
				boolean flag = dao.saveNews(news);
				if (flag) {
					System.out.println(news.getNtitle());
					System.out.println("插入成功");
					response.sendRedirect("SelectNews");
				}else {
					System.out.println("添加失败");
				}
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
