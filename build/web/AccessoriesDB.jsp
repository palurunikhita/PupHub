<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    FileInputStream fis;
    try{
        
        String accessoriesname = request.getParameter("accessoriesname");
        String atype = request.getParameter("atype"); 
        String dogtype = request.getParameter("dogtype"); 
        String size = request.getParameter("size"); 
        String c = request.getParameter("productimage"); 
        con = DBCon.DbConnector.getConnection();
        File image=new File("C:\\PUP HUB\\IMG\\Accessories\\"+c);
        PreparedStatement ps =con.prepareStatement("insert into productsandaccessories1 (accessoriesname, atype, dogtype, size, productimage) values (?,?,?,?,?) ");
        ps.setString(1, accessoriesname);
        ps.setString(2, atype);
        ps.setString(3, dogtype);
        ps.setString(4, size);        
        fis=new FileInputStream(image);
        ps.setBinaryStream(5, (InputStream)fis, (int)(image.length())); 
        int i = ps.executeUpdate();
        if(i == 1)
        {        
            response.sendRedirect("Accessories.jsp?success");            
        }
        else{
            response.sendRedirect("Accessories.jsp?failed");
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

