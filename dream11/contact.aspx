<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!doctype html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Help in dream11</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/mobile.css">
	<script src="js/mobile.js" type="text/javascript"></script>

</head>
<body>
	<div id="page">
		<div id="header">
			<div>
              				<a href="main.aspx" class="logo"></a>
				<ul id="navigation">
					<li> 
						<a href="main.aspx">Home</a>
					</li>
					
					<li class="menu">
						<a href="register.aspx">REGISTER</a>
						
					</li>
					<li class="menu">
						<a href="login.aspx">LOGIN</a>
						
					</li>
					<li class="selected">
						<a href="contact.aspx">Contact</a>
					</li>
				</ul>
			</div>
		</div>
		<div id="body">
			<div class="header">
				<div class="contact">
					<h1>Contact</h1>
					<h2>DO NOT HESITATE TO CONTACT US</h2>
					<form action="main.aspx">
						<input type="text" name="Name" value="Name" onblur="this.value=!this.value?'Name':this.value;" onfocus="this.select()" onclick="this.value='';">
						<input type="text" name="Email Address" value="Email Address" onblur="this.value=!this.value?'Email Address':this.value;" onfocus="this.select()" onclick="this.value='';">
						<input type="text" name="Subject" value="Subject" onblur="this.value=!this.value?'Subject':this.value;" onfocus="this.select()" onclick="this.value='';">
						<textarea name="message" cols="50" rows="7">Message</textarea>
						<input type="submit" value="Send" id="submit">
					</form>
				</div>
			</div>
		</div>
		<div id="footer">
			<div class="connect">
				<div>
					<h1>HOPE YOU LIKE OUR WEBSITE</h1>
					<div>
				
					</div>
				</div>
			</div>
			<div class="footnote">
				<div>
					<p>&copy; ALL RIGHTS RESERVED</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>