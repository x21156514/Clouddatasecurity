<%@page import="java.io.File"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Cloud Data Security</title>
<meta name="keywords" content="" />
<meta name="Premium Series" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
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
			<li class="current_page_item"><a href="UploadFile.jsp">Upload New File</a></li><td></td>
			<li><a href="DownloadFile.jsp">Download Files</a></li><td></td>
			<li><a href="Graph.jsp">Computation Time Graph</a></li><td></td>
			<li><a href="Logout.jsp">Logout</a></li><td></td>
			<td></td>
			
     
		</ul>
	
</div>

<div id="wrapper">
	<!-- start page -->
	<div id="page">

   <h2><b>View Uploaded File Data Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
			<table border="1" align="center" width="100%">
			<tr><th>Username</th><th>Uploaded Filename</th>
			<th>Download File</th> 
			<tr>
	<%
	String user = (String)session.getAttribute("user");
	String path = getServletContext().getRealPath("/")+"WEB-INF/classes/com/users/"+user;
	File file = new File(path);
	File list[] = file.listFiles();
	for(int i=0;i<list.length;i++) {
		
		%>
	<tr><td><font size="3" color="black"><%=user%></td>
	<td><font size="3" color="black"><%=list[i].getName()%></td>
	<td><a href="Download.jsp?user=<%=user%>&t2=<%=list[i].getName()%>"><font size="3" color="black">Click Here to Download</font></a></td>
	<%}%>
	</tr>
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