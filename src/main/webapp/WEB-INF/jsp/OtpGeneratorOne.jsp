<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">       	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Moblie Number Verification</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
          <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="/css/otpGeneratorOne.css">
    <style type="text/css">
    
    </style>
    
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
    <div class="container" id="otpcard">
        <div class="row" style="text-align: center;">
            <div class="col-lg-12">
                <div class="card shadow p-3 mb-5 bg-white rounded">
                    <div class="card-body">
                        <h3>Mobile Number Verification</h3>
                        <hr style="border: 0; margin-left: 100px; margin-right :100px;
                        height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));">
                        <br>
                        <form action="submitted">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label for="appid">Enter your Mobile number to get verified</label>
                                        <input id="mobile" type="text" name="mobilenumber" class="form-control" required>
                                        
                                    </div>
                                    <div class="col-lg-6" >
                                        <label for="appid">Enter your OTP sent to your number</label>
                                        <input id="appid" type="text" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                             <br>
                            <br>
                            <button type="button" id="get-details" onclick="submitOtp()" class="btn btn-success getdetails">Send OTP</button>
                            
                 
                            <button type="button" id="verifydetails" onclick="verifyOtp()" class="btn btn-success getdetails">Verify OTP</button>
                            <br>
                            <br>
                            
                        </form>

                    </div>
                    
                </div>

            </div>
        </div>
    </div>

    <script src="/js/OtpGeneratorOne.js"></script>
    
</body>
</html>