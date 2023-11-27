<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String city_name=request.getParameter("city_name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String pname=request.getParameter("pname");

try
{
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/FARM", "root", "Abinaya@gold12");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into form2(first_name,last_name,city_name,email,phone,pname)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"','"+phone+"','"+pname+"')");
        response.sendRedirect("final.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>