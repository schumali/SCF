<%@page import="com.scf.news.bean.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>公告修改</title>
</head>
<body>
	<h1>公告管理页面---以下是当前所有公告信息</h1>	
    <table class="table">
				
			<form action="updateTNotice" method="post">
	          <% 
					//获取session中存放的score数据集合list
					Notice notice =(Notice)session.getAttribute("notice");
				
				
		    %>
			
			<table >
			    <tr class="warning">
					
					<td><input type="hidden" name="id" value= "<%=notice.getId()%>"/></td>
				</tr>
				<tr class="warning">
					<td>公告标题</td>
					<td><input  type="text" name="name" style="width:350px" value= "<%=notice.getNtitle()%>"/></td>
				</tr>

				<tr class="warning">
					<td>公告内容</td>
					<td><textarea rows="10" cols="50"  name="context" ><%=notice.getNcontext()%></textarea></td>
				</tr>
				
				<tr class="warning">
					<td colspan="2"><input type="submit" value="修改公告" /></td>
				</tr>
				

			</table>
			</form>
				
				
			</table>
</body>

</html>