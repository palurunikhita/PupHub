<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    
    try{
        String id = request.getParameter("id");
        int i1 = Integer.parseInt(id);      
        String rating= request.getParameter("rating");
        float f=Float.parseFloat(rating);
        
        String rating1= request.getParameter("rating1");
        float f1=Float.parseFloat(rating1);
        
        
        float f2 = f+f1;
        float f3 = f2/2;
        
        con = DBCon.DbConnector.getConnection();        
        PreparedStatement ps =con.prepareStatement("update location set rating=? where id= ? ");
        ps.setFloat(1, f3);
        
        ps.setFloat(2, i1);
        
        int i = ps.executeUpdate();
        if(i == 1)
        {        
            response.sendRedirect("location.jsp?success");            
        }
        else{
            response.sendRedirect("location.jsp?failed");
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
