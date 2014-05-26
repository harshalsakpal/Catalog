<%@page import="java.util.ArrayList"%>
<%@page import="com.catalog.beans.FridgeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Fridges</title>
</head>
<body>
	<div align="left">
		&nbsp;&nbsp;&nbsp;<a href="home.jsp">Back</a>
	</div>
	<table border="1" align="center">
		<tr>
			<td align="center"><b>Display Image </b> </td>
			<td align="center"><b>Product ID </b></td>
			<td align="center"><b>Product Name</b></td>
			<td align="center"><b>Company Name</b></td>
			<td align="center"><b>Type</b></td>
			<td align="center"><b>Capacity</b></td>
			<td align="center"><b>Dimensions</b></td>
			<td align="center"><b>Color</b></td>
			<td align="center"><b>Price</b></td>
			<td align="center"><b>Description</b></td>
		</tr>
		<%
			if (session.getAttribute("fridgeBean") != null) {
				ArrayList<FridgeBean> arrayOfFridgeBean = (ArrayList<FridgeBean>) session.getAttribute("fridgeBean");
				
				for(int i=0;i<arrayOfFridgeBean.size();i++){
		%>
		<tr>
			<td><img src="<%=arrayOfFridgeBean.get(i).getProductURL()%>"
				width="200px 200px 200px 200px" height="300px 300px 300px 300px"
				style="border: 0" /></td>
			<td align="center"><%=arrayOfFridgeBean.get(i).getProdId()%></td>
			<td align="center"><%=arrayOfFridgeBean.get(i).getProductName()%></td>
			<td align="center"><%=arrayOfFridgeBean.get(i).getCompanyName()%></td>
			<td align="center"><%=arrayOfFridgeBean.get(i).getType()%></td>
			<td align="center"><%=arrayOfFridgeBean.get(i).getFridgeCapacity()%></td>
			<td align="center"><%=arrayOfFridgeBean.get(i).getDimensions()%></td>
			<td align="center"><%=arrayOfFridgeBean.get(i).getColor()%></td>
			<td align="center"><b> $ <%=arrayOfFridgeBean.get(i).getPrice()%> </b> </td>
			<td align="center"><%=arrayOfFridgeBean.get(i).getDescription()%></td>
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