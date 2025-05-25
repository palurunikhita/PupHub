<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    
    try{
        String dage = request.getParameter("dage");
        String Vname = request.getParameter("Vname");         
        con = DBCon.DbConnector.getConnection();        
        PreparedStatement ps =con.prepareStatement("insert into vaccination (dage, Vname) values (?,?) ");
        ps.setString(1, dage);
        ps.setString(2, Vname);           
        int i = ps.executeUpdate();
        if(i == 1)
        {        
            response.sendRedirect("vaccination.jsp?success");            
        }
        else{
            response.sendRedirect("vaccination.jsp?failed");
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







