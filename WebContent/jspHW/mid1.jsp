<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mid1</title>
<style>
table {
	border-collapse: collapse;
}

td {
	padding: 5px;
	border: solid 1px gray;
}
</style>

</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String s1 = request.getParameter("num1");
int number = (s1 ==null)? 0:Integer.parseInt(s1);
%>

<div>
<form action="mid1.jsp">



	<input type="text" name = "num1" value="<%=number %>">
	<button type="submit" >단</button>
</form>
</div>
	


	<table>
	<% for (int j = 1; j < 10; ++j) { %>
		<tr>
			
			<td><%=number%> x <%=j %> = <%=number * j%></td>
			
		</tr>
		<% } %>
	</table>

</body>
</html>