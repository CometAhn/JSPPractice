<nav class="navbar navbar-expand navbar-dark bg-dark">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="container">
		<div class="navbar-headr">
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
			<a class="navbar-brand" href="./products.jsp">Product List</a>
			<a class="navbar-brand" href="./addproduct.jsp">Add Product</a>
			<a class="navbar-brand" href="./cart.jsp">Cart</a>
			<a class="navbar-brand" href="<c:url value="/boardlistaction.do?pagenum=1"/>">Board</a>
		</div>
		<div>
		<ul class="navbar-navbar mr-auto">
			<li class="nav-item"><a class="nav-link" href="./products.jsp">Product List</a></li>
			<li class="nav-item"><a class="nav-link" href="./editproduct.jsp?edit=update">Edit product</a></li>
		</ul>
		</div>
	</div>
</nav>