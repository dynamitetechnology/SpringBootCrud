<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="header.jsp"></jsp:include>

 <div class="container mt-2">
 <h1>add Employee</h1>
      <form:form method="POST"  action="addEmployee" modelAttribute="Employee">

  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">First Name</label>
      <form:input  path="firstName" class="form-control rounded-0" id="inputEmail4" required="true"/>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Last Name</label>
      <form:input  class="form-control rounded-0" path="lastName" id="inputPassword4" required="true"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Email</label>
    <form:input path="Email" class="form-control rounded-0" required="true"/>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address</label>
    <form:input type="text" class="form-control rounded-0" id="inputAddress2" path="Address" required="true"/>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <form:input path="City" class="form-control rounded-0" id="inputCity" required="true"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <form:select path="State" id="inputState" class="form-control rounded-0" required="true">
        <option value="">Select Option</option>
        <option value="Uttar Pradesh">Uttar Pradesh</option>
        <option value="Bihar">Bihar</option>
        <option value="Jharkhand">Jharkhand</option>
        <option value="Patna">Patna</option>
        <option value="Jaunpur">Jaunpur</option>
      </form:select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <form:input path="Zip" class="form-control rounded-0" id="inputZip" required="true"/>
    </div>
  </div>
      <div class="modal-footer">
       <form:button formaction="addEmployee" class="btn btn-primary rounded-0">Submit</form:button>
        <button type="button" class="btn btn-secondary rounded-0" data-dismiss="modal">Close</button>
      </div>
 
</form:form>
 </div>
    
    
    




<jsp:include page="footer.jsp"></jsp:include>