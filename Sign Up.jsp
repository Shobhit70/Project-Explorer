<%-- 
    Document   : signup
    Created on : Jun 7, 2017, 12:11:13 AM
    Author     : shobhit pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project Evaluator</title>
        <style>
            body
            {
                background-image: url("first.jpg");
                background-size: cover;
            }
        </style>
        <link href="register.css" rel="stylesheet">
    </head>
    <body>
    <center><h1>Faculty Sign Up</h1></center>
    <form action="NewServlet" method="get">
            <input type="text" name="first_name" placeholder="first name" required>
            <input type="text" name="last_name" placeholder="last name" required>
            <input type="date"  name="date" required>
            <input type="email" name="email" placeholder="xyz@email.com" required>
            <input type="password" name="password" placeholder="password" required>
            <input type="password" placeholder="re enter password" required>
                   
            <center>    <div>
                    <input type="radio" name="gender" value="male"><label for="male" class="lab">Male</label>
                    <input type="radio" name="gender" value="female"><label for="female" class="lab1">Female</label>
                </div>      </center>
            
            <center> <input type="submit" name="submit" value="Sign Up"></center>
        </form>
    </body>
</html>
