<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">       	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Domestic Passanger Enrollment Type</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
          <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="/css/domesticToOrFrom.css">
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

    <h1 style="text-align: center;">Select the type of Domestic Pass</h1>
    <br><br>
    <div class="container">
        
        <div class="row">
            <div class="col-lg-5">
                <form action="/otpverifyone">
                    <button type="submit"  class="example_e" style="border-radius: 5%;"><h4 id ="t">Telangana <br>to<br>Other states</h4></button>
                </form>
            </div>
            <div class="col-lg-2">
            <h2 id="or">Or</h2>
            </div>
            <div class="col-lg-5">
                <form action="/otpverifytwo">
                    
                    <button type="submit" class="example_e" style="border-radius: 5%;"><h4  id ="t">Other states <br>to<br> Telangana</h4></button>

                </form>
            </div>
        </div>
    </div>
    
</body>
</html>