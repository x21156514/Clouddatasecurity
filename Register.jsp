<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Cloud Data Security</title>
<meta name="keywords" content="" />
<meta name="Premium Series" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<script language="javascript">
function checkEmail(email) {
		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)){
			return (true);
		}
		alert("Invalid E-mail Address! Please re-enter.");
		return (false);
	}
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter Username");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t4.focus();
	return false;
	}
	if(isNaN(formObj.t4.value)){
		alert("Contact no  must be numeric");
		formObj.t4.focus();
		return false;
	}
	if(formObj.t4.value.length != 10){
		alert("Contact number must be 10 digits long");
		formObj.t4.focus();
		return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter Email ID");
	formObj.t5.focus();
	return false;
	}
	if(!checkEmail(formObj.t5.value)){
		formObj.t5.focus();
		return false;
	}
	if(formObj.t6.value.length==0)
	{
	alert("Please Enter Address");
	formObj.t6.focus();
	return false;
	}
	if(formObj.t7.value.length==0)
	{
	alert("Please Upload Biometric Image");
	formObj.t7.focus();
	return false;
	}
	return true;
	}
	</script>
</head>
<body>
<!-- start header -->
<div id="header">
	<div id="logo">
		<h1><span><center>Cloud Data Security Enhancements through the Biometric<br/> and Encryption System

</center></span></h1>
		
	</div>
	<div id="menu">
		<ul id="main">
			<li class="current_page_item"><a href="index.jsp">Home</a></li><td></td>
			<li><a href="User.jsp">User Login</a></li><td></td>
			<li><a href="Register.jsp">New User (Register Here)</a></li><td></td>
			<td></td>
			
     
		</ul>
       </div>
	
</div>

<div id="wrapper">
	<!-- start page -->
	<div id="page">
<form name="f1" method="post" action="Register" enctype="multipart/form-data" onsubmit="return validate(this);"><br/>
  <div id="content">
			<div class="flower"><center><h1>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			User Signup Screen</h1></div>
			<br/>
			<%
			
	String res = request.getParameter("t1");
	if(res != null){
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		
		out.println("<center><font size=3 color=red>"+res+"</font></center>");
	}%>
	
			<br/>
						
						<table align="right" >
			 <tr><td><b>Username</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size="30"/></td></tr>
         
		  <tr><td><b>Password</b></td><td><input type="password" name="t2" style="font-family: Comic Sans MS" size="30"/></td></tr>

		   <tr><td><b>Gender</b></td><td><select name="t3" style="font-family: Comic Sans MS">
		   <option value="Male">Male</option>
		   <option value="Female">Female</option>
		   </select>
		   </td></tr>

		   <tr><td><b>Contact&nbsp;No</b></td><td><input type="text" name="t4" style="font-family: Comic Sans MS" size="20"/></td></tr>

		    <tr><td><b>Email&nbsp;ID</b></td><td><input type="text" name="t5" style="font-family: Comic Sans MS" size="30"/></td></tr>         

		   <tr><td><b>Address</b></td><td><textarea name="t6" style="font-family: Comic Sans MS" rows="5" cols="40"></textarea></td></tr>

		   <tr><td><b>Upload&nbsp;Biometric&nbsp;Image</b></td><td><input type="file" name="t7" style="font-family: Comic Sans MS" size="30"/></td></tr>    

		           
			<tr><td></td><td><input type="submit" value="Register"></td>
			</table>
</center><br /><div class="post">
				
				<div class="entry">
					
				</div>
			</div>
		</div>
		<!-- end content -->
		<!-- start sidebars -->
		
		<!-- end sidebars -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end page -->
</div>
</body>
</html>


