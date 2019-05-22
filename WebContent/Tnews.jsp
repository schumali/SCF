<%@page import="com.scf.news.bean.News"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>动态查看</title>
</head>
<body>
	<h1>动态管理页面---以下是当前所有动态信息</h1>
	<table border="1" width="80%">
		<tr>
			<th>动态ID</th>
			<th>标题</th>
			<th>动态内容</th>
			<th>发布时间</th>
			<th>操作</th>
		</tr>
		<% 
			//获取session中存放的news数据集合list
			List<News> newss=(List<News>)session.getAttribute("new");
		//遍历集合中的用户信息
		for(News news:newss){
		%>
			<tr>
				<td><%=news.getId()%></td>
				<td><%=news.getNtitle()%></td>
				<td><%=news.getNcontent()%></td> 	     
		        <td><%=news.getNdate()%></td>
				<td width="80">
					<a href='#' onclick="fn1('<%=news.getId() %>')">删除</a>
					<a href='#' onclick="tn2('<%=news.getId() %>')">修改</a>
				</td>				
			</tr>			
		<%
		}		
		%>
		
	</table>
</body>

<script type="text/javascript">
	function fn1(id){
		//1.弹出一个确认框，问你是否要删除这个动态吗？
		//这个confirm有一个boolean的返回值
		var flag = confirm("确定要删除这个动态吗？")
		if (flag){
			//表示确定要删除，向服务器发送一个删除动态请求
			//需要携带动态的id（告诉服务器要删除拿哪个动态）
			location.href = "DeleteNews?id="+id
		}
	}
	function tn2(id){
		//1.弹出一个确认框，问你是否要修改这个动态吗？
		//这个confirm有一个boolean的返回值
		var flag = confirm("确定要修改这个动态吗？")
		if (flag){
			//表示确定要删除，向服务器发送一个删除动态请求
			//需要携带动态的id（告诉服务器要删除拿哪个动态）
			location.href = "AlterNews?id="+id
		}
	}
</script>
</body>
</html>