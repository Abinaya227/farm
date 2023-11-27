<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<head>
<title>Login Page</title>
<meta name="viewport" content="width=device-width" initial-scale=1.0">
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
 background-image:url("v2.jpg");
            background-repeat:no-repeat;
            background-size: 1536px 750px;
}
* {box-sizing: border-box;}
h3{
color:#000000;
font-size:18px;
margin-left:460px;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #708090;
  border-radius: 12px;
  
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}input[type=email] {
  width: 100%;
  padding: 12px;
  border: 1px solid #708090;
  border-radius: 12px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
 box-shadow:4px 5px  10px green;
 border-radius:12px 12px;
 margin-left:350px;
 width:400px;
 height:500px;
   background-color: #98FB98;
  padding: 5px;
}
</style>
</head>
<body>

<h3><b>Contact Form</b></h3>

<div class="container">
  <form action="https://formspree.io/f/mlekkreo" method="post" id="my-form">
  <center><table>
  <tr><td>
    <label for="fname">First Name</label></td>
   <td> <input type="text" id="fname" name="firstname" placeholder="Your name.." required/></td></tr>
<tr><td>
    <label for="lname">Last Name</label></td>
   <td> <input type="text" id="lname" name="lastname" placeholder="Your last name.." required/></td></tr>
    
    <tr><td>
    <label for="email">Email</label></td>
    <td><input type="email" id="mail" name="email" placeholder="Your email" required/></td>
    
<tr><td>
    <label for="country">City</label></td>
   <td> <select id="country" name="city">
      <option value="Tirunelvli">Tirunelvli</option>
      <option value="Tuticorin">Tuticorin</option>
      <option value="Madurai">Madurai</option>
      <option value="Salem">Salem</option>
      <option value="Tenkasi">Tenkasi</option>
      <option value="others">others</option>
    </select></td></tr>
<tr><td>
    <label for="subject">Subject</label></td>
   <td> <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px" required></textarea></td>

   <tr><td> <input type="submit" value="Submit" onclick="check()"/></td>
   <td> <input type="submit" value="cancel" onclick="check1()"/></td></tr>
  
</div>
</table></center>
</form>
<script>
function check(){
	window.location.href="about.jsp";
}function check1(){
	window.location.href="index.html";
}
window.addEventListener("DOMContentLoaded", function () {
  // get the form elements defined in your form HTML above

  var form = document.getElementById("my-form");
  // var button = document.getElementById("my-form-button");
  var status = document.getElementById("status");

  // Success and Error functions for after the form is submitted

  function success() {
    form.reset();
    status.classList.add("success");
    status.innerHTML = "Thanks!";
  }

  function error() {
    status.classList.add("error");
    status.innerHTML = "Oops! There was a problem.";
  }

  // handle the form submission event

  form.addEventListener("submit", function (ev) {
    ev.preventDefault();
    var data = new FormData(form);
    ajax(form.method, form.action, data, success, error);
  });
});

// helper function for sending an AJAX request

function ajax(method, url, data, success, error) {
  var xhr = new XMLHttpRequest();
  xhr.open(method, url);
  xhr.setRequestHeader("Accept", "application/json");
  xhr.onreadystatechange = function () {
    if (xhr.readyState !== XMLHttpRequest.DONE) return;
    if (xhr.status === 200) {
      success(xhr.response, xhr.responseType);
    } else {
      error(xhr.status, xhr.response, xhr.responseType);
    }
  };
  xhr.send(data);
}
function check(){
	var Stored= document.getElementById("fname");
var Stored1= document.getElementById("lname");
var Stored2= document.getElementById("mail");
if(isFinite(Stored.value)){
alert("Enter the Valid Name!");
}
else if( Stored2.value!=""){
alert("Feedback Send sucessfully!!");
}}

</script>
</body>
</html>


