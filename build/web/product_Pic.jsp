<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 


<%
	Connection con = null;
  	try{  
	     
		int id = Integer.parseInt(request.getParameter("id"));
		
		con= DBCon.DbConnector.getConnection();
                
    	String strQuery = "select productimage from productsandaccessories where id="+id+" ";
        PreparedStatement ps =con.prepareStatement(strQuery);
    	ResultSet rs = ps.executeQuery();
    	String imgLen="";
    	if(rs.next())
		{
      		imgLen = rs.getString(1);
     	}  
		
    	rs = ps.executeQuery();
    	if(rs.next())
		{
      		int len = imgLen.length();
		  	byte [] rb = new byte[len];
		  	InputStream readImg = rs.getBinaryStream(1);
		 	int index=readImg.read(rb, 0, len);  
		  	
		  	response.reset();
		  	response.getOutputStream().write(rb,0,len); 
		  	response.getOutputStream().flush();        
		}	
  	}
  	catch (Exception e){
		e.printStackTrace();
  	}
%>

</body>
</html>


