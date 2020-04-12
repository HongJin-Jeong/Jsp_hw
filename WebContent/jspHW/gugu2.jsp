<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>gugu2</title>

<style>
table {
	border-collapse: collapse;
}
td {
	padding: 5px;
	border: solid 1px gray;
}
</style>
<body>
	<table>
		<% for (int i = 2; i < 10; ++i) { %>
		<tr >
		<td rowspan="9" >
			<% for (int j = 1; j < 10; ++j) { %>
			<%=i%> x <%=j %> = <%=i * j%><br>
			<% } %>
			</td>
		</tr>
		<% } %>
	</table>

</body>
</html>