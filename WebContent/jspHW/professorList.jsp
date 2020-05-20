<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, Jsp_hwJAVA.*" %>
<%
List<Professor> list = professorDAO.findAll();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/res/common.css">
<style>
  div.container { width: 600px; }
  h1 { margin-bottom: -20px; }
  a.btn { float: right; margin-bottom: 5px; }
</style>
</head>
<body>
<div class="container">

<h1>학생목록</h1>
<a class="btn" href="studentCreate6.jsp">학생등록</a>

<table class="table">
  <thead>
    <tr>
      <th>학번</th>
      <th>이름</th>
      <th>학과</th>
      <th>학년</th>
    </tr>
  </thead>
  <tbody>
    <% for (Professor professor : list) { %>
      <tr>
        <td><%= professor.getStudentNumber() %></td>
        <td><%= professor.getName() %></td>
        <td><%= professor.getDepartmentName() %></td>
        <td class="align-center"><%= professor.getYear() %></td>
      </tr>
    <% } %>
  </tbody>
</table>

</div>

</body>
</html>