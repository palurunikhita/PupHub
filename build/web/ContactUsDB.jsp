<%-- 
    Document   : ContactUsDB
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    
    try{
        String name = request.getParameter("name");
        String mail = request.getParameter("mail"); 
        String descr = request.getParameter("descr");         
        con = DBCon.DbConnector.getConnection();        
        PreparedStatement ps =con.prepareStatement("insert into ContactUs (name,mail,descr) values (?,?,?) ");
        ps.setString(1, name);
        ps.setString(2, mail); 
        ps.setString(3, descr);
        int i = ps.executeUpdate();
        if(i == 1)
        {        
            response.sendRedirect("ContactUs.jsp?success");            
        }
        else{
            response.sendRedirect("ContactUs.jsp?failed");
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
