<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection con = null;
    try{
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String  phone_number= request.getParameter("phone_number");
        String usergen = request.getParameter("usergen");
        String  petage= request.getParameter("petage");
        String  petgen= request.getParameter("petgen");
        String  password= request.getParameter("password");
        String conpassword = request.getParameter("conpassword"); 
        String pettype = request.getParameter("pettype");
        
        con = DBCon.DbConnector.getConnection(); 
        PreparedStatement ps =con.prepareStatement("insert into reg (firstname,lastname, email, phone_number, usergen, petage, petgen , password ,conpassword,pettype) values (?,?,?,?,?,?,?,?,?,?) ");
        
        ps.setString(1, firstname);
        ps.setString(2, lastname);
         ps.setString(3, email);
        ps.setString(4, phone_number);
         ps.setString(5, usergen);
        ps.setString(6, petage);
         ps.setString(7, petgen);
        ps.setString(8, password);
        ps.setString(9, conpassword);
        ps.setString(10, pettype);
        
        //System.out.println(SQL);
        int i = ps.executeUpdate();
        
        if(i == 1)
        {
            response.sendRedirect("register.jsp?success");
            
        }
        else{
            response.sendRedirect("register.jsp?failed");
        }         
    }  
    catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        con.close();
    }
 
    
    
%>