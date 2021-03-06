<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Registration Form</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container-fluid bg-light">
            
            <br><br><br>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                       <center><h3>Employee Registration Form</h3></center>
                    <form action="RegistrationServlet" method="POST" >
                <div class="form-group">
                  <label for="name">Name :</label>
                  <input type="text" class="form-control" name="name" maxlength="20">
                </div>
                <div class="form-group">
                  <label for="employeeid">User ID:</label>
                  <input type="text" class="form-control" name="userId" maxlength="10">
                </div>
                <div class="form-group">
                  <label for="password">Password:</label>
                  <input type="password" class="form-control" name="password" minlength="8" maxlength="20">
                </div>

                <div class="form-group">
                    <label for="userType">User Type:</label>
                    <select class="form-control" name="userType">
                        <option value="U">User</option>
                        <option value="V">Vendor</option>
                        <option value="A" >Admin</option>
                    </select>
                </div>

                <div class="form-group">
                        <label for="contactNumber:">Contact Number:</label>
                        <input type="number" class="form-control" name="contactNumber">
                </div>
                 <div class="form-group">
                  <label for="designation">Designation :</label>
                  <input type="text" class="form-control" name="designation" maxlength="20">
                </div>
                <div class="form-group">
                        <label for="address">Address:</label>
                        <input type="text" class="form-control" name="address" minlength="10">
                </div>
                <center><button type="submit" class="btn btn-success">Submit</button>&nbsp;&nbsp;&nbsp;<button type="reset" class="btn btn-danger ">Reset</button></center>
              </form>
            </div>
            </div>
            </div>
        
    </body>
</html>
