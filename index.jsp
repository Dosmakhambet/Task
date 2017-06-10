<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Client</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
	 <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
	 <script src = "jquery-3.2.1.js"></script>
	 <style type = "text/css">
		.correct{
			border: 1px solid green;
		}
		.error{
			border: 1px solid red;
		}
	 </style>
	<script type="text/javascript">
		var shablon = /^[a-z0-9_-]+@[a-z]+\.([a-z]{1,6}\.)?[a-z]{2,6}$/i;
		$(document).ready(function(){
			$("#exampleInputEmail2").blur(function(){
                            
				if($("#exampleInputEmail2").val() != ''){
					if($("#exampleInputEmail2").val().search(shablon)==0){
						$("#button").attr('disabled',false);
                                                $("#err").text('');
						$("#exampleInputEmail2").removeClass("error").addClass("correct");
					}else{
						$("#button").attr('disabled',true);
						$("#err").text('Not correct');
						$("#exampleInputEmail2").addClass("error");
					}
				}else{
					$("#err").text('Field must not be empty');
					$("#button").attr('disabled',true);
					$("#exampleInputEmail2").addClass("error");
				}
			});
		});
	</script>
         <script type="text/javascript">
                    $(function(){
                        $("#button").click(function(){
                            $("#link").show();
                            
                        });
                    });
             </script>
 </head>
  <body>
  <div class = "container">
	<div class = "row">
		<div class = "col-lg-offset-3 col-lg-6">
                    <form class="form">
			  <div class="form-group">
				<label for="exampleInputName2">Name</label>
				<input type="text" class="form-control" id="exampleInputName2" placeholder="Your name">
			  </div>
			  <div class="form-group">
				<label for="exampleInputEmail2">Email</label>
				<input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com"><p><span id = "err"></span></p>
			  </div>
			  <button type="button" class="btn btn-default" id = "button"  disabled>Send invitation</button>
                          <a href = "newjsp.html" id="link" style="display: none;">Click me</a>
                </form>
                    
		</div>
	</div>
  </div>
  </body>
</html>