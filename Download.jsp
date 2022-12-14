<%@ page import="com.AES"%>
<html>
<body>		
<%
try{
	//HttpSession session=request.getSession();
	//String user = session.getAttribute("user").toString().trim();
	String file_name = "none";
	
	
	String user = request.getParameter("user").trim();
	String file = request.getParameter("t2").trim();
	String path = getServletContext().getRealPath("/")+"WEB-INF/classes/com/users/"+user+"/"+file;
	file_name = file;
	java.io.FileInputStream fin = new java.io.FileInputStream(path);
	byte b[] = new byte[fin.available()];
	fin.read(b,0,b.length);
	fin.close();
	b = AES.decrypt(b,getServletContext().getRealPath("/")+"WEB-INF/classes/key.txt");

	response.setContentType("application/octet-stream");
	response.setContentLength((int)b.length);
    response.setHeader("Content-Disposition","attachment; filename=\""+file_name+"\"");
	java.io.OutputStream os = response.getOutputStream();
	os.write(b,0,b.length);
	os.flush();
	os.close();
	
}catch(Exception e){
	out.println("Exception :"+e);
}
		
		
		
%>

</body>
</html>