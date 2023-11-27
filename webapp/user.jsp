<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String name =request.getParameter("username");
String password =request.getParameter("password");
String email =request.getParameter("email");

try
{
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/FARM", "root", "Abinaya@gold12");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into register1(name,password,email)values('"+name+"','"+password+"','"+email+"')");
        response.sendRedirect("index1.html");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>