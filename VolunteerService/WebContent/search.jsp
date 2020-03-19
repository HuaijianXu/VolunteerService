<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询志愿者信息</title>
<style>
.a {
	border: 2px solid #a1a1a1;
	padding: 10px 40px;
	/* 	background:#dddddd; */
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
table{
margin: auto;
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
		<h1 style="color: red;">志愿者信息查询</h1>
		<a href="index.jsp">返回主页</a>
		<form action="CourseServlet?method=search" method="post" onsubmit="return check()">
			<table>
			<tr>
				<td>姓名</td>
				<td><input id="bk" type="text" name="name" ></td>
			</tr>
			<tr>
				<td>性别</td>
					<td><input id="bk"type="text" name="sex"></td>
			</tr>
			<tr>
				<td>民族</td>
				<td><input id="bk" type="text" name="classroom"></td>
			</tr>
			<tr>
				<td>注册时间</td>
				<td><input id="bk" type="text" name="time"></td>
			</tr>
			<tr>
				<td>年龄</td>
				<td><input id="bk" type="text" name="age"></td>
			</tr>
			<tr>
				<td>政治面貌</td>
				<td><input id="bk" type="text" name="mianmao"></td>
				</tr>
			<tr>
				<td>服务类别</td>			
				<td><input id="bk"type="text" name="fuwu" ><br>
				</tr>
			<tr>
			<td></td>
				<td><input class ="button" type="submit" value="查询">
					<input class="button" type="reset" value="重置"></td>
		</form>
	</div>
	<script type="text/javascript">
		function check() {
			var name = document.getElementById("name");
			var sex = document.getElementById("sex");
			var classroom = document.getElementById("classroom");
			var time = document.getElementById("time");
			var age = document.getElementById("age");
			var mianmao = document.getElementById("mianmao");
			var fuwu = document.getElementById("fuwu");
			
			//非空
			if(name.value == '' && sex.value == '' && classroom.value == '' && time.value == '' && age.value == '' && mianmao.value == '' && fuwu.value == '') {
				alert('请填写一个条件');
				return false;
			}else 
				return true;
		}
	</script>
</body>
</html>