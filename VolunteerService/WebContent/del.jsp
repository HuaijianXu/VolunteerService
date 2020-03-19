<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>志愿者信息删除</title>
<style>
	.a{
		border: 2px solid #a1a1a1;
		padding: 10px 40px;
		width: px;
		border-radius: 25px;
	}
	#bk {
	border: 3px solid #a1a1a1;
	padding: 10px 60px;
	/* 	background:#dddddd; */
	width: px;
	border-radius: 25px;
}
	 .button {
    background-color:  #ff8433;
    border: none;
    color: white;
    padding: 5px 10px;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 2px;
    cursor: pointer;
}
</style>
</head>
<body>
	<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
	<div align="center">
		<h1 style="color: red;">志愿者信息删除</h1>
		<a href="index.jsp">返回主页</a>
		<form action="CourseServlet?method=getcoursebyName" method="post" onsubmit="return check()">
		<tr>
				<td>姓名</td>
				<td><input id="bk" type="text" name="name" ></td><br>
			</tr>	
			<td><input class ="button" type="submit" value="查询"></td>
		</form>
	</div>
	<script type="text/javascript">
		function check() {
			var name = document.getElementById("name");;
			
			//非空
			if(name.value == '') {
				alert('志愿者姓名为空');
				name.focus();
				return false;
			}
		}
	</script>
</body>
</html>