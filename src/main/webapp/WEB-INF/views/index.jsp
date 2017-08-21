<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
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
    <nav class="navbar navbar-inverse show">
        <div class="container">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="#"><em>speedsters</em> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">
                
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true" href="#"><em>BIKES</em><span class="caret"></span></a>
                         <ul class="dropdown-menu" role="menu">
                        <c:forEach items="${categoryList}" var="category">
                        <li role="presentation"><a href="product${category.categoryId}">${category.categoryName}</a></li>
                           	
                            <!-- <!-- <li role="presentation"><a href="#">KTM </a></li>
                            <li role="presentation"><a href="#">Royal Enfield</a></li>
                            <li role="presentation"><a href="#">Harley Davidson</a></li>
                            <li role="presentation"><a href="#">Yamaha </a></li>
                            <li role="presentation"><a href="#">Ducati </a></li>
                            <li role="presentation"><a href="#">Bajaj </a></li>
                         -->
                         </c:forEach>
                         </ul>
                         
                    </li>
                    <sec:authorize access="!isAuthenticated()">
                    <li role="presentation"><a href="login">Login </a></li>
                    <li role="presentation"><a href="register">Register </a></li>
                     </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                 <li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
                  </sec:authorize>
                    <li role="presentation"><a href="cart">cart</a></li>
                   <%--  
                    <sec:authorize access="!isAuthenticated()">
                    <li role="presentation"><a href="login.html">Login </a></li>
                    <li class="active" role="presentation"><a href="register.html">Register </a></li>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                    <li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
                    </sec:authorize>
                    <li role="presentation"><a href="#">About Us</a></li> --%>
                </ul>
            </div>
        </div>
    </nav>
    <div></div>
    <div class="carousel slide" data-ride="carousel" data-interval="false" id="carousel-1">
        <div class="carousel-inner" role="listbox">
            <div class="item active"><img src="<c:url value="/resources/assets/img/10805233813_19d7a191ab_o.jpg"/>" alt="Slide Image"></div>
            <div class="item"><img src="<c:url value="/resources/assets/img/moto_harley_harley_davidson_883_74175_1920x1080.jpg"/>" alt="Slide Image"></div>
            <div class="item"><img src="<c:url value="/resources/assets/img/ducati-diavel-wallpaper-1.jpg"/>" alt="Slide Image"></div>
            <div class="item"><img src="<c:url value="/resources/assets/img/1920x1080_yamaha-yzf-r3-2015.jpg"/>" alt="Slide Image"></div>
        </div>
        <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a>
            <a class="right carousel-control" href="#carousel-1" role="button" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a>
        </div>
        <ol class="carousel-indicators">
            <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-1" data-slide-to="1"></li>
            <li data-target="#carousel-1" data-slide-to="2"></li>
            <li data-target="#carousel-1" data-slide-to="3"></li>
        </ol>
    </div>
    <div class="jumbotron">
        <h1>You don't know how good you are until you actually get out on a bike and get riding.</h1>
        <p>SpeedSters is there for you to help what you actually need !!! We have a Wide Range of Bikes . Grab it and ride it like you Stole it .</p>
        <p><a class="btn btn-default" role="button" href="#">Learn more</a></p>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/item1.jpg"/>">
                <div class="caption">
                    <h3>Royal Enfield</h3>
                    <p>The <strong>Royal Enfield Bullet</strong> was originally a British overhead valve single cylinder four-stroke&nbsp;<a href="https://en.wikipedia.org/wiki/Motorcycle">motorcycle</a> made by&nbsp;<a href="https://en.wikipedia.org/wiki/Royal_Enfield">Royal Enfield</a>                        in&nbsp;<a href="https://en.wikipedia.org/wiki/Redditch">Redditch</a>, <a href="https://en.wikipedia.org/wiki/Worcestershire">Worcestershire</a>, now produced by&nbsp;<a href="https://en.wikipedia.org/wiki/Royal_Enfield_Motors">Royal Enfield Motors</a>,
                        the successor to the British company, at&nbsp;<a href="https://en.wikipedia.org/wiki/Chennai">Chennai</a>, <a href="https://en.wikipedia.org/wiki/Tamil_Nadu">Tamil Nadu</a>, in&nbsp;<a href="https://en.wikipedia.org/wiki/India">India</a>.
                        </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/item2.jpg"/>">
                <div class="caption">
                    <h3>Harley Davidson</h3>
                    <p> <strong>Harley-Davidson, Inc.</strong> (<strong>H-D</strong>), or&nbsp;<strong>Harley</strong>, is an American&nbsp;<a href="https://en.wikipedia.org/wiki/Motorcycle">motorcycle</a> manufacturer, founded in&nbsp;<a href="https://en.wikipedia.org/wiki/Milwaukee">Milwaukee</a>,
                        <a href="https://en.wikipedia.org/wiki/Wisconsin">Wisconsin</a> in 1903.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/item3.jpg"/>">
                <div class="caption">
                    <h3>KTM </h3>
                    <p><strong>KTM AG</strong> (the former&nbsp;<strong>KTM Sportmotorcycle AG</strong> is an&nbsp;<a href="https://en.wikipedia.org/wiki/Austria">Austrian</a> motorcycle and sports car manufacturer owned by KTM Industries AG and&nbsp;
                        <a
                        href="https://en.wikipedia.org/wiki/Bajaj_Auto">Bajaj Auto</a>. It was formed in 1992 but traces its foundation to as early as 1934. Today, KTM AG is the parent company of the KTM Group. </p>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <footer>
                <div class="row">
                    <div class="col-md-4 col-sm-6 footer-navigation">
                        <h3><a href="#">SpeedSters </a></h3>
                        <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Blog</a><strong> · </strong><a href="#">Pricing</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">Faq</a><strong> · </strong><a href="#">Contact</a></p>
                        <p
                        class="company-name">Speedsters© 2015 </p>
                    </div>
                    <div class="col-md-4 col-sm-6 footer-contacts">
                        <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                            <p>kukatpally Hyderabad </p>
                        </div>
                        <div><i class="fa fa-phone footer-contacts-icon"></i>
                            <p class="footer-center-info email text-left"> +919704995242</p>
                        </div>
                        <div><i class="fa fa-envelope footer-contacts-icon"></i>
                            <p> <a href="#" target="_blank">sai.mahesh246@gmail.com</a></p>
                        </div>
                    </div>
                    <div class="clearfix visible-sm-block"></div>
                    <div class="col-md-4 footer-about">
                        <h4>About the company</h4>
                        <p> Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
                        </p>
                        <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>