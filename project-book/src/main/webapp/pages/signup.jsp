<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>

<%-- <% /* STEP1 */
String title="";
if((String)request.getAttribute("TITLE") != null)
	 title = (String)request.getAttribute("TITLE");


%> --%>
<body>


	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form method="post" action="signup">
				<div class="form-group">
						<label for="exampleInputEmail1">Username</label> <input
							type="text" name="username" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp"> 
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" name="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp"> <small id="emailHelp"
							class="form-text text-muted">We'll never share your email
							with anyone else.</small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password"  name="password" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Mobile</label> <input
							type="text"  name="mobile" class="form-control" id="exampleInputPassword1">
					</div>
					
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>


			</div>
		</div>
	</div>











	<%-- I am Signup Page
<h1><%= title %></h1>
<h2>${USERNAME}</h2>   --%>
	<!-- alternate to STEP1 -->
</body>
</html>