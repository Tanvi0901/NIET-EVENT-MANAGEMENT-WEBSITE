<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Sign Up </title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css" rel="stylesheet">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"></script>
    <link rel="stylesheet" href="admin_signup.css">
    <script src="admin_signup.js"></script>
</head>
<body>
<div id="login-box">
    <div class="left">
      <h1>Sign up</h1>
      <form  method="POST" action="admin_signup" onSubmit="return checkPassword(this)">
        <div class="error-text"></div>
        
        <input type="email" name="email" placeholder="E-mail" pattern="(?=.*@niet.co.in).{8,}" title="Must contain @niet.co.in">
        <input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Password">
        <input type="password" name="password2" placeholder="Confirm password" />
        
        <input type="submit" name="signup_submit" value="Sign up" />
      </form>
      
    </div>
    
    <div class="right">
      <img src="https://media.giphy.com/media/gHPOb1fEVWu5GHL2tk/giphy.gif" alt="" style="height: 300px; width: 250px;">
    </div>
    <!-- <div class="or">OR</div> -->
  </div>
</body>
</html>