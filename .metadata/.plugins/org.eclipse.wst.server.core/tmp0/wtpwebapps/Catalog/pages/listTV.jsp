<%@page import="java.util.ArrayList"%>
<%@page import="com.catalog.beans.TVBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of TVs</title>
</head>
<body>
	<div>
		&nbsp;&nbsp;&nbsp;<a href="home.jsp">Back</a>
	</div>
	<table border="1" align="center">
		<tr>
			<td align="center"><b>TV Image</b></td>
			<td align="center"><b>Product ID </b></td>
			<td align="center"><b>Product Name</b></td>
			<td align="center"><b>Company Name</b></td>
			<td align="center"><b>Size</b></td>
			<td align="center"><b>Dimensions</b></td>
			<td align="center"><b>Price</b></td>
			<td align="center"><b>Description</b></td>
		</tr>
		<%
			if (session.getAttribute("tvBean") != null) {
				ArrayList<TVBean> arrayOfTVBean = (ArrayList<TVBean>) session.getAttribute("tvBean");
				
				for(int i=0;i<arrayOfTVBean.size();i++){
		%>
		<tr>
			<td><img src="<%=arrayOfTVBean.get(i).getProductURL()%>"
				width="300px 300px 300px 300px" height="300px 300px 300px 300px"
				style="border: 0" /></td>
			<td align="center"><%=arrayOfTVBean.get(i).getProdId()%></td>
			<td align="center"><%=arrayOfTVBean.get(i).getProductName()%></td>
			<td align="center"><%=arrayOfTVBean.get(i).getCompanyName()%></td>
			<td align="center"><%=arrayOfTVBean.get(i).getSize()%></td>
			<td align="center"><%=arrayOfTVBean.get(i).getDimensions()%></td>
			<td align="center"><b>$ <%=arrayOfTVBean.get(i).getPrice()%></b></td>
			<td align="center"><%=arrayOfTVBean.get(i).getDescription()%></td>
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