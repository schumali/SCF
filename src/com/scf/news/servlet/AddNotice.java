package com.scf.news.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scf.news.bao.NoticeDao;
import com.scf.news.bean.Notice;
import com.scf.news.utils.InviteCodeGenerator;

/**
 * Servlet implementation class AddNotice
 */
public class AddNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String ntitle = request.getParameter("ntitle");
//		String ndate = request.getParameter("ndate");
		String ncontext = request.getParameter("ncontext");
		//生成id
//		String id = UUID.randomUUID().toString();
//		String ndate = DateUtil.getCurrentDate();
		String id = InviteCodeGenerator.generateInviteCode();
		//封装New对象
		Notice notice =new Notice(); 
		notice.setId(id);
		notice.setNtitle(ntitle);
//		转换类型
//		news.setNdate(ndate);
		notice.setNcontext(ncontext);
		//存数据到数据库中
		System.out.println(notice.getNcontext());
		System.out.println(notice.getId());
		NoticeDao dao = new NoticeDao();
			 try {
				boolean flag = dao.saveNotice(notice);
				if (flag) {
					System.out.println(notice.getNtitle());
					System.out.println("插入成功");
					response.sendRedirect("SellectAllNotice");
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
