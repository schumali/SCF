package com.scf.news.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scf.news.bao.NoticeDao;
import com.scf.news.bean.Notice;

/**
 * Servlet implementation class updateTNotice
 */
public class updateTNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String ntitle = request.getParameter("name");
		String ncontext = request.getParameter("context");
		Notice notice =new Notice();
		//封装New对象
		notice.setId(id);
		notice.setNtitle(ntitle);
		notice.setNcontext(ncontext);
		NoticeDao dao = new NoticeDao();
		 try {
			boolean flag = dao.updateNotice(notice);
			if (flag) {
				System.out.println(notice.getNtitle());
				System.out.println("修改成功");
				response.sendRedirect("SellectAllNotice");
			}else {
				System.out.println("修改失败");
				response.sendRedirect("editTNotice.jsp");
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