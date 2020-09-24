<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="header.jsp"></jsp:include>

 <div class="container mt-3">
 <h4>Spring Boot Crud with Mysql</h4>
    <table class="table table-hover mt-5 display" id="example">
  <thead>
    <tr>
      <th scope="col">Sr No.</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
       <th scope="col">City</th>
       <th scope="col">State</th>
      <th scope="col">Zip</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${employeeList}" var="emp" varStatus="loop">
  <tr>
  	<td><c:out value="${loop.count}"></c:out></td>
  	<td><c:out value="${emp.firstName}"></c:out></td>
   <td><c:out value="${emp.lastName}"></c:out></td>
   <td><c:out value="${emp.email}"></c:out></td>
   <td><c:out value="${emp.address}"></c:out></td>
   <td><c:out value="${emp.city}"></c:out></td>
   <td><c:out value="${emp.state}"></c:out></td>
   <td><c:out value="${emp.zip}"></c:out></td>
   <td>
   
   <c:url value="deleteEmployeeForm" var="deleteURL">
   <c:param name="Id" value="${emp.id}"/> 
   </c:url> 
   <a href="${deleteURL}"><i class="fa fa-trash text-danger"></i></a>
   
   <c:url value="editEmployeeForm" var="editURL">
   <c:param name="Id" value="${emp.id}"/> 
   </c:url>  
   <a  href="${editURL}"><i class="fa fa-edit text-success"></i></a>
    <a  href="${sendEmail}"><i class="fa fa-envelope text-success"></i></a>
   </td>
    </tr>
  </c:forEach>
 
  </tbody>
</table>
 </div>
    
    
    


  
    
<jsp:include page="footer.jsp"></jsp:include>