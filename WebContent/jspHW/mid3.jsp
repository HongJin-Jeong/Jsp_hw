<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>mid3</title>
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
<form action="mid3.jsp">
    <div class="radio">
      <label><input type="radio" name="number" value="one" <%= "one".equals(s1) ? "checked" : "" %> />one</label>
      <label><input type="radio" name="number" value="two" <%= "two".equals(s1) ? "checked" : "" %> />two</label>
      <label><input type="radio" name="number" value="three" <%= "three".equals(s1) ? "checked" : "" %> />three</label>
    </div>
    
    	<div>
	<select name="number" >
			<option value="one" <%= "one".equals(s1) ? "selected" : "" %>>one</option>
			<option value="two" <%= "two".equals(s1) ? "selected" : "" %>>two</option>
			<option value="three" <%= "three".equals(s1) ? "selected" : "" %>>three</option>
		</select>
		
	</div>

	</div>
	<button type="submit">Ok</button>
	
	</form>
	

	
</body>
</html>