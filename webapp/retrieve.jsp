<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body
                { 
                    margin:0;
                    height:100%;
                    width:100%;
                    background-image:url("v2.jpg");
                    background-repeat:no-repeat;
            background-size: 1536px 750px;
                }
				                .whole
				                {
               	 				padding:20px;
                                width:990px;
                                height:480px;
                                font-size:20px;
                                border-radius: 13px 13px;
                                box-shadow: 2px 5px 15px grey;
                                background-color: palegreen;	
                                margin-left:10%;
                                margin-top:5%;
                				}
                				h3
                				{
                				margin-top:-30%;
                				font-size:24px;
                				}
                				div
                				{
                				margin-top:2%;
                				font-size:20px;
                				}
                				
</style>
</head>
<body>
<div class="whole">
</div>
</body>
</html>
<%
String connectionURL = "jdbc:mysql://localhost:3306/FARM";
String user = "root";
String pass = "Abinaya@gold12";
Connection con = null;
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL, user, pass);
    PreparedStatement ps = con.prepareStatement("select * from FARM.form2");
    ResultSet rs = ps.executeQuery();
    out.println("<html><body>");
    out.println("<center><h3>ORGANIC PRODUCT DETAILS </h3>");
    out.println("<div>");
	out.println("<table>");
	out.println("<center><tr><td><b><center>First Name</center><b></td><td></td><td></td><td><b><center>Last Name</center><b></td><td></td><td></td><td><b><center>City Name</center><b></td><td></td><td></td><td><b><center>Email</center><b></td><td></td><td></td><td><b><center>Phone</center><b></td><td></td><td></td><td><b><center>Productname</center><b></td><td></td></tr></td><td></td><td></td><td></tr>");
     while(rs.next())
     {
    		out.println("<tr><td>" + rs.getString("first_name") + "</td><td></td><td></td><td>" + rs.getString("last_name") + "</td><td></td><td></td><td>" +rs.getString("city_name")+"</td><td></td><td></td><td>"+rs.getString("email")+"</td><td></td><td></td><td>"+rs.getString("phone")+"</td><td></td><td></td><td>"+rs.getString("pname")+"</td></tr>");
    		}
     out.println("</table></center>");
     out.println("</div>");
	 out.println("</body></html>");
}
catch(Exception e){
    e.printStackTrace();
}  
finally{
    if(con != null){
        try{
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
%>