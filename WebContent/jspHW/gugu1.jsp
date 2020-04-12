<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>gugu1</title>
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

	<table>
		<% for (int i = 2; i < 10; ++i) { %>
		<tr>
			<% for (int j = 1; j < 10; ++j) { %>
			<td><%=i%> x <%=j %> = <%=i * j%></td>
			<% } %>
		</tr>
		<% } %>
	</table>

</body>
</html>