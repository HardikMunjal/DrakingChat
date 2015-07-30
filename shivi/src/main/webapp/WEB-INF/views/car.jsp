<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>aa to raha h bhai</h2>


{{users}}

<div> 



 
ju:{{juju}}
cars: {{cars}}


<ul>
  <li ng-repeat="x in names">
    {{ x.Name + ', ' + x.Country }}
  </li>
</ul>

<table>
<tr>
<th>Series Id</th>
<th>Series Name</th>
<th>Admin Enable Control</th>
<th>Sync with database</th>
<th>Start Date</th>
<th>End Date</th>
<th>Participant</th>
<th>Schedule</th>
<th>pending</th>
<th>Match Details</th>


</tr>
</table> 


</div>




</body>
</html>