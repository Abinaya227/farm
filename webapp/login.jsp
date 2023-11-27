<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/FARM";
String user = "root";
String pass = "Abinaya@gold12";
Connection con = null;
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL, user, pass);
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    PreparedStatement ps = con.prepareStatement("select email, password from register1 where email=? and password=?");
    ps.setString(1, email);
    ps.setString(2, password);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    {
    	response.sendRedirect("first.html");
    		}
    		else
    		{
    		response.sendRedirect("Login.jsp");
    		}
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