<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="header.jsp"></jsp:include>


 <div class="container mt-2">
 <h1>edit Employee</h1>
      <form:form method="POST"  action="editEmployees" modelAttribute="Employee">


    <form:input type="hidden" path="id" class="form-control rounded-0" id="inputEmail4"/>

  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">First Name</label>
      <form:input  path="firstName" class="form-control rounded-0" id="inputEmail4"/>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Last Name</label>
      <form:input  class="form-control rounded-0" path="lastName" id="inputPassword4"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Email</label>
    <form:input path="Email" class="form-control rounded-0" />
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address</label>
    <form:input type="text" class="form-control rounded-0" id="inputAddress2" path="Address"/>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <form:input path="City" class="form-control rounded-0" id="inputCity"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <form:select path="State" id="inputState" class="form-control rounded-0">
        <option selected>Choose...</option>
        <option value="Uttar Pradesh">Uttar Pradesh</option>
        <option value="Bihar">Bihar</option>
        <option value="Jharkhand">Jharkhand</option>
        <option value="Patna">Patna</option>
        <option value="Jaunpur">Jaunpur</option>
      </form:select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <form:input path="Zip" class="form-control rounded-0" id="inputZip"/>
    </div>
  </div>
      <div class="modal-footer">
       <form:button formaction="editEmployees" class="btn btn-primary rounded-0">Submit</form:button>
        <button type="button" class="btn btn-secondary rounded-0" data-dismiss="modal">Close</button>
      </div>
 
</form:form>
 </div>
    
    
    





<jsp:include page="footer.jsp"></jsp:include>