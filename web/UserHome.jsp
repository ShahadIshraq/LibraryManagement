<%-- 
    Document   : UserHome
    Created on : Dec 6, 2016, 11:24:40 AM
    Author     : shahad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <%
            String username = (String) session.getAttribute("username");
            String userType = (String) session.getAttribute("userType");
            if(username==null || !userType.equals("member"))
            {
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.forward(request, response);
            }
        %>
        <h1>This is user home!</h1>
    </body>
</html>
