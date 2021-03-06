<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
    	<title>User Management</title>
    	<style>
    	.userName.ng-valid {
        	  background-color: lightgreen;
     	 }
      	.userName.ng-dirty.ng-invalid-required {
       	   background-color: red;
      	}
      	.userName.ng-dirty.ng-invalid-minlength {
       	   background-color: red;
      	}
      	.firstName.ng-valid {
        	  background-color: lightgreen;
     	 }
      	.firstName.ng-dirty.ng-invalid-required {
       	   background-color: red;
      	}
      	.firstName.ng-dirty.ng-invalid-minlength {
       	   background-color: red;
      	}      	
      	.lastName.ng-valid {
      		background-color: lightgreen;
      	}
      	.lastName.ng-dirty.ng-invalid-required {
      		background-color: red;
      	}
      	.lastName.ng-dirty.ng-invalid-minlength {
      		background-color:red;
      	}
      	.email.ng-valid {
          	background-color: lightgreen;
      	}
      	.email.ng-dirty.ng-invalid-required {
          	background-color: red;
      	}
      	.email.ng-dirty.ng-invalid-email {
          	background-color: yellow;
      	}
      	.age.ng-valid {
       	   background-color: lightgreen;
      	}
      	.age.ng-dirty.ng-invalid-required {
       	   background-color: red;
      	}	
      	.age.ng-dirty.ng-invalid-maxlength {
       	   background-color: red;
      	}
      	.password.ng-dirty.ng-invalid-minlength {
      		background-color:red;
      	}
    	</style>
    	
    	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></link>
    	<link href="<c:url value='/static/css/application.css' />" rel="stylesheet"></link>
	</head>
	<body ng-app="myApp" class="ng-cloak" >
   		<div class= "logo">   		
    		<img id="logoImage" src = "<c:url value='/static/images/logo_user.png' />"/>
    		<font id="logoText"> User Management Panel</font>
   		</div>
   
   		<div class="shadow-below-header"></div>
   
   		<div class="headerIcons">
   			<a href="/Api/login">
   				<img id="logoLogout" src="<c:url value='/static/images/logo_logout.png' />"/>
   			</a>
    		<a href="/Api/file">
    			<img id="logoFiles"  src="<c:url value='/static/images/logo_docs.png' />"/>
    		</a>    		    		   			
   		</div>
   		
   		<div class="generic-container" ng-controller="UserController as ctrl">
        	<div class="panel panel-default">
            	<div class="panel-heading"><span class="lead">User Data Management Form</span></div>
              	<div class="formcontainer">
                	<form ng-submit="ctrl.submit()" name="appForm" class="form-horizontal">
                    	<input type="hidden" ng-model="ctrl.customer.id" />
                    	
                    	<div class="row">
                        	<div class="form-group col-md-12">
                            	<label class="col-md-2 control-lable" for="userName">User Name</label>
                              	<div class="col-md-7">
                                	<input type="text" ng-model="ctrl.customer.userName" name="uname" class="userName form-control input-sm" placeholder="Enter User Name" required ng-minlength="5"/>
                                  	<div class="has-error" ng-show="appForm.$dirty">
                                    	<span ng-show="appForm.uname.$error.required">*</span>
                                      	<span ng-show="appForm.uname.$error.minlength">Minimum length required is 5</span>
                                      	<span ng-show="appForm.uname.$invalid">This field is invalid </span>
                                  	</div>
                              	</div>
                          	</div>
                      	</div>
                      
                      	<div class="row">
                        	<div class="form-group col-md-12">
                            	<label class="col-md-2 control-lable" for="file">First Name</label>
                              	<div class="col-md-7">
                                	<input type="text" ng-model="ctrl.customer.firstName" name="fname" class="firstName form-control input-sm" placeholder="Enter your First Name" required ng-minlength="3"/>
                                  	<div class="has-error" ng-show="appForm.$dirty">
                                    	<span ng-show="appForm.fname.$error.required">*</span>
                                      	<span ng-show="appForm.fname.$error.minlength">Minimum length required is 3</span>
                                      	<span ng-show="appForm.fname.$invalid">This field is invalid </span>
                                  	</div>
                              	</div>
                          	</div>
                      	</div>
                        
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Last Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.customer.lastName" name ="lname" class="lastName form-control input-sm" placeholder="Enter your Last Name" required ng-minlength ="3"/>
                                  <div class="has-error" ng-show="appForm.$dirty">
                                  	  <span ng-show="appForm.lname.$error.required">*</span>
                                  	  <span ng-show="appForm.lname.$error.minlength">Minimum length required is 3</span>
                                  	  <span ng-show="appForm.lname.$invalid">This field is invalid</span>                                  
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="email">Email</label>
                              <div class="col-md-7">
                                  <input type="email" ng-model="ctrl.customer.email" id="email" class="email form-control input-sm" placeholder="Enter e-mail" required/>
                                  <div class="has-error" ng-show="appForm.$dirty">
                                      <span ng-show="appForm.email.$error.required">This is a required field</span>
                                      <span ng-show="appForm.email.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                      	<div class="form-group col-md-12">
                        	<label class="col-md-2 control-lable" for="password">Password</label>
                          	<div class="col-md-7">
                            	<input type="password" ng-model="ctrl.customer.password" name="password" class="password form-control input-sm" placeholder="Enter Password" required ng-minlength="6"/>
                                <div class="has-error" ng-show="appForm.$dirty">
                                   	<span ng-show="appForm.password.$error.minlength">Minimum of 6 characters</span>
                            	</div>
                          	</div>
                        </div>
                      </div>

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Age</label>
                              <div class="col-md-7">
                                  <input type="number" ng-model="ctrl.customer.age" name="age" class="age form-control input-sm" placeholder="Enter your Age" required ng-maxlength="3" 
                                    ng-pattern="/^([1-9][0-9]*)$/"/>
                                  <div class="has-error" ng-show="appForm.$dirty">
                                      <span ng-show="appForm.age.$error.required">*</span>
                                      <span ng-show="appForm.age.$error.pattern">Not valid age</span>
                                      <span ng-show="appForm.age.$error.maxlength">Max age in 3 digits</span>
                                      <span ng-show="appForm.age.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit"  value="{{!ctrl.customer.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="appForm.$invalid"/>
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="appForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Users</span>
              	<div class = "searchBar">
            	  	<form class="form-inline">
        				<!-- <label >Search</label> -->
        			    <input type="text" ng-model="search" class="form-control" placeholder="Search">        			
    				</form>
    			</div>              
              </div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>                             
                              <th>User Name</th>
                              <th>First Name</th>
                              <th>Last Name</th>
                              <th>e-Mail</th>
                              <th>Password</th>                              
                              <th ng-click="ctrl.sort('age')">Age
                              <span class = "sortingIcon" ng-show="predicate === 'age'" ng-class="{reverse:reverse}"></span>
                              </th>                              
                              <th width="20%"></th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr dir-paginate ="u in ctrl.customers| orderBy:predicate:reverse|filter:search|itemsPerPage:5">
                              <!-- <td style="vertical-align: middle">{{u.id}}</td> -->
                              <td style="vertical-align: middle"><span ng-bind="u.userName"></span></td>
                              <td style="vertical-align: middle"><span ng-bind="u.firstName"></span></td>
                              <td style="vertical-align: middle"><span ng-bind="u.lastName"></span></td>
                              <td style="vertical-align: middle"><span ng-bind="u.email"></span></td>
                              <td style="vertical-align: middle"><span ng-bind="u.password"></span></td>
                              <td style="vertical-align: middle"><span ng-bind="u.age"></span></td>
                              <td style="vertical-align: middle">
                              <button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width">Edit</button>
                              <button type="button" ng-click="ctrl.remove(u.id)" class="btn btn-danger custom-width">Remove</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>                  
              </div>                      
          </div>
          <div class="paginaterDiv">
              <dir-pagination-controls 
       			max-size="5"
       			direction-links="true"
       			boundary-links="true" >
    		  </dir-pagination-controls>              
    	  </div>      
      </div>
      
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/dirPagination.js'/>"></script>
      <script src="<c:url value='/static/js/repository/user_repository.js' />"></script>
      <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>
  </body>
</html>