

<%-- 
    Document   : Studentece
    Created on : Aug 15, 2017, 12:18:44 PM
    Author     : shobhit pc
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<link href="mystyle.css" rel="stylesheet">
<div align="right">
  <form action="index.html" >
          <button type="submit" name="Logout" value="save" >Logout</button>
              </form>
</div>

<%
    String name=null;
String regno=null;
String project=null;
String future=null;
String pres=null;
String learning=null;
String comments=null;
  String marks=null;
String report=null;
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "project_evaluator";
String userId = "root";
String password = "user";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Records</strong></font></h2>
<table align="center" cellpadding="4" cellspacing="5" border="1">
<tr bgcolor="#A52A2A">
<td><b>Name</b></td>
<td><b>Registration no</b></td>
<td><b>Project Name</b></td>
<td><b>Presentation</b></td>
<td><b>Future Aspect</b></td>
<td><b>Report Format</b></td>
<td><b>Learning Outcome</b></td>
<td><b>Comments</b></td>
<td><b>Marks</b></td>
<td><b>Grade</b></td>

</tr>


<%
try{ 
    int mark=0;
String grade=null;
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM mech_information";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
    
    
    name=resultSet.getString(1);
         regno=resultSet.getString(2);
         project=resultSet.getString(3);
         pres=resultSet.getString(5);
        future=resultSet.getString(6);
      report=resultSet.getString(7);
      
     
    learning=resultSet.getString(8);
    comments=resultSet.getString(9);
    
  
    marks=resultSet.getString(10);
    mark=Integer.parseInt(marks)+30;
    if(mark>=90)
    {
     grade="A+";   
    }
    if(mark>=80 && mark<=89)
    {
        grade="A";
    }
    if(mark>=70 && mark<=79)
    {
        grade="B";
    }
    if(mark>=60 && mark<=69)
    {
        grade="C";
    }
    if(mark>40 && mark<=59)
    {
        grade="D";
    }
    
%>
<tr bgcolor="#DEB887">
<td><%= name%></td>
<td><%=regno%></td>
<td><%= project%></td>
<td><%=pres%></td>
<td><%= future%></td>
<td><%= report%></td>
<td><%=learning%></td>
<td><%=comments%></td>
<td><%=mark%></td>
<td><%=grade%></td>
</tr>

<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>

     
             
         
        
</table>