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
        int pretaxDeduct = Integer.parseInt(request.getParameter("pretax"));
        int posttaxDeduct = Integer.parseInt(request.getParameter("posttax"));
        double taxPay;
        
        if (totalHoursworked <= 40) {grossPay = totalHoursworked * hourlyRate;}
        else {grossPay = ((totalHoursworked-hoursOvertime) * hourlyRate + hoursOvertime * overtimeHourlyrate);} 
        
        double pretaxPay = grossPay - pretaxDeduct;
        
        if (grossPay < 500) {taxPay = grossPay * .18;}
        else {taxPay = grossPay * .22;}
        
        double posttaxPay = pretaxPay - taxPay;
        double netPay = posttaxPay - posttaxDeduct;
        
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
              <tr><td>Pre-tax Deduct:</td><td><%= pretaxDeduct %></td></tr>
              <tr><td>Pre-tax Pay:</td><td><%= pretaxPay %></td></tr>
              <tr><td>Tax Amount:</td><td><%= taxPay %></td></tr>
              <tr><td>Post-tax Pay:</td><td><%= posttaxPay %></td></tr>
              <tr><td>Post-tax Deduct:</td><td><%= posttaxDeduct %></td></tr>
              <tr><td>Net Pay:</td><td><%= netPay %></td></tr>  
          </tbody>
        </table> 
            <a href="http://msci3300-s1608.cloudapp.net:8080//HW3Application/">Back</a>
    </body>
</html>
    
      
