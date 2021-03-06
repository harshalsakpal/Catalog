<%@page import="java.util.ArrayList"%>
<%@page import="com.catalog.beans.BookBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Books</title>
</head>
<body>
	 <div>
		&nbsp;&nbsp;&nbsp;<a href="home.jsp">Back</a>
	</div>
	<table border="1" align="center">
		<tr>
			<td align="center"><b>Book Cover</b> </td>
			<td align="center"><b>Product ID </b></td>
			<td align="center"><b>Product Name</b></td>
			<td align="center"><b>Company Name</b></td>
			<td align="center"><b>Author Name</b></td>
			<td align="center"><b>Genre</b></td>
			<td align="center"><b>ISBN</b></td>
			<td align="center"><b>Price</b></td>
			<td align="center"><b>Description</b></td>
		</tr>
		<%
			if (session.getAttribute("bookBean") != null) {
				ArrayList<BookBean> arrayOfBbookBean = (ArrayList<BookBean>) session.getAttribute("bookBean");
				
				for(int i=0;i<arrayOfBbookBean.size();i++){
		%>

		<tr>
			<td><img src="<%=arrayOfBbookBean.get(i).getProductURL()%>"
				width="300px 300px 300px 300px" height="300px 300px 300px 300px"
				style="border: 0" /></td>
			<td align="center"><%=arrayOfBbookBean.get(i).getProdId()%></td>
			<td align="center"><%=arrayOfBbookBean.get(i).getProductName()%></td>
			<td align="center"><%=arrayOfBbookBean.get(i).getCompanyName()%></td>
			<td align="center"><%=arrayOfBbookBean.get(i).getAuthorName()%></td>
			<td align="center"><%=arrayOfBbookBean.get(i).getGenre()%></td>
			<td align="center"><%=arrayOfBbookBean.get(i).getISBN()%></td>
			<td align="center"><b>$ <%=arrayOfBbookBean.get(i).getPrice()%></b></td>
			<td align="center"><%=arrayOfBbookBean.get(i).getDescription()%></td>
		</tr>

		<%
			}
			
				}
		%>
	</table>
	<div align="left">
		<a href="home.jsp">Back</a>
		&nbsp;&nbsp;&nbsp;
	</div>

</body>
</html>