
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<%@ page isELIgnored="false" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submitted</title>
    <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="css/success.css">
</head>
<body>
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
    
    <div class="card shadow-lg p-3 mb-5 bg-white rounded">
        
        <!-- <div style="margin: auto;"> -->
    <div class="card-body">
        
    
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
                    <lottie-player src="https://assets7.lottiefiles.com/private_files/lf30_tQuT8u.json"  background="transparent"  speed="1"  style="width: 400px; height: 400px;"  loop  autoplay></lottie-player>

                </div>
                <div class="col-lg-7" style="margin: auto; text-align:center">
                    <h2>Your Application Form Submitted Successfully<br>Your Application Number is ${aid}<br>Your can know your application status in "Know Status" page</h2><br>
                    <a type="button" id="get-details" href="/remindme/otp/${aid}" class="btn btn-success getdetails">Send Me Application ID and Go Home</a>
                            
                </div>
            </div>

        </div>
            </div>
       
    </div>

</body>
</html>