package com.scf.news.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scf.news.bao.MessagDao;
import com.scf.news.bean.Messag;
import com.scf.news.utils.InviteCodeGenerator;

/**
 * Servlet implementation class Messageboad
 */
public class Messageboad extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String content = request.getParameter("content");
		//生成id
//		String id = UUID.randomUUID().toString();
//		String ndate = DateUtil.getCurrentDate();
		String id = InviteCodeGenerator.generateInviteCode();
		//封装New对象
		Messag messag =new Messag();
		messag.setId(id);
		messag.setName(name);
//		转换类型
		messag.setPhone(phone);		//存数据到数据库中
		messag.setContent(content);
		System.out.println(messag.getContent());
	
		MessagDao dao = new MessagDao();
			 try {
				boolean flag = dao.saveMessag(messag);
				if (flag) {
					System.out.println(messag.getName());
					System.out.println("插入成功");
					request.setAttribute("message",
                            "留言成功!");
				}else {
					System.out.println("添加失败");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 getServletContext().getRequestDispatcher("/message.jsp").forward(
		                request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
