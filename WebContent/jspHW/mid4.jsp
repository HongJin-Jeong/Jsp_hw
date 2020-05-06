<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String name = "";
   String 에러메시지 = null;
   String s1 = request.getParameter("sex");
   request.setCharacterEncoding("UTF-8");
   if (request.getMethod().equals("POST")) {
	    name =  request.getParameter("name");
	    if (name == null || name.length() ==0 ){
	    	  에러메시지 = "학생등록 실패: 이름을 입력하세요";

	    }
	    else if (s1 == null){
	      	에러메시지 = "학생등록 실패: 성별을 입력하세요";
	    }

	}
   
   %>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://kit.fontawesome.com/68abb170e0.js" crossorigin="anonymous"></script>

<style>
  table { width: 500px; border-collapse: collapse; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
  body { font-family: 굴림체; font-size: 10pt; }
  div.container { width: 400px; margin: 20px auto; }
  form, form div { margin-bottom: 20px; }
  label { display: block; }   
  input.text { width: 200px; padding: 5px; }
  .btn { padding: 0.7em 2em; border: 1px solid #aaa; border-radius: 4px; 
         background: linear-gradient(#fff, #ddd); color: black;       
         font-family: 굴림체; font-size: 10pt; line-height: 1em;   
         text-decoration: none; cursor: pointer; display: inline-block; }
  .btn:active {
      -ms-transform: translateY(2px);
      -webkit-transform: translateY(2px);
      transform: translateY(2px);
      background: #ccc;  }
   div.info { margin: 10px; padding: 10px 20px; background-color: #dff; border: 1px solid #8ff; }
   div.error { margin: 10px; padding: 10px 20px; background-color: #fdd; border: 1px solid #faa; }
</style>

</head>
<body>

<div class="container">


<form action="mid4.jsp" >
  <h1>회원 등록</h1>
  <div>
    <label>이름</label>
    <input type="text" class="text" name="name" value="<%= name %>" />
  </div>
  
   <div class="radio">
      <label><input type="radio" name="sex" value="남자" <%= "남자".equals(s1) ? "checked" : "" %> />남자</label>
      <label><input type="radio" name="sex" value="여자" <%= "여자".equals(s1) ? "checked" : "" %> />여자</label>
   </div>
  
   <button type="submit" class="btn">
      <i class="fas fa-user-plus"></i> 회원 등록
  </button>
  
</form>

<% if (에러메시지 != null) { %>
  <div class="error">
    회원가입 실패: <%= 에러메시지 %>
  </div>
<% } %>
</div>


<table>
  <tr>
    <td>이름</td>
    <td><%= name %></td>
  </tr>
   <tr>
    <td>성별</td>
    <td><%= s1 == null ? "" : s1 %></td>
  </tr>

</table>
</body>
</html>