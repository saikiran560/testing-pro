<html>
<head>
<title>web page</title>
<style>
nav{
  
  background: #1b1b1b;
  width: 100%;
  padding:4px;
  
}
.head h2{
  text-decoration: none;
  margin-left:30px;
  display:flex;
  color: salmon;
  font-size: 25px;
  font-weight: 600;
  
}
.menu h1{
  text-decoration: none;
  color: black;
  font-size: 35px;
  font-weight: 600;
  }

.sign{

  padding-top:100px
  position: center;
  width: 400px;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 30px;
  border-radius: 10px;
  backdrop-filter:blur(10px);
  margin-right:50px;
  margin-top:100px;
  
 }
 .logo{
 border-top-left-radius:10px;
 border-top-right-radius:10px;
 margin-top:25px;
 }
 
 .marquee{
    font-size: 20px;
    animation:mymove 0.5s infinite;
    backdrop-filter: blur(20px);
    
}

@keyframes mymove {  
 0% { color:red; left:0px; top:0px;}
 25% { color:blue; left:200px; top:0px;}
 50% { color:yellow; left:200px; top:200px;}
 75% { color:green; left:0px; top:200px;}
 100% { color: grey ; left:0px; top:0px;}
}



 /* Style for the overlay background */
        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
			backdrop-filter:blur(10px);
            z-index: 1;
        }
        
        /* Style for the popup registration form */
        .popup-form {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
			
            transform: translate(-70%, -70%);
            background-color:Chocolate;
			align-items: center;
			justify-content: center;
            padding: 60px;
            z-index: 5;	
        }
		
		
		
        
        /* Style for the close button */
        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }

</style>
</head>
<body style="background-image:url('sup.jpg');background-size:cover;">
<nav>
<div class="menu">
 <h1 style="color:grey;">Amazing-photography</h1>
 </nav>
 <br>
 </div>
 <div style="display:flex">
 
   <div > 
    <img src="log.jpg" class="logo" height="70" width="70">
	</div>
	
	<div class="head">
	<h2 >Witness the beauty in Photography<h2>
	
	
	</div><br>
	<div style="padding-right:300px;padding-left:0px;padding-top:100px;float:left;">
	<marquee scrolldelay="100" align="justify">
	<h3 class = "marquee" >hurry up! create your account.<h3>
	</marquee>
	
	</div>
	
 
 <div class="sign" style="padding-top:40px">
  

   <form onsubmit="return validateLogin(),return validateSignup()">
    <label for="username" style="color:LavenderBlush">Username:</label><br><br>
    <input type="text" id="loginUsername" name="username"><br><br>
    <label for="pwd" style="color:LavenderBlush">Password:</label><br><br>
    <input type="password" id="loginPwd" name="pwd"><br><br>
	<button id="showPopupBtn" value="Register" style="color:Crimson;background:lightblue;border-radius: 5px;">Register/signup</button>
    <button type="button" onclick="validateLogin()" style="color:Crimson;background:lightblue;border-radius: 5px;">Login</button><br><br>
	



	</div>
	   <div class="overlay" id="overlay"></div>

    <!-- Popup registration form -->
    <div class="popup-form" id="popupForm">
        <span class="close-btn" onclick="closePopupForm()">&times;</span>
        <h2>Registration Form</h2>
        <div class="for">
		<form>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="email">Email-id:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <input type="submit" value="Register">
        </form>
		</div>
    </div>

    <script>
	function validateLogin() {
    var enteredUsername = document.getElementById("loginUsername").value;
    var enteredPassword = document.getElementById("loginPwd").value;

    if (enteredUsername === "" || enteredPassword === "") {
        alert("Please enter both username and password.");
        return false;
    }

    // Simulate fixed credentials
    var validUsername = "kiran";
    var validPassword = "12345";

    // Check if entered credentials match fixed credentials
    if (enteredUsername === validUsername && enteredPassword === validPassword) {
        // Simulating a successful login
        alert('Login successful! Redirecting to the home page.');
        // Redirect to the home page (replace 'home.html' with the actual URL)
        window.location.href = 'new 12.html';
        return true;
    } else {
        // Simulating a failed login
        alert('Login failed. Please check your credentials.');
        return false;
    }
}
	
	

	
	function validateSignup() {
    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    if (username === "kiran" || email === "kiran@gamil.com" || password === "1234") {
        alert("successfully signup.....");
        return false;
    }
	else{
	alert("Please fill in all fields.");
	}

    // You can add more advanced validations here if needed

    // If everything is valid, proceed with the registration
    alert('Registration successful!');
    return true;
}
	
	
	
	
	
	
	
	
        // Function to show the popup registration form
        function showPopupForm() {
            document.getElementById("overlay").style.display = "block";
            document.getElementById("popupForm").style.display = "block";
        }

        // Function to close the popup registration form
        function closePopupForm() {
            document.getElementById("overlay").style.display = "none";
            document.getElementById("popupForm").style.display = "none";
        }

        // Attach a click event listener to the "Register" button
        document.getElementById("showPopupBtn").addEventListener("click", showPopupForm);
    </script>
 
 
 </body>