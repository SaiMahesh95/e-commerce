<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

   <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
     <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
     <link rel="stylesheet" href="<c:url value="/resources/assets/css/product.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Google-Style-Login.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/category.css"/>">
   
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Footer.css"/>">
    </head>
    <body>
        <h3>Welcome, Enter The Product Details</h3>
        <ul class="nav nav-tabs">
        <li class="active"><a href="category">Category </a></li>
        <li><a href="supplier">Supplier </a></li>
        <li><a href="product">Product </a></li>
         
                    <sec:authorize access="isAuthenticated()">
                 <li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
                 <li role="presentation"><a href="index">Home</a></li>
                  </sec:authorize>
    </ul>
        <form:form method="POST" action="product.do"  modelAttribute="product" enctype="multipart/form-data">
            
    <div class="container">
        <div class="well">
            
                <div class="row pad">
                    <div class="col-lg-offset-3 col-sm-2 col-xs-3">
                        <form:label path="productid">Product Id</form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:input class="form-control input-sm" path="productid" type="text"/>
                    </div>
                </div>
            
        
       
            
                <div class="row pad">
                    <div class="col-lg-offset-3 col-sm-2 col-xs-3">
                        <form:label path="productName">Product name</form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:input class="form-control input-sm" path="productName" type="text"/>
                    </div>
                </div>
        
            
                <div class="row pad">
                    <div class="col-lg-offset-3 col-sm-2 col-xs-3">
                        <form:label path="productDescription">Description </form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:input class="form-control input-sm" path="productDescription" type="text"/>
                    </div>
                </div>
            
 
    
        
                <div class="row pad">
                    <div class="col-lg-offset-3 col-sm-2 col-xs-3">
                        <form:label path="price">Price </form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:input path="price" class="form-control input-sm" type="text"/>
                    </div>
         </div>
            
                <div class="row pad">
                    <div class="col-lg-offset-3 col-sm-2 col-xs-3">
                        <form:label path="stock">Stock </form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:input path="stock" class="form-control input-sm" type="text"/>
                    </div>
                </div>
                
               
            
      
         <div class="row pad">
                    <div class="col-lg-offset-3 col-sm-2 col-xs-3">
                        <form:label path="image">Image </form:label>
                    </div>
                    
        <div class="col-sm-2 col-xs-3">
							
               <input type="file"  name="file" />
							</div>
							
							</div>
           
           
     
           
                <div class="row pad">
                    <div class="col-lg-offset-3 col-sm-2 col-xs-3">
                        <form:label path="Catid">Category </form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:select class="form-control" path="Catid"
								required="true">
                            	
                            <c:forEach items="${categoryList}" var="category">
									<form:option class="form-control" value="${category.categoryId}">${category.categoryName}</form:option>
								</c:forEach>
                       </form:select>
                    </div>
                </div>
    
            
                <div class="row pad">
                    <div class="col-lg-offset-3 col-sm-2 col-xs-3">
                        <form:label path="Supid">Supplier </form:label>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                        <form:select class="form-control" path="Supid"
								required="true">
								
								<c:forEach items="${supplierList}" var="supplier">
									<form:option class="form-control" value="${supplier.supplierid}">${supplier.supplierName}</form:option>
								</c:forEach>
							
                        </form:select>
                    </div>
                </div>
				<div align="center">		
				<button class= "btn btn-warning" type="submit" name="action" value="Add"><span class="glyphicon glyphicon-plus"></span></button>
				<button class= "btn btn-warning" type="submit" name="action" value="Edit"><span class="glyphicon glyphicon-edit"></span></button>
				<button class= "btn btn-warning" type="submit" name="action" value="Delete"><span class="glyphicon glyphicon-trash"></span></button>
				<button class= "btn btn-warning" type="submit" name="action" value="Search"><span class="glyphicon glyphicon-search"></span></button>
			</div></div>
			</div>
			</div>
     <br>      
     
     <div class="container">
     <div class="well">
            <table border="1">
	<th>ID</th>
	<th>Product name</th>
	<th>Product desc</th>
	<th>Product price</th>
    <th>Product stock</th>
   
    <th>Product image</th>
	
	<c:forEach items="${productList}" var="product">
		<tr>
			<td>${product.productid}</td>
			<td>${product.productName}</td>
			<td>${product.productDescription}</td>
			<td>${product.price}</td>
			<td>${product.stock}</td>
			
			<td><div class="thumbnail"> <img src="/Ecommerce/myImage/imageDisplay?id=${product.productid}" alt="" width="298" height="398" />
			
			</div></td>
		</tr>	
	</c:forEach>	
    </table>
    </div>
    </div>
        </form:form>
    </body>
</html>