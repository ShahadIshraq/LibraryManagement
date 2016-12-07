<%-- 
    Document   : LibrarianHome
    Created on : Dec 6, 2016, 11:25:12 AM
    Author     : shahad
--%>

<%@page import="java.util.List"%>
<%@page import="db.DataAccess"%>
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
            if(username==null || !userType.equals("Librarian"))
            {
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.forward(request, response);
            }
        %>
        <h1>This is librarian home!</h1>
        <%
            DataAccess db = new DataAccess();
            List<String> employees = db.getEmployeeNames();
            for(String s : employees) 
            {
                out.println(s);
                out.print("</br>");
            }
        %>
    </body>
</html>
