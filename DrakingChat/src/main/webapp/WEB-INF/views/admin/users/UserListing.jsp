<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>User Page</h1>

<style>
table, td, th {
    border: 4px solid black;
}

th {
    background-color: black;
    color: white;
}
</style>


<table>
<tr>
<th>User Id</th>
<th>Network Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Gender</th>
<th>Birthday</th>
<th>Image</th>
<th>Password</th>
<th>Role</th>
<th>Add New User</th>
<th>Remove User</th>
<th>Update User</th>
<th>Audit Log</th>
</tr>
  <tr ng-repeat="user in users">
    <td>{{ user.user_id }}</td>
    <td>{{ user.sn_id }}</td>
    <td>{{ user.first_name }}</td>
    <td>{{ user.last_name }}</td>
    <td>{{ user.email }}</td>
    <td>{{ user.gender }}</td>
    <td>{{ user.birthday }}</td>
    <td>{{ user.image }}</td>
    <td>{{ user.password }}</td>
    <td>{{ user.role }}</td>
 <td><a><img class="example" src=<c:url value="/resources/Images/icons/add.jpg"/> style="width: 30px; height: 20px;"></a></td>
    <td><a><img class="example" src=<c:url value="/resources/Images/icons/remove.jpg"/> style="width: 30px; height: 20px;"></a></td>
 <td><a><img class="example" src=<c:url value="/resources/Images/icons/update.jpg"/> style="width: 30px; height: 20px;"></a></td>
 <td><a><img class="example" src=<c:url value="/resources/Images/icons/history.jpg"/> style="width: 30px; height: 20px;"></a></td>
 
  </tr>
</table>