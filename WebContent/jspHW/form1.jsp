<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body { font-family: 굴림체; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  select { width: 100px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }
  table { width: 300px; border-collapse: collapse; }
  
</style>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String s1 = request.getParameter("num1");
int number = (s1 ==null)? -1:Integer.parseInt(s1);
number = number+1;
%>
<div>
<form action="form1.jsp">



	<input type="text" name = "num1" value="<%=number %>">
	<button type="submit" >++</button>
</form>
</div>


</body>
</html>