<%@page import="org.jfree.ui.RefineryUtilities"%>
<%@page import="com.Chart"%>
<%
Chart chart1 = new Chart("Computation Graph");
chart1.pack();
RefineryUtilities.centerFrameOnScreen(chart1);
chart1.setVisible(true);
response.sendRedirect("UserScreen.jsp");

%>