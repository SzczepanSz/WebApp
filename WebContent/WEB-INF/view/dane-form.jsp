<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"  %>

<!DOCTYPE html>
<html>
<head>


	<title>Dodaj Dane</title>
	
	<link 	type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css">
			
	<link 	type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/add-style.css">

</head>

<body>
	<div id="wrapper">
		<div id=header>
			<h2>Dodawanie danych do bazy</h2>
		</div>
	</div>

	<div id="container">
		<h3>Dodaj Dane</h3>
		<form:form action="saveDane" modelAttribute="dane" method="POST">
			
			<form:hidden path="id"/>
			
			<table>
				<tbody>
					<tr>
						<td><label>System:</label></td>
						<td><form:input path="system"/></td>
					</tr>
					<tr>
						<td><label>Zadanie:</label></td>
						<td><form:input path="request"/></td>
					</tr>
					<tr>
						<td><label>Nr umowy:</label></td>
						<td><form:input path="orderNumber"/></td>
					</tr>
					<tr>
						<td><label>Od daty:</label></td>
						<td><form:input path="fromDate" value="rrrr-mm-dd"/></td>
					</tr>					
					<tr>
						<td><label>Do daty:</label></td>
						<td><form:input path="toDate" value="rrrr-mm-dd"/></td>
					</tr>					
					<tr>
						<td><label>Wplywy:</label></td>
						<td><form:input path="amount"/></td>
					</tr>					
					<tr>
						<td><label>Rodzaj wplywu:</label></td>
						<td><form:input path="amountType"/></td>
					</tr>					
					<tr>
						<td><label>Okres rozliczeniowy:</label></td>
						<td><form:input path="amountPeriod"/></td>
					</tr>
					<tr>
						<td><label>Procent autoryzacji:</label></td>
						<td><form:input path="authorizationPercent"/></td>
					</tr>
					<tr>
						<td><label>Aktywna:</label></td>
						<td><form:input path="active" value="true/false"/></td>
					</tr>
					<tr>
						<td><label>Opis systemu:</label></td>
						<td><form:input path="description"/></td>
					</tr>
					<tr>
						<td><label>Wiodaca technologia:</label></td>
						<td><form:input path="technology"/></td>
					</tr>
					<tr>
						<td><label>Wlasciciel:</label></td>
						<td><form:input path="owner"/></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Zapisz" class="save"/></td>
					</tr>
				</tbody>
			</table>
		
		</form:form>
		
		<div style="clear; both"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/dane/list" >Powrót do tabeli</a>
		</p>
		
	</div>

</body>

</html>