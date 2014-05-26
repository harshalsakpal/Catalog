<%@page import="java.util.ArrayList"%>
<%@page import="com.catalog.beans.NailPolishBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Nail Polishes</title>
</head>
<body>
	<div>
		&nbsp;&nbsp;&nbsp;<a href="home.jsp">Back</a>
	</div>
	<table border="1" align="center">
		<tr>
			<td align="center"><b>Nail Polish Image</b></td>
			<td align="center"><b>Product ID </b></td>
			<td align="center"><b>Product Name</b></td>
			<td align="center"><b>Company Name</b></td>
			<td align="center"><b>Color</b></td>
			<td align="center"><b>Size</b></td>
			<td align="center"><b>Price</b></td>
			<td align="center"><b>Description</b></td>
		</tr>
		<%
			if (session.getAttribute("nailPolishBean") != null) {
				ArrayList<NailPolishBean> arrayOfNailPolishBean = (ArrayList<NailPolishBean>) session.getAttribute("nailPolishBean");
				
				for(int i=0;i<arrayOfNailPolishBean.size();i++){
		%>
		<tr>
			<td><img src="<%=arrayOfNailPolishBean.get(i).getProductURL()%>"
				width="100px 100px 100px 100px" height="200px 200px 200px 200px"
				style="border: 0" /></td>
			<td align="center"><%=arrayOfNailPolishBean.get(i).getProdId()%></td>
			<td align="center"><%=arrayOfNailPolishBean.get(i).getProductName()%></td>
			<td align="center"><%=arrayOfNailPolishBean.get(i).getCompanyName()%></td>
			<td align="center"><%=arrayOfNailPolishBean.get(i).getColor()%></td>
			<td align="center"><%=arrayOfNailPolishBean.get(i).getSize()%></td>
			<td align="center"><b> $ <%=arrayOfNailPolishBean.get(i).getPrice()%></b></td>
			<td align="center"><%=arrayOfNailPolishBean.get(i).getDescription()%></td>
		</tr>

		<%
			}
			
				}
		%>
	</table>
	<div align="left">
	<a href="home.jsp">Back</a> &nbsp;&nbsp;&nbsp;
	</div>
</body>
</html>