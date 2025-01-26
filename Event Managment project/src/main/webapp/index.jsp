<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index.jsp</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}

nav {
	display: -webkit-flex;
	display: -moz-flex;
	display: -ms-flex;
	display: -o-flex;
	display: flex;
	justify-content: space-around;
	align-items: center;
	min-height: 10vh;
	background-color: transparent;
}
	
.logo {
	color: #141733;
	text-transform: capitalize;
	font-size: 24px;
	cursor: pointer;
	font-weight: 900;
	letter-spacing: 1px;
	text-shadow: 2px 2px 6px white;
}

.menu {
	display: -webkit-flex;
	display: -moz-flex;
	display: -ms-flex;
	display: -o-flex;
	display: flex;
	justify-content: space-around;
	width: 30%;
	/* text-shadow: 2px 2px 6px white; */
}

.menu li {
	list-style: none;
}

.menu a {
	color: white;
	text-decoration: none;
	font-size: 15px;
	padding: 30px;
	font-weight: 600;
}

.menu a:hover {
	background-color:white;
	border-radius:10px;
	color:black;
	transition: opacity 0.1s ease, transform 0.1s ease;
}

.bar {
	display: none;
	cursor: pointer;
}

.bar div {
	width: 25px;
	height: 3px;
	background-color: #ff6138;
	margin: 5px;
	transition: all .5s ease;
}

@media screen and (max-width:1024px) {
	.menu {
		width: 60%;
	}
	.menu a {
		color: #fff;
	}
}

@media screen and (max-width:768px) {
	body {
		overflow-x: hidden;
	}
	.menu {
		position: absolute;
		right: -100%;
		height: 90vh;
		top: 10vh;
		background-color: #000;
		display: flex;
		flex-direction: column;
		align-items: center;
		width: 100%;
		transform: translateX(100%);
		transition: transform 0.5s ease-in-out;
		opacity: .9;
	}
	.bar {
		display: block;
	}
	.menu a {
		color: #fff;
	}
}

.nav-active {
	transform: translateX(-100%);
}

.bar-active .bar-1 {
	transform: rotate(-45deg) translate(-5px, 6px);
}

.bar-active .bar-2 {
	opacity: 0;
}

.bar-active .bar-3 {
	transform: rotate(45deg) translate(-5px, -6px);
}

.banner {
	background:
		url(bg2.jpeg);
	height: 100vh;
	background-size: cover;
	background-position: center;
} 

 .fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.4s;
	animation-name: fade;
	animation-duration: 1.4s;
} 

@
-webkit-keyframes fade {
	from {opacity: .5
}

to {
	opacity: 2
}

}
@
keyframes fade {
	from {opacity: .5
}

to {
	opacity: 2
}

}
.content h2 {
	color: #fff;
	font-size: 60px;
	font-weight: 900;
	text-shadow: 2px 2px 6px black;
}

.content p {
	width: 50%;
	color: #fff;
	line-height: 2;
	margin: auto;
	text-shadow: 2px 2px 6px black;
}

.btn a {
	text-decoration: none;
	background: #ff6138;
	padding: 15px 10px;
	display: inline-block;
	color: #fff;
	margin-top: 15px;
	border-radius: 50px;
	width: 130px;
	text-align: center;
}

.wrapper {
	width: 1060px;
	margin: auto;
	padding-top: 12%;
}

.content {
	text-align: center;
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
	.wrapper {
		width: 75%;
		padding-top: 26%;
	}
	.content {
		text-align: center;
	}
	.content h2 {
		font-size: 60px;
	}
	.content p {
		width: 100%;
	}
}

@media screen and (max-width: 767px) {
	.banner {
		background-position: 60%;
	}
	.wrapper {
		width: 75%;
		padding-top: 26%;
	}
	.content h2 {
		font-size: 25px;
	}
	.content p {
		width: 100%;
	}
	.btn a {
		padding: 9px 4px;
		width: 105px;
	}
}
}
</style>
</head>
<body class="container">
	<section class="banner fade">
		<header style="background-color:black">
			<nav>
				<div class="logo">
					<img alt="no image" src="Add a heading-Photoroom.png" height="70px" width="90px">
				</div>
				<div class="navigations">
					<ul class="menu">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="service.jsp">Services</a></li>
						<li><a href="gallery.jsp">Gallery</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="contact.jsp">Contact</a></li>
						<li><a href="login.jsp" id="login">Login</a></li>
						<% if (session.getAttribute("uname") != null) {%>
						<li><a href="register?logout=yes">Logout</a></li>
						<li><i class="fa fa-user-circle" aria-hidden="true"></i><%=session.getAttribute("uname")%></li>
						<%}%>
					</ul>
				</div>
				<div class="bar">
					<div class="bar-1"></div>
					<div class="bar-2"></div>
					<div class="bar-3"></div>
				</div>
			</nav>
		</header>
		<div class="wrapper">
			<div class="content">
				<p>Trust Us To Organize</p>
				<h2>Welcome to MB Events</h2>
			</div>
		</div>
	</section>
	<script>
        const X = () => {
            const menu = document.querySelector('.bar');
            const nav = document.querySelector('.menu');
            
            menu.addEventListener('click', () => {
               menu.classList.toggle('bar-active');
                nav.classList.toggle('nav-active');
            });
        }
        X();
        
        function changeBg() {
			
        	const images = [
        			'url("banner1.jpeg")',
        			//'url("conference.jpeg")',
        			'url("banner2.jpeg")', 
        			
        	]
        	const section = document.querySelector('section')
        	const bg=images[Math.floor(Math.random()* images.length)];
        	section.style.backgroundImage=bg;
		}
        setInterval(changeBg,2000);
    </script>
</body>
</html>