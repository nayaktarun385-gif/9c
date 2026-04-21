<%@ page language="java" import="java.util.*" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>

<%
    String name = request.getParameter("username");
    String timeStr = request.getParameter("time");

    int time = Integer.parseInt(timeStr);

    // Create session
    session.setAttribute("username", name);

    // Set session timeout (convert minutes → seconds)
    session.setMaxInactiveInterval(time * 60);
%>

<h2>Hello, <%= name %>!</h2>

<p>Session set for <b><%= time %> minute(s)</b></p>

<a href="check.jsp">Click here to check session</a>

</body>
</html>