<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>mid2</title>
<style>
body { font-family: 굴림체; }
  form div { margin-bottom: 10px; }

  select { width: 100px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }
  
</style>
</head>
<body>
<%
String s1 = request.getParameter("number");
s1 = (s1==null) ? "one":s1;
%>
<form action="mid2.jsp">
    <div class="radio">
      <label><input type="radio" name="number" value="one" <%= "one".equals(s1) ? "checked" : "" %> />one</label>
      <label><input type="radio" name="number" value="two" <%= "two".equals(s1) ? "checked" : "" %> />two</label>
      <label><input type="radio" name="number" value="three" <%= "three".equals(s1) ? "checked" : "" %> />three</label>
    </div>

	<div><input type="text" name="s1" value="<%=s1%>"/>
	</div>
	<button type="submit">Ok</button>
	
	</form>
	

	
</body>
</html>