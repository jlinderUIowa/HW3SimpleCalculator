<%-- 
    Document   : index
    Created on : Feb 14, 2016, 4:46:42 PM
    Author     : Jackson Linder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HW3 - Salary Calculation JSP Web Site </title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    
    
    <body>
        <h1>Simple Salary Calculator</h1>
        <form name="form" action="results.jsp" method="post">
            
            <table border="1">
              <tbody>
                  <tr><td>Hours Worked:</td><td><input type="text" name="hoursworked"></td></tr>
                  <tr><td>Hourly Pay:</td><td><input type="text" name="rate"></td></tr>
                  <tr><td>Pre-Tax Deduct:</td><td><input type="text" name="pretax"></td></tr>
                  <tr><td>Post-Tax Deduct:</td><td><input type="text" name="posttax"></td></tr>
              </tbody>
            </table>
            
          <input type="reset" value="Clear" id="clear">
          <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
