<%@ page language="java" %>
<html>
<head>
    <title>Check Session</title>
</head>
<body>

<%
    String name = (String) session.getAttribute("username");

    if (name == null) {
%>
        <h2>Session Expired!</h2>
        <a href="index.jsp">Go Back</a>
<%
    } else {
%>
        <h2>Hello again, <%= name %>!</h2>
        <p>Your session is still active.</p>
<%
    }
%>

</body>
</html>