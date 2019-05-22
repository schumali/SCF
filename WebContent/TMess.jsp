<%@page import="com.scf.news.bean.Messag"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>留言查看</title>
</head>
<body>
	<h1>留言管理页面---以下是当前所有留言信息</h1>
	<table border="1" width="80%">
		<tr>
			<th>姓名</th>
			<th>电话号码</th>
			<th>留言内容</th>
			<th>操作</th>
		</tr>
		<% 
			//获取session中存放的news数据集合list
			List<Messag> messages=(List<Messag>)session.getAttribute("message");
		//遍历集合中的用户信息
		for(Messag message:messages){
		%>
			<tr>
				<td><%=message.getName()%></td>
				<td><%=message.getPhone()%></td> 	     
		        <td><%=message.getContent()%></td>
				<td width="80">
					<a href='#' onclick="fn1('<%=message.getId() %>')">删除</a>
				</td>				
			</tr>			
		<%
		}		
		%>
		
	</table>
</body>

<script type="text/javascript">
	function fn1(id){
		//1.弹出一个确认框，问你是否要删除这个留言吗？
		//这个confirm有一个boolean的返回值
		var flag = confirm("确定要删除这个留言吗？")
		if (flag){
			//表示确定要删除，向服务器发送一个删除留言请求
			//需要携带留言的id（告诉服务器要删除拿哪个留言）
			location.href = "DeleteMess?id="+id
		}
	}
	
</script>
</body>
</html>