<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<div id="navbar">    
  		<nav class="navbar navbar-default navbar-static-top" role="navigation">
            <div class="collapse navbar-collapse" id="navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li id="homemenu"><a href="${pageContext.request.contextPath}/home">Home</a></li>
		    		<li id="materialMenu"><a href="${pageContext.request.contextPath}/material">Material </a></li>
		    		<li id="inventoryMenu"><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
		    		<li id="orderManagementMenu"><a href="${pageContext.request.contextPath}/order">Order Management </a></li>
		    		<li id="recipeManagementMenu"><a href="${pageContext.request.contextPath}/recipe">Recipe Management </a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li id="areaManagementMenu"><a href="${pageContext.request.contextPath}/areaManagement">Area Management </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
	</div>
	<%-- <div class="leftMenubar col-sm-2">	
		<ul class="nav nav-pills nav-stacked" >
		    <li id="homemenu"><a href="${pageContext.request.contextPath}/home">Home</a></li>
		    <li id="materialMenu"><a href="${pageContext.request.contextPath}/material">Material </a></li>
		    <li id="inventoryMenu"><a href="${pageContext.request.contextPath}/inventory">Inventory </a></li>
		    <li id="orderManagementMenu"><a href="${pageContext.request.contextPath}/order">Order Management </a></li>
		    <li id="areaManagementMenu"><a href="${pageContext.request.contextPath}/areaManagement">Area Management </a></li>
		</ul>
	</div> --%>
	
	<%String selecteMenu =  request.getParameter("selectMenuItem");%>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var selecteMenu = "<%=selecteMenu%>";
			//alert("menu Name : " + selecteMenu);
			setActiveMenu(selecteMenu);
		});
	</script>
	
</body>
</html>	
