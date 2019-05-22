<%@page import="com.scf.news.bean.Article"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>文章查看</title>
</head>
<body>
	<h1>文章管理页面---以下是当前所有文章信息</h1>
	<table border="1" width="80%">
		<tr>
			<th>文章ID</th>
			<th>标题</th>
			<th>文章内容</th>
			<th>发布时间</th>
			<th>操作</th>
		</tr>
		<% 
			//获取session中存放的news数据集合list
			List<Article> articles=(List<Article>)session.getAttribute("article");
		//遍历集合中的用户信息
		for(Article article:articles){
		%>
			<tr>
				<td><%=article.getId()%></td>
				<td><%=article.getAtitle()%></td>
				<td><%=article.getAcontent()%></td> 	     
		        <td><%=article.getAdate()%></td>
				<td width="80">
					<a href='#' onclick="fn1('<%=article.getId() %>')">删除</a>
					<a href='#' onclick="tn2('<%=article.getId() %>')">修改</a>
				</td>				
			</tr>			
		<%
		}		
		%>
		
	</table>
</body>

<script type="text/javascript">
	function fn1(id){
		//1.弹出一个确认框，问你是否要删除这个文章吗？
		//这个confirm有一个boolean的返回值
		var flag = confirm("确定要删除这个文章吗？")
		if (flag){
			//表示确定要删除，向服务器发送一个删除文章请求
			//需要携带文章的id（告诉服务器要删除拿哪个文章）
			location.href = "DeleteArticle?id="+id
		}
	}
	function tn2(id){
		//1.弹出一个确认框，问你是否要修改这个文章吗？
		//这个confirm有一个boolean的返回值
		var flag = confirm("确定要修改这个文章吗？")
		if (flag){
			//表示确定要删除，向服务器发送一个删除文章请求
			//需要携带文章的id（告诉服务器要删除拿哪个文章）
			location.href = "AlterArticle?id="+id
		}
	}
</script>
</body>
</html>