package com.scf.news.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scf.news.bao.DocumentDao;
import com.scf.news.bean.Document;

/**
 * Servlet implementation class updateTDocument
 */
public class updateTDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String dname = request.getParameter("dname");
		String dimage = request.getParameter("dimage");
		String dsize = request.getParameter("dsize");
		String pdesc = request.getParameter("pdesc");
		String ndocument = request.getParameter("ndocument");
		Document document =new Document();
		//封装New对象
		document.setId(id);
		document.setDname(dname);
		document.setDimage(dimage);
		document.setDsize(dsize);
		document.setPdesc(pdesc);
		document.setNdocument(ndocument);
		DocumentDao dao = new DocumentDao();
		 try {
			boolean flag = dao.updateDocument(document);
			if (flag) {
				System.out.println("修改成功");
				response.sendRedirect("SelectDocument");
			}else {
				System.out.println("修改失败");
				response.sendRedirect("editTDocument.jsp");
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
