<%@page import="com.scf.news.bean.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>公告查看</title>
</head>
<body>
	<h1>公告管理页面---以下是当前所有公告信息</h1>
	<table border="1" width="80%">
		<tr>
			<th>公告ID</th>
			<th>标题</th>
			<th>公告内容</th>
			<th>操作</th>
		</tr>
		<% 
			//获取session中存放的user数据集合list
			List<Notice> notices = (List<Notice>)session.getAttribute("notice");
		//遍历集合中的用户信息
		for(Notice notice:notices){
		%>
			<tr>
				<td><%=notice.getId()%></td>
				<td><%=notice.getNtitle()%></td>
				<td><%=notice.getNcontext()%></td>

				
				
				<td width="80">
					<a href='#' onclick="fn1('<%=notice.getId() %>')">删除</a>
					<a href='#' onclick="tn2('<%=notice.getId() %>')">修改</a>
				</td>				
			</tr>			
		<%
		}		
		%>
		
	</table>

</body>

<script type="text/javascript">
	function fn1(id){
		//1.弹出一个确认框，问你是否要删除这个公告吗？
		//这个confirm有一个boolean的返回值
		var flag = confirm("确定要删除这个公告吗？")
		if (flag){
			//表示确定要删除，向服务器发送一个删除公告请求
			//需要携带公告的id（告诉服务器要删除拿哪个公告）
			location.href = "DeleteNotice?id="+id
		}
	}
	function tn2(id){
		//1.弹出一个确认框，问你是否要修改这个公告吗？
		//这个confirm有一个boolean的返回值
		var flag = confirm("确定要修改这个公告吗？")
		if (flag){
			//表示确定要删除，向服务器发送一个删除公告请求
			//需要携带公告的id（告诉服务器要删除拿哪个公告）
			location.href = "AlterNotice?id="+id
		}
	}
</script>
</body>
</html>