<cfoutput>
<!doctype html>
<html lang="en">
<head>
	<!--- Metatags --->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">

	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#" />

	<!---
		CSS
		- Bootstrap
		- Alpine.js
	--->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/includes/css/app.css">
	<style>
		.text-blue { color:##379BC1; }
	</style>

	<!--- Title --->
	<title>Student Registration Portal</title>
</head>
<body
	data-spy="scroll"
	data-target=".navbar"
	data-offset="50"
	style="padding-top: 60px"
	class="d-flex flex-column h-100"
>
	<!---Top NavBar --->
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container-fluid">
				<!---Brand --->
				<a class="navbar-brand" href="#event.buildLink( 'main' )#">
					<strong>School Administration Portal</strong>
				</a>

				<!--- Mobile Toggler --->
				<button
					class="navbar-toggler"
					type="button"
					data-bs-toggle="collapse"
					data-bs-target="##navbarSupportedContent"
					aria-controls="navbarSupportedContent"
					aria-expanded="false"
					aria-label="Toggle navigation"
				>
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">

					<!---Links --->
					<ul class="navbar-nav ms-5 mb-2 mb-lg-0">
						<li class="nav-item">
							<a
								class="nav-link"
								href="#event.buildLink( "links" )#"
								role="button"
							>
								Links  <b class="caret"></b>
							</a>
						</li>
					</ul>

					<!--- Learn --->
					<ul class="navbar-nav mb-2 mb-lg-0">
						<li class="nav-item">
							<a
								class="nav-link"
								href="#event.buildLink( "registration/create" )#"
								role="button"
							>
								Registration  <b class="caret"></b>
							</a>
						</li>
					</ul>

					<!--- Support --->
					<ul class="navbar-nav mb-2 mb-lg-0">
						<li class="nav-item">
							<a
								class="nav-link"
								href="#event.buildLink( "about" )#"
								role="button"
							>
								About  <b class="caret"></b>
							</a>
						</li>
					</ul>



				</div>
			</div>
		</nav>
	</header>

	<!---Container And Views --->
	<main class="flex-shrink-0">

			<cfif flash.exists( "notice" )>
				<div class = "alert alert-#flash.get( "notice" ).type#" role = "alert">
					#flash.get( "notice" ).message#
				</div>
			</cfif>


			<div class="container">#renderView()#</div>






	</main>

	<!--- Footer --->
	<footer class="w-100 bottom-0 position-fixed border-top py-3 mt-5 bg-light">
		<div class="container">
			<p class="float-end">
				<a href="##" class="btn btn-info rounded-circle shadow" role="button">
					<i class="bi bi-arrow-bar-up"></i> <span class="visually-hidden">Top</span>
				</a>
			</p>
		</div>
	</footer>

	<!---
		JavaScript
		- Bootstrap
		- Alpine.js
	--->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
</body>
</html>
</cfoutput>
