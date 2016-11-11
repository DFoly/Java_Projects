<%-- 
    Document   : display
    Created on : 11-Nov-2016, 12:18:13
    Author     : dfoley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using Forms</title>
    </head>
    <body>
        <h1>Using Forms</h1>
        <%  // all java code must be within 
            // all entries in forms are strings
            // so we define variables that get them as strings
            // First is the name of row in our html table
            String firstName =  request.getParameter("First");
            String lastName = request.getParameter("Last");
            String emailAddress = request.getParameter("Email");
            String gender = request.getParameter("Gender");
            String dob = request.getParameter("dob");
        %>
        <table border="1">

            <tbody>
                <tr>
                    <td> First Name: </td>
                    <td> <%=firstName %></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><%=lastName%></td>
                </tr>
                <tr>
                    <td>Email Address:</td>
                    <td><%=emailAddress%></td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td><%=gender%></td>
                </tr>
                <tr>
                    <td>Date of Birth: </td>
                    <td><%=dob%></td>
                </tr>
            </tbody>
        </table>

        
    </body>
</html>
