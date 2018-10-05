<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>


<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WoWoo Platform</title>

	<script>
		window.menu = '${title}';
	</script>
	
    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <!-- Bootstrap Journal Theme (Bootswatch) -->
    <link href="${css}/bootstrap-journal-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/my-app.css" rel="stylesheet">

  </head>

  <body>
  	
  	<div class="wrapper">
  	
  		<!-- Navigation -->
	    <%@include file="./shared/navbar.jsp" %>
	
	    <!-- Page Content -->
	    <div class="content">
	    	<!-- Loading the home content -->
		    <c:if test="${userClickHome == true }">
		    	<%@include file="home.jsp" %>
		    </c:if>
		    
		    <!-- Load only when user click List Of Projects -->
		    <c:if test="${userClickListOfProjects == true }">
		    	<%@include file="listOfProjects.jsp" %>
		    </c:if>
		    
		    <!-- Load only when user click Wallet -->
		    <c:if test="${userClickWallet == true }">
		    	<%@include file="wallet.jsp" %>
		    </c:if>
		    
		    <!-- Load only when user click KYC Info -->
		    <c:if test="${userClickKycInfo == true }">
		    	<%@include file="kycInfo.jsp" %>
		    </c:if>
	    </div>
	   
	    <!-- Footer -->
	    <%@include file="./shared/footer.jsp" %>
	
	    <!-- Bootstrap core JavaScript -->
	    <script src="${js}/jquery.min.js"></script>
	    <script src="${js}/bootstrap.bundle.min.js"></script>
	    
	    <!-- Self code JavaScript -->
	    <script src="${js}/my-app.js"></script>
  	</div>

  </body>

</html>
