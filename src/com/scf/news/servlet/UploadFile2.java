package com.scf.news.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import com.scf.news.bao.DocumentDao;
import com.scf.news.bean.Document;
import com.scf.news.utils.InviteCodeGenerator;
import com.scf.news.utils.UploadUtils;
import com.sun.xml.internal.bind.v2.runtime.Name;


/**
 * Servlet implementation class UploadFile2
 */
public class UploadFile2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//创建工厂方法
		DiskFileItemFactory factory = new DiskFileItemFactory();
		response.setCharacterEncoding("text/html;charset=UTF-8");
		System.out.println("11111upppp");
		//用工厂对象创建核心上传文件对象
		ServletFileUpload fileUpload = new ServletFileUpload(factory);
		//用核心上传文件对象解析请求，获取文件项的集合
		// 中文处理
		fileUpload.setHeaderEncoding("UTF-8");
        try {
        	Document document = new Document();
        	//创建一个map保存参数值和参数名
        	Map<String, String> map = new HashMap<>();
			List<FileItem> items = fileUpload.parseRequest(request);
//			System.out.println(items);
			//遍历每个文件项
			String name = "";
			for(FileItem fileItem:items) {
				//每个文件项对应一个请求参数
				String fieldName = fileItem.getFieldName();
				//上传文件包含两部分：1普通参数 2文件(图片)
				boolean flag = fileItem.isFormField();
				if(flag) {
					String fieldValue = fileItem.getString("UTF-8");
             //	将参数值和参数名保存在map中
					
					map.put(fieldName, fieldValue);
				}else {
					//表示是上传文件
					//获取一个输入流
					InputStream inputStream = fileItem.getInputStream();
					//将输入流所有字节保存在服务器文件中
					//使用输出流写
					name = fileItem.getName();
//					String fileName = new File(fileItem.getName()).getName();
//					System.out.println(fileName+"11111");
					String filepath = "c:/document/" +name;//c:/aa/MYSQL.png
//					File file1 = new File(filepath);//1
					//使用工具类UplodUtil创建文件夹
					String dir = UploadUtils.getDir();
					//servletContext获取项目路径
					ServletContext servletContext = getServletContext();
					String realPath = servletContext.getRealPath("/document");
					System.out.println(realPath+"reallujingggggg");
					String path = realPath + dir;
					System.out.println(path+"lujingggggg");
					File file = new File(path);//c:\aa\MYSQL.png  ....内存中创文件夹
					if (!file.exists()) {
						file.mkdirs();//与mkdir()不同的是会循环创建文件夹
					}
					
					map.put(fieldName, "document"+dir+"/"+name);
					
					OutputStream outputStream = new FileOutputStream(new File(file, name));
					//将输入流的数据写入	输出流中
					IOUtils.copy(inputStream, outputStream);
					outputStream.close();
					inputStream.close();
					//删除临时文件
					fileItem.delete();
				} 
			}
			//将map中的数据用beanutils设置到javabean中
			System.out.println("222222upppp");
			BeanUtils.populate(document, map);
			System.out.println("33333upppp");
			System.out.println(map);
			//document对象还缺id
			String id = InviteCodeGenerator.generateInviteCode();
			document.setId(id);
//			document.setDimage("c:/aa/"+name);
//			document.setNdocument("c:/aa/"+name);
			DocumentDao dao =new DocumentDao();
			dao.saveDocument(document);
			request.setAttribute("message",
                    "文件上传成功!");
		} catch (Exception e) { 
			e.printStackTrace();
		}
        // 跳转到 message.jsp
        getServletContext().getRequestDispatcher("/message.jsp").forward(
                request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
