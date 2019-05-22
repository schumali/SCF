<%@page import="com.scf.news.bean.Article"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>文章修改</title>
</head>
<body>
	<h1>文章管理页面---以下是当前所有文章信息</h1>	
    <table class="table">
				
			<form action="updateTArticle" method="post">
	          <% 
					//获取session中存放的score数据集合list
					Article article =(Article)session.getAttribute("article");
				
				
		    %>
			
			<table >
			    <tr class="warning">
					
					<td><input type="hidden" name="id" value= "<%=article.getId()%>"/></td>
				</tr>
				<tr class="warning">
					<td>文章标题</td>
					<td><input  type="text" name="name" style="width:350px" value= "<%=article.getAtitle()%>"/></td>
				</tr>
				
				<tr class="warning">
					<td>发布时间</td>
					<td><input  type="text" name="date" style="width:350px" value= "<%=article.getAdate()%>"/></td>
				</tr>

				<tr class="warning">
					<td>文章内容</td>
					<td><textarea rows="10" cols="50"  name="context" ><%=article.getAcontent()%></textarea></td>
				</tr>
				
				<tr class="warning">
					<td colspan="2"><input type="submit" value="修改文章" /></td>
				</tr>
				

			</table>
			</form>
				
				
		</table>
</body>

</html>