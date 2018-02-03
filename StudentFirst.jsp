<%-- 
    Document   : StudentFirst
    Created on : Aug 15, 2017, 12:14:37 PM
    Author     : shobhit pc
--%>
<META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; URL=index.html" />
<%
HttpSession sessionObj = request.getSession();
String email = (String)sessionObj.getAttribute("user_name"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>Project Evaluator</title>
<link href="main.css" rel="stylesheet" type="text/css" />
<link href="faculty_home.css" rel="stylesheet"></link>
</head>
<body>
<div id ="container">
  <div id = "navdiv">fa
    <ul class = "mainlinks">
        
      <li><a href="#" >Contact us</a></li>
      <li><a href="index.html">Logout</a></li>
      <li><a href="#" class="selected">Select Section</a></li>
      <li><a href="#">Home</a></li>
      <li><h2>Hello, <%=email%></h2></li>
     
    </ul>
  </div>
  <div id="content">
    <ul id="picturelist">
          
        <div class="form-input">
            <form action="StudentHome.jsp" method="get">
            <button type="submit" name="cse" >Computer Science and Engineering</button> 
            </form>
                </div>
        <div class="form-input"  form-input">
             <form action="Studentece.jsp">
                    <button type="submit" name="ece">Electronics and Communication Engineering</button> 
            </form>
                </div>
        <div class="form-input">
            <form action="Studentme.jsp">
                <button type="submit" name="mech">Mechanical Engineering</button> 
            </form>
                </div>
        <div class="form-input">
                    <button type="submit" name="ce">Civil Engineering</button> 
                </div>
        <div class="form-input">
                    <button type="submit" name=biotech"">Biotechnology</button> 
                </div>
        <div class="form-input">
            <form action="index.html" method="get">
            <button type="submit" name="eee">Electrical Engineering</button> </form>
            
                </div>
        
    </ul>
  </div>
</div>
</body>
</html>

