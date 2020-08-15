<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">       	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emergency Registration Type</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
          <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="/css/emergencyRegistrationToOrFrom.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#"><span class="logo">Covid-19 e-pass</span> </a>
            <form action="/index3">
            <button type="submit" id="getdetails" style="margin-right: 0px;" class="btn btn-success getdetails">Go Home</button>
                        </form>
        </div>
    </nav>

    <h1 style="text-align: center;">Select the type of Emergency(Health) Registration Pass</h1>
    <br>
    <div class="container">
        
        <div class="row">
            <div class="col-lg-5">
                <form action="/otpverifysix">
                    <button type="submit" id="b1" class="btn btn-outline-info btn-lg" style="border-radius: 50%;"><h4>Telangana <br>to<br>Other states</h4></button>
                </form>
            </div>
            <div class="col-lg-2">
            <h2 id="or">Or</h2>
            </div>
            <div class="col-lg-5">
                <form action="/otpverifyseven">
                    
                    <button type="submit" id="b2" class="btn btn-outline-info btn-lg" style="border-radius: 50%;"><h4>Other states <br>to<br> Telangana</h4></button>

                </form>
            </div>
        </div>
    </div>
    
</body>
</html>