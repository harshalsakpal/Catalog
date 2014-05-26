<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shoppers Heaven Homepage</title>
</head>
<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">

<body>
	<form name="homeForm" method="post">
		<input name="homeInput" type="hidden">
		<div></div>
		<div align="center">
			<select name="searchCriteria">
				<option value="book">Book</option>
				<option value="fridge">Fridge</option>
				<option value="nailpolish">Nail Polish</option>
				<option value="tv">T.V.</option>
			</select> <input type="text" name="seachName"> <input type="button"
				name="seachSubmit" value="GO" onclick="getSearchInput()">
		</div>
		<p></p>
		<p></p>
		<div align="center">Click on Image to See the Items</div>
		<p></p>
		<p></p>
		<div align="center">
			<img src="../images/books.jpg" width="300px 300px 300px 300px"
				height="300px 300px 300px 300px" style="border: 0"
				onclick="getFormInput('books')"> <img src="../images/tv.jpg"
				width="300px 300px 300px 300px" height="300px 300px 300px 300px"
				style="border: 0" onclick="getFormInput('tvs')"> <img
				src="../images/nailpolish.jpg" width="300px 300px 300px 300px"
				height="300px 300px 300px 300px" style="border: 0"
				onclick="getFormInput('nailpolishes')"> <img
				src="../images/fridge.jpg" width="300px 300px 300px 300px"
				height="300px 300px 300px 300px" style="border: 0"
				onclick="getFormInput('fridges')">
		</div>
	</form>

</body>
<script type="text/javascript">
	function getFormInput(input) {
		document.homeForm.homeInput.value = input;
		document.homeForm.action = "../HomeInputServlet";
		document.homeForm.submit();
	}
	
	function getSearchInput(){
		document.homeForm.action = "../HomeSearchServlet";
		document.homeForm.submit();
	}
	
</script>
</html>