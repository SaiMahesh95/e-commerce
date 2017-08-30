<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
   <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Google-Style-Login.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/category.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/product.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Footer.css"/>">
</head>
<body>
<nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="#"> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li role="presentation"><a href="category">Category </a></li>
                    <li role="presentation"><a href="supplier">Supplier </a></li>
                    <li role="presentation"><a href="product">Product </a></li>
                     
                    <sec:authorize access="isAuthenticated()">
                 <li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
                 <li role="presentation"><a href="index">Home</a></li>
                  </sec:authorize>
                </ul>
                
            </div>
        </div>
    </nav>
    <form:form action="category.do" method="POST" modelAttribute="category">
    <div class="container">
        <div class="well">
          
                <div class="row pad">
                    <div class="col-sm-2 col-xs-6">
                        <form:label path="categoryId">Category Id</form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:input path="categoryId" class="form-control input-sm" type="text"/>
                    </div>
                </div>
       
            
                <div class="row pad">
                    <div class="col-sm-2 col-xs-6">
                        <form:label path="categoryName">Category Name</form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:input path="categoryName" class="form-control input-sm" type="text"/>
                    </div>
                </div>
            
                <div class="row pad">
                    <div class="col-sm-2 col-xs-6">
                        <form:label path="categorydescription">Description </form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:textarea path="categorydescription" class="form-control"></form:textarea>
                    </div>
                </div>
            
        </div>
        <td colspan="2">
    <input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
				</td>
    </div>
    
   </form:form>
   <div class="container">
   <div class="well">
<br>
<table border="1">
	<th>ID</th>
	<th>Category name</th>
	<th>Category desc</th>
	
	<c:forEach items="${categoryList}" var="category">
		<tr>
			<td colspan="2">${category.categoryId}</td>
			<td colspan="2">${category.categoryName}</td>
			<td colspan="2"> ${category.categorydescription}</td>
			
		</tr>
	</c:forEach>
</table>
</div>
</div>
<script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>