<%-- 
    Document   : index
    Created on : 11-Nov-2016, 12:04:37
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
        
            <form name="myForm" action="display.jsp" method = "POST">  
                   
                <table border="0">
                
                    <tbody>
                        <tr>
                            <td> First Name: </td>
                            <td><input type="text" name="First" value="" size ="50" /></td>
                        </tr>
                        <tr>
                            <td>Last Name: </td>
                            <td> <input type = "text" name = "Last" value = "" size = "50"> </input></td>
                        </tr>
                        <tr>
                            <td>Email Address: </td>
                            <td><input type="text" name="Email" value="" size="50" /></td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td><select name="Gender">
                                    <option> Male </option>
                                    <option>Female </option>
                                </select></td>
                        </tr>
                        <tr>
                            <td>Date of Birth</td>
                            <td><input type="text" name="dob" value="MM/DD/YY" size="15" /></td>
                        </tr>
                    </tbody>
                </table>
                <input type="reset" value="Clear" name="clear" />
                <input type="submit" value="Submit" name="submit" />


            </form>
        
    </body>
</html>
