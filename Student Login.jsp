<%-- 
    Document   : sigin
    Created on : Jun 6, 2017, 2:27:28 PM
    Author     : shobhit pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project Evaluator</title>
        <link href="mystyle.css" rel="stylesheet">
        <style>
            #h{
                color: #c9e2b3;
            }
            body{
                background-image: url("first.jpg");
                background-size: cover;
                backface-visibility: visible;
            }
        </style>
    </head>
    <body >
        
         <div class="container">
             <h1 id="h">Project Evaluator</h1>
             <h3> Student Login</h3>
            <form action="StudentloginServlet" method="get">
        <div class="form-input">
            <input type="text" name="user_name" placeholder="email" required>
        </div>
                <div class="form-input">
                    <input type="password" name="password" placeholder="password" required>
                </div>
                <div class="form-input">
                    <button type="submit" name="login">Login</button> 
                </div>
            </form><br>
            <a href="Sign Up.jsp">Forget Password?</a>
        </div>
       
    </body>
</html>
