
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- google fonts -->
      <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
    <!-- bootstrap link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <link rel="stylesheet" href="/css/domesticFromGetDetails.css">
    <title>Know Status</title>
</head>
<body>
<!-- go home -->
    <!-- <button type="button" class="btn btn-outline-success">Success</button> -->
<!-- nav bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#"><span class="logo">Covid-19 e-pass</span> </a>
            <form action="/">
            <button type="submit" id="getdetails" style="margin-right: 0px;" class="btn btn-success getdetails">Go Home</button>
                        </form>
        </div>
    </nav>
    <div class="head">
        <br><br><br><br><br><br><br><br><br><br>
    </div>
    <div class="card  shadow-lg p-3 mb-5 bg-white rounded">
        <div class="card-body">
        	<div class="alert alert-danger" role="alert">
  				<h2>No Application found!</h2>
  				Application with application id your entered is not found in our Database.
			</div>
        </div>
    </div>
        
    <script src="/js/domesticFromGetDetails.js"></script>
    
</body>
</html>