<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    
    try{
        String name = request.getParameter("name");
        String Loc = request.getParameter("Loc"); 
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String rating= request.getParameter("rating");
        float f=Float.parseFloat(rating);
        con = DBCon.DbConnector.getConnection();        
        PreparedStatement ps =con.prepareStatement("insert into location (name,location,address,phone,rating) values (?,?,?,?,?) ");
        ps.setString(1, name);
        ps.setString(2, Loc); 
        ps.setString(3, address);
        ps.setString(4, phone);
        ps.setFloat(5, f);
        
        int i = ps.executeUpdate();
        if(i == 1)
        {        
            response.sendRedirect("AddLocations.jsp?success");            
        }
        else{
            response.sendRedirect("AddLocations.jsp?failed");
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

