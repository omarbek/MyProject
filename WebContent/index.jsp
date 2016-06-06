<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>My Project</title>
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#bttHello').click(function(){
				$.ajax({
					type:'POST',
					url:'AjaxController',
					success: function(result){
						$('#result1').html(result);
					}
				});
			});
		});
	</script>
	
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="fonts/glyphicons-halflings-regular.ttf" rel="stylesheet">
    <link href="blog.css" rel="stylesheet">
    <script type="text/javascript">


    </script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
     <div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
          
          <a class="navbar-brand active" href="index.jsp">Home</a>


        </nav>
      </div>
    </div>
    <br>
    <div class="container">
    	<div style="text-align:center">
	    	<form>
				<input type="button" value="Click this" id="bttHello" class="btn btn-primary">
				<br>
				<h1><span id="result1"></span></h1>
			</form>
		</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>