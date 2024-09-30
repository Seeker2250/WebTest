<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!--
    file:///C:/Class/Workspace/WebClass/webPro/src/main/webapp/html/days05/ex05_ok.jsp
    ?
    id=admin
    &
    pwd=12341234
    -->
    <%  <!--scriptlet-->
    /* 스크립트 3가지 요소 중에 scriptlet, expression(표현식)
        java 코딩
     jsp에 내장된 9가지 객체 중 */
     String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    %>
    입력한 아이디 : <%=id %> <br>
    입력한 비밀번호 : <%=pwd %> <br>
</body>
</html>