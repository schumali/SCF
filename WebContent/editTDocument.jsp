<%@page import="com.scf.news.bean.Document"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>文件修改</title>
</head>
<body>
	<h1>文件管理页面---以下是当前所有文件信息</h1>	
    <table class="table">
				
			<form action="updateTDocument" method="post">
	          <% 
					//获取session中存放的score数据集合list
					Document document =(Document)session.getAttribute("document");
				
				
		    %>
			
			<table >
			    <tr class="warning">
					
					<td><input type="hidden" name="id" value= "<%=document.getId()%>"/></td>
				</tr>
				<tr class="warning">
					<td>文件标题</td>
					<td><input  type="text" name="dname" style="width:350px" value= "<%=document.getDname()%>"/></td>
				</tr>
				<tr class="warning">
					<td>图片路径</td>
					<td><input  type="text" name="dimage" style="width:350px" value= "<%=document.getDimage()%>"/></td>
				</tr>
				<tr class="warning">
					<td>资源大小</td>
					<td><input  type="text" name="dsize" style="width:350px" value= "<%=document.getDsize()%>"/></td>
				</tr>
				<tr class="warning">
					<td>文件路径</td>
					<td><input  type="text" name="ndocument" style="width:350px" value= "<%=document.getNdocument()%>"/></td>
				</tr>

				<tr class="warning">
					<td>文件描述</td>
					<td><textarea rows="10" cols="50"  name="pdesc" ><%=document.getPdesc()%></textarea></td>
				</tr>
				
				
				<tr class="warning">
					<td colspan="2"><input type="submit" value="修改文件" /></td>
				</tr>
				

			</table>
			</form>
				
				
			</table>
</body>

</html>