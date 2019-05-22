<%@page import="com.scf.news.bean.Document"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>资源查看</title>
</head>
<body>
	<h1>资源管理页面---以下是当前所有资源信息</h1>
	<table border="1" width="80%">
		<tr>
			<th>资源ID</th>
			<th>标题</th>
			<th>描述</th>
			<th>图片</th>
			<th>资源大小</th>
			<th>文件</th>
			<th>操作</th>
		</tr>
		<% 
			//获取session中存放的news数据集合list
			List<Document> documents =(List<Document>)session.getAttribute("document");
		//遍历集合中的用户信息
		for(Document document:documents){
		%>
			<tr>
				<td><%=document.getId()%></td>
				<td><%=document.getDname()%></td>
				<td><%=document.getPdesc()%></td>
				<td><%=document.getDimage()%></td>
				<td><%=document.getDsize()%></td> 	     
		        <td><%=document.getNdocument()%></td>
				<td width="80">
					<a href='#' onclick="fn1('<%=document.getId() %>')">删除</a>
					<a href='#' onclick="tn2('<%=document.getId() %>')">修改</a>
				</td>				
			</tr>			
		<%
		}		
		%>
		
	</table>
</body>

<script type="text/javascript">
	function fn1(id){
		//1.弹出一个确认框，问你是否要删除这个资源吗？
		//这个confirm有一个boolean的返回值
		var flag = confirm("确定要删除这个资源吗？")
		if (flag){
			//表示确定要删除，向服务器发送一个删除资源请求
			//需要携带资源的id（告诉服务器要删除拿哪个资源）
			location.href = "DeleteDocument?id="+id
		}
	}
	function tn2(id){
		//1.弹出一个确认框，问你是否要修改这个资源吗？
		//这个confirm有一个boolean的返回值
		var flag = confirm("确定要修改这个资源吗？")
		if (flag){
			//表示确定要删除，向服务器发送一个删除资源请求
			//需要携带资源的id（告诉服务器要删除拿哪个资源）
			location.href = "AlterDocument?id="+id
		}
	}
</script>
</body>
</html>