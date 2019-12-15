<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- create var using spring to read static file -->
    <spring:url var="css" value="/resources/css/"/>
    <spring:url var="js" value="/resources/js/"/>
    <spring:url var="images" value="/resources/images/"/>
     <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
    
    <title>${title}</title>
    <script type="text/javascript">
      window.menu = '${title}';
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="${css}/shop-homepage.css" rel="stylesheet">

</head>

<body>
  <div class="wrapper">
    <!-- navbar section -->
    <%@include file="./shared/navbar.jsp" %>
		  <div class="content">
			   <!--  load home.jsp page when user click on home page -->
			    <c:if test="${userClickHomePage == true }">
			     <%@include file="home.jsp" %>
			   </c:if>
			   
			   <!--  load about.jsp page when user click on about page -->
			    <c:if test="${userClickAboutPage == true }">
			     <%@include file="about.jsp" %>
			   </c:if>
			   
			   <!--  load contact.jsp page when user click on contact page -->
			    <c:if test="${userClickContactPage == true }">
			     <%@include file="contact.jsp" %>
			   </c:if> 
			    
			    <!--  load contact.jsp page when user click on contact page -->
			    <c:if test="${userClickViewProductPage == true }">
			     <%@include file="viewProducts.jsp" %>
			   </c:if> 
		    </div>
   </div> 
     <!-- footer section -->
     <%@include file="./shared/footer.jsp" %>

    <!-- JavaScript -->
    <script src="${js}/jquery-1.10.2.js"></script>
    <script src="${js}/bootstrap.js"></script>

</body>

</html>
