<%@page import="com.scf.news.bean.News"%>
<%@page import="com.scf.news.bean.News"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>动态修改</title>
</head>
<body>
	<h1>动态管理页面---以下是当前所有动态信息</h1>	
    <table class="table">
				
			<form action="updateTNews" method="post">
	          <% 
					//获取session中存放的score数据集合list
					News news =(News)session.getAttribute("news");
				
				
		    %>
			
			<table >
			    <tr class="warning">
					
					<td><input type="hidden" name="id" value= "<%=news.getId()%>"/></td>
				</tr>
				<tr class="warning">
					<td>动态标题</td>
					<td><input  type="text" name="name" style="width:350px" value= "<%=news.getNtitle()%>"/></td>
				</tr>
				
				<tr class="warning">
					<td>发布时间</td>
					<td><input  type="text" name="date" style="width:350px" value= "<%=news.getNdate()%>"/></td>
				</tr>

				<tr class="warning">
					<td>动态内容</td>
					<td><textarea rows="10" cols="50"  name="context" ><%=news.getNcontent()%></textarea></td>
				</tr>
				
				<tr class="warning">
					<td colspan="2"><input type="submit" value="修改动态" /></td>
				</tr>
				

			</table>
			</form>
				
				
		</table>
</body>

</html>