$(document).ready(function() {
   //Animate the login button when clicked
   $("#login_form").hide();

   $("#login_button").click(function () {
       $("#login_form").toggle("slow");
   });
   
 });