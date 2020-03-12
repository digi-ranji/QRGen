<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

     <%@page import="java.util.*" %>

<html lang="en">
<!-- CSS Styles -->
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<script>
  function startDictation() {
      if  ( document.getElementById('labnol').emp_email.value.length < 1 )
      {
      	alert("Email cannot be blank");
      }
      else
      {
      	 document.getElementById('labnol').submit();
      }	
      	
	
  }
</script>
<style>
  .speech {border: 1px solid #DDD; width: 300px; padding: 0; margin: 0}
  .speech input {border: 1; width: 240px; display: inline-block; height: 40px; font-size:24px }
  .speech img {float: right; width: 44px }
</style>
</head>
<!-- Search Form -->
<center>
<form id="labnol" method="get" action="QRGen.jsp"  >
<br>

<br>
<br>


<img  src="images/qrgenicon.png" style="width:50%;" /> 
  
<br>
    <input type="text" name="emp_email" id="transcript" placeholder="Input your IBM Email" style="font-size:15pt;width:75%;" />

	<p style="font-size:8pt" > Eg : watson@xy.ibm.com </p>
   <a href="javascript:startDictation();" > <img  src="images/enter.png" style="width:25%;" /> </a>
  
  <br><br><br><br>
 <input type=hidden name=mode value='login'>
 
 <br>
 <img  src="images/psjh.png" style="width:45%;" />
</form>

</center>

</html>