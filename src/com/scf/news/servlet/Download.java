package com.scf.news.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;


/**
 * Servlet implementation class Download
 */
public class Download extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("text/html;charset=UTF-8");
		//获取系要下载的文件路径+文件名
		String fileName = request.getParameter("filename");
		fileName=new String(fileName.getBytes("iso8859-1"),"UTF-8");
		//获取文件id
//		String id = request.getParameter("id");
//		System.out.println(id);
//		String sql ="select * from document where id=?";
//		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
//		try {
//			Document documents = runner.query(sql, new BeanHandler<>(Document.class), id);
//			
//			HttpSession session = request.getSession();
//			//存放键值对key:value
//			session.setAttribute("document", documents);
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
		System.err.println(fileName);
		String filepath = "C:/apache-tomcat-7.0.52/webapps/SCF/" +fileName;//jia
		//3,设置响应头，提示用户，自定义下载
		response.setHeader("Content-Disposition", "attachment; filename="+fileName);
       //File file = new File("E:\\实训\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\SCF\\upload\\MySQL5.1参考手册官方简体中文版.chm");
		File file = new File(filepath);
      //获得输出流
        OutputStream os = response.getOutputStream();
        
      //获得文件扩展名
        String extfilename = FilenameUtils.getExtension(filepath);
        
      //指定文件下载名 并指定编码格式
        response.setHeader("Content-disposition","attachment;filename="+ URLEncoder.encode("文件."+extfilename,"utf-8"));
      //将文件写到输出流
        IOUtils.copy(new FileInputStream(file),os);
        //刷新流
        os.flush();
        //关闭流
        os.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
