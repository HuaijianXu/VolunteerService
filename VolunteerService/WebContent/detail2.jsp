<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>志愿者信息修改</title>
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
		<h1 style="color: red;">志愿者信息修改</h1>
		<a href="index.jsp">返回主页</a>
		<form action="CourseServlet?method=update" method="post" onsubmit="return check()">
			<table>
			<tr>
				<td>姓名</td>
				<td><input id="bk" type="text" name="name" value="${course.name}"></td>
			</tr>
			<tr>
				<td>性别</td>
					<td><input type="radio" name="sex" value="男">男
					<input type="radio" name="sex" value="女">女</td>
			</tr>
			<tr>
				<td>民族</td>
				<td><input id="bk" type="text" name="classroom" value="${course.classroom}"></td>
			</tr>
			<tr>
				<td>注册时间</td>
				<td><input id="bk" type="text" name="time" value="${course.time}"/></td>
			<tr>
				<td>年龄</td>
				<td><input id="bk" type="text" name="age" value="${course.age}"></td>
			</tr>
			
			<tr>
				<td>政治面貌</td>
				<td><select  style="width:200px;hight:20px;" name="mianmao">
				<option value="${course.mianmao}">${course.mianmao}</option>
				<option value="群众">群众</option>
				<option value="共青团员">共青团员</option>
				<option value="共青党员">共青党员</option>
			</select></td>
				</tr>
			<tr>
				<td>服务类别</td>			
				<td><input type="checkbox" name="fuwu" value="扶贫济困">扶贫济困<br>
				<input type="checkbox" name="fuwu" value="敬老助残">敬老助残 <br>
				<input type="checkbox" name="fuwu" value="社区服务">社区服务<br>
				<input type="checkbox" name="fuwu" value="秩序维护">秩序维护<br>
				<input type="checkbox" name="fuwu" value="文体服务">文体服务<br>
				<input type="checkbox" name="fuwu" value="环境保护">环境保护<br>
				<input type="checkbox" name="fuwu" value="治安防范">治安防范<br>
				<input type="checkbox" name="fuwu" value="医疗救治">医疗救治<br>
				<input type="checkbox" name="fuwu" value="法律援助">法律援助<br>
				<input type="checkbox" name="fuwu" value="大型活动">大型活动<br>
				<input type="checkbox" name="fuwu" value="心理疏导">心理疏导<br>
				<input type="checkbox" name="fuwu" value="精神抚慰">精神抚慰<br>
				<input type="checkbox" name="fuwu" value="支教支医">支教支医<br>
				<input type="checkbox" name="fuwu" value="科学普及">科学普及 <br>
				<input type="checkbox" name="fuwu" value="应急救援">应急救援<br>
				<input type="checkbox" name="fuwu" value="便民服务">便民服务<br>
				<input type="checkbox" name="fuwu" value="民事调解">民事调解<br>
				<input type="checkbox" name="fuwu" value="文明引导">文明引导<br>
				<input type="checkbox" name="fuwu" value="安全生产">安全生产<br>
				<input type="checkbox" name="fuwu" value="禁毒宣传">禁毒宣传<br>
				</tr>
			</table>
			<input type="hidden" id="id" name="id" value="${course.id}"/>
			<input class ="button" type="submit" value="修改">
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
			if(name.value == '') {
				alert('志愿者姓名为空');
				name.focus();
				return false;
			}
			if(sex.value == '') {
				alert('性别为空');
				sex.focus();
				return false;
			}
			if(classroom.value == '') {
				alert('民族为空');
				classroom.focus();
				return false;
			}
			if(time.value == '') {
				alert('注册时间为空');
				time.focus();
				return false;
			}
			if(age.value == '') {
				alert('年龄为空');
				age.focus();
				return false;
			}
			if(mianmao.value == '') {
				alert('政治面貌为空');
				mianmao.focus();
				return false;
			}
			if(fuwu.value == '') {
				alert('服务类型为空');
				fuwu.focus();
				return false;
			}
			
			//性别
			if(sex.value != '男' && sex.value != '女' ){
				alert('性别错误');
				return false;
			}
			
			//政治面貌
			if(!/^群众/.test(mianmao.value) && !/^共青团员/.test(mianmao.value) && !/^中共党员/.test(mianmao.value)) {
				alert('政治面貌错误');
				return false;
			}
		}
	</script>
</body>
</html>