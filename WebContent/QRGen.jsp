<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file = "dbconnection.jsp" %> 
    <%@page import="java.io.*" %>
    <%@page import="java.util.*" %>
     <%@page import="java.sql.*" %>
    <%@page import="rtr.*" %>
    <%@page import="net.glxn.qrgen.*" %>
    <%@page import="net.glxn.qrgen.image.*" %> 
   
<%

String qrText 		= request.getParameter("emp_email").toLowerCase().trim();
CallableStatement cstmX=null;
ResultSet resultSetX =null; 

Connection connectionX =null; 
		try
		{ 
		 //connectionX = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		
			//cstmX = connectionX.prepareCall ("{call iKonnet2018.ik19_check_prereg(?)}");
			//cstmX = connectionX.prepareCall ("{call iKonnet2018.psjh_check_prereg(?)}");
			//cstmX.setString("pemail", qrText);
			//resultSetX = cstmX.executeQuery();
			if(true)
			{
				//qrText= qrText +"#"+ resultSetX.getString("p_team")+ "=" + resultSetX.getString("p_name");
				String qrtextEN  	= Base64.getEncoder().encodeToString(qrText.getBytes()); 

				  ByteArrayOutputStream outX = QRCode.from(qrtextEN).to(ImageType.PNG).withSize(300, 300).stream();
			        
			      response.setContentType("image/png");
			      response.setContentLength(outX.size());
			      try
			      {
			      OutputStream os = response.getOutputStream();
			      os.write(outX.toByteArray());
			       
			      os.flush();
			      os.close();
			      }
			      catch ( Exception ex)
			      {
			    	  out.println("<head><meta name='viewport' content='width=device-width, initial-scale=1.0'></head>");
			    	  out.println("<center><h2 style='font-size:20pt;' >Error in QR code generation  ! Plrease retry </h2>");
			    	  out.println("<button onclick='window.history.back()' style='width:50%;'>Go Back </button></center>");
			      }
			}
			else
			{
				 out.println("<head><meta name='viewport' content='width=device-width, initial-scale=1.0'></head>");
				//out.println("<center><h2 style='font-size:20pt;'>You are not preregistered for iKonnect 2019 or entered wrong email ID </h2>");
				out.println("<center><h2 style='font-size:20pt;'>You are not preregistered for PSJH Session or entered wrong email ID </h2>");
				out.println("<button onclick='window.history.back()' style='width:50%;'>Go Back </button></center>");		
			}
			
			if(resultSetX !=null )
			{
				resultSetX.close();
			}
			
			if(cstmX !=null )
			{
				cstmX.close();
			}
		}
		catch(Exception ex)
		{
			 out.println("<head><meta name='viewport' content='width=device-width, initial-scale=1.0'></head>"); 
			out.println("<center><h2 style='font-size:20pt;' >Error in QR code generation  ! Plrease retry </h2>");
			 out.println("<button onclick='window.history.back()' style='width:50%;'>Go Back </button></center>");
		}
		
			
			


	
%>
