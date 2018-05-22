<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
  <link 	type ="text/css" 
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"/>
		
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>jQuery UI Tabs - Default functionality</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        $( function() {
            $( "#tabs" ).tabs();
        } );
    </script>

	<title>Dane </title>
</head>

<body>

<h1>Baza systemow</h1>
<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Aktywne umowy</a></li>
        <li><a href="#tabs-2">Wszystkie umowy</a></li>
        <li><a href="#tabs-3">System</a></li>
        <li><a href="#tabs-4">O aplikacji</a></li>
    </ul>
    <div id="tabs-1">
     <!-- put new button : Dodaj Dane--> 
     <input type="button" value="Dodaj Dane"
     onclick="window.location.href='showFormForAdd';return false"
     class="add-button"
     />
	<div id="container">
    	<div id="content">
			<table>
				<tr>
					<th>Nr umowy</th>
					<th>System</th>
					<th>Od daty</th>
					<th>        </th>
					<th>Do daty</th>
					<th>Wplywy</th>
					<th>Rodzaj wplywu</th>
					<th>W skali</th>
					<th>Aktywna</th>
					<th>Akcja</th>
				</tr>	
				<c:forEach var = "tempDane" items= "${dane}">
					<!-- update link -->
					<c:url var="updateLink" value="/dane/showFormForUpdate" > 
						<c:param name="daneId" value="${tempDane.id}"/>
					</c:url>
					
					<!-- delete link -->
					<c:url var="deleteLink" value="/dane/delete" > 
						<c:param name="daneId" value="${tempDane.id}"/>
					</c:url>
					<tr>
					<c:if test="${tempDane.active=='true'}"></c:if>
					<c:choose>
    				<c:when test="${tempDane.active=='true'}">
       					<td>${tempDane.orderNumber}</td>
						<td>${tempDane.system}</td>	
						<td>${tempDane.fromDate}</td>
						<td>              </td>
						<td>${tempDane.toDate}</td>
						<td>${tempDane.amount}</td>
						<td>${tempDane.amountType}</td>
						<td>${tempDane.amountPeriod}</td>
						<td>${tempDane.active}</td>
						<td>
							<a href="${updateLink}">Aktualizuj</a>
							|
							<a href="${deleteLink}"
							onclick="if (!(confirm('Czy jestes pewny ze chcesz usunac rekord?')))return false">Usun</a>
						</td>
    				</c:when>    
    				<c:otherwise>
    				</c:otherwise>
					</c:choose>		
					</tr>
				</c:forEach>
			</table>
	</div>
    </div>
    </div>
    <div id="tabs-2">
       <!-- put new button : Dodaj Dane--> 
     <input type="button" value="Dodaj Dane"
     onclick="window.location.href='showFormForAdd';return false"
     class="add-button"
     />
	<div id="container">
    	<div id="content">
			<table>
				<tr>
					<th>System</th>
					<th>Zadanie</th>
					<th>Nr umowy</th>
					<th>Od daty</th>
					<th>        </th>
					<th>Do daty</th>
					<th>Wplywy</th>
					<th>Rodzaj wplywu</th>
					<th>Okres rozliczeniowy</th>
					<th>Procent autoryzacji</th>
					<th>Aktywna</th>
					<th>Akcja</th>
				</tr>
				<c:forEach var = "tempDane" items= "${dane}">
					<!-- update link -->
					<c:url var="updateLink" value="/dane/showFormForUpdate" > 
						<c:param name="daneId" value="${tempDane.id}"/>
					</c:url>
					<!-- delete link -->
					<c:url var="deleteLink" value="/dane/delete" > 
						<c:param name="daneId" value="${tempDane.id}"/>
					</c:url>
					<tr>
						<td>${tempDane.system}</td>
						<td>${tempDane.request}</td>
						<td>${tempDane.orderNumber}</td>
						<td>${tempDane.fromDate}</td>
						<td>              </td>
						<td>${tempDane.toDate}</td>
						<td>${tempDane.amount}</td>
						<td>${tempDane.amountType}</td>
						<td>${tempDane.amountPeriod}</td>
						<td>${tempDane.authorizationPercent}</td>
						<td>${tempDane.active}</td>
						<td>
							<a href="${updateLink}">Aktualizuj</a>
							|
							<a href="${deleteLink}"
							onclick="if (!(confirm('Czy jestes pewny ze chcesz usunac rekord?')))return false">Usun</a>
						</td>
					</tr>
				</c:forEach>
			</table>
	</div>
    </div>
    </div>
    <div id="tabs-3">
      <div id="container">
    	<div id="content">
			<table>
				<tr>
					<th>System</th>
					<th>Opis systemu</th>
					<th>Wiodaca technologia</th>
					<th>Wlasciciel</th>	
				</tr>
				<c:forEach var = "tempDane" items= "${dane}">
					<!-- update link -->
					<c:url var="updateLink" value="/dane/showFormForUpdate" > 
						<c:param name="daneId" value="${tempDane.id}"/>
					</c:url>
					<!-- delete link -->
					<c:url var="deleteLink" value="/dane/delete" > 
						<c:param name="daneId" value="${tempDane.id}"/>
					</c:url>
					<tr>
						<td>${tempDane.system}</td>	
						<td>${tempDane.description}</td>
						<td>${tempDane.technology}</td>
						<td>${tempDane.owner}</td>
						<td>
							<a href="${updateLink}">Aktualizuj</a>
							|
							<a href="${deleteLink}"
							onclick="if (!(confirm('Czy jestes pewny ze chcesz usunac rekord?')))return false">Usun</a>
						</td>
					</tr>
				</c:forEach>
			</table>
	</div>
    </div>
    </div>
    <div id="tabs-4">
        <p>Utworzyl:  Szczepan Szpak</p>
        <p>22.05.2018</p>
    </div>
</div>
</div>
</body>
</html>