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
		
		<script>window.menu = '${title}';</script>
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
			
		<!-- Font Awesome Free CSS -->
		<link href="${css}/font-awesome.min.css" rel="stylesheet" >
			
		<!-- Custom styles for this template -->
		<link href="${css}/my-app.css" rel="stylesheet">
		    
		
  		
	</head>
	
	<body hold-transition skin-red sidebar-mini>
	  	
		<div class="wrapper">

			<!-- Navigation -->
			<%@include file="./shared/navbar.jsp" %>
		
		    <!-- Page Content -->
		    <div class="content">
		    	<div class="container content-container">
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
		    </div>
		   
		   <footer class="py-5 bg-dark" >
		   	<!-- Footer -->
			<%@include file="./shared/footer.jsp" %>
		   </footer>
	
	  	</div>

	</body>

</html>
