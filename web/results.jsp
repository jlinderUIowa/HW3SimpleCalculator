<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    
    <%
        int totalHoursworked = Integer.parseInt(request.getParameter("hoursworked"));
        int hourlyRate = Integer.parseInt(request.getParameter("rate"));
        int hoursOvertime = totalHoursworked - 40;
        double overtimeHourlyrate = hourlyRate * 1.5;
        double grossPay;
        int preTaxdeduct = Integer.parseInt(request.getParameter("pretax"));
        int postTaxdeduct = Integer.parseInt(request.getParameter("posttax"));
        
        if (totalHoursworked <= 40) {grossPay = totalHoursworked * hourlyRate;}
        else {grossPay = (totalHoursworked * (1.5 * hourlyRate));}
        
        double pretaxPay = grossPay - preTaxdeduct;
        
    %>
    <body>
        
        <h1>Salary Information</h1>
        
        <table border="1">
          <tbody>
              <tr><td>Total Hours Worked:</td><td><%= totalHoursworked %></td></tr>
              <tr><td>Hourly Rate:</td><td><%= hourlyRate %></td></tr>
              <tr><td># Hours Overtime:</td><td><%= hoursOvertime %></td></tr>
              <tr><td>Overtime Hourly Rate:</td><td><%= overtimeHourlyrate %></td></tr>
              <tr><td>Gross Pay:</td><td><%= grossPay %></td></tr>
              <tr><td>Pre-tax Deduct:</td><td><%= preTaxdeduct %></td></tr>
            <tr><td>Pre-tax Pay:</td></tr>
            <tr><td>Tax Amount:</td></tr>
            <tr><td>Post-tax Pay:</td></tr>
            <tr><td>Post-tax Deduct:</td><td><%= postTaxdeduct %></td></tr>
            <tr><td>Net Pay:</td></tr>  
          </tbody>
        </table> 
            <a href="http://msci3300-s1608.cloudapp.net:8080//">Back</a>
    </body>
</html>
    
      
