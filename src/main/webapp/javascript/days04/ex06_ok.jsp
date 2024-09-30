<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    //<% 는 jsp script 요소 중 scriptlet <%= 는 표현식
    String subject = request.getParameter("subject");

%>
>서버로 전송된 과목 : <%= subject %> <br>
<input type="radio" name="subject" value="kor"><label for=" ">국어</label>
<input type="radio" name="subject" value="mat"><label for=" ">수학</label>
<input type="radio" name="subject" value="eng"><label for=" ">영어</label>
<input type="radio" name="subject" value="pe"><label for=" ">체육</label>
<!--BOM window / document / history
    Browser가 제공하는 객체 -->
<a href="javascript:history.back()">뒤로 가기</a><!--이건 기존 페이지 다시 불러와-->
<a href="javascript:location.href='ex06.html'">뒤로 가기</a><!--이건 새로운 페이지 요청해서 불러와-->
<script>
    let s = "<%= subject %>";
    <%-- JSP ${EL 표현언어} `${변수}` --%>
    document.querySelector(`input[name=subject][value=${s}]`).checked = true;

    /*
    let subject = "<%= subject %>";         <%%>는 서버에서 처리해
    document.querySelector("input[name=subject][value=<%= subject %>]").checked = true;
    */

    /*
    const rdbs = document.querySelectorAll('[name=subject]');
    alert(rdbs.length);
    for (let i = 0; i < rdbs.length; i++) {
        if(rdbs[i].value == subject){
            rdbs.setAttribute("checked", "checked");
            break;
        }//if
        
    }//for
    */
</script>
</body>
</html>