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

    <link rel="stylesheet" href="/css/knowStatus.css">
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
    <div class="container">
        <div class="row" style="text-align: center;">
            <div class="col-lg-12">
                <div class="card  shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="card-body">
                        
                        <h3 id="know">Know Status</h3>
                        <hr style="border: 0;
                        margin-left: 100px;
                        margin-right :100px;
                        height: 1px;
                        background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));">
                        <br>
                        <form action="/getDetails" method="get">
                            <div class="form-group row">
                                <label for="aid" class="col-lg-5 col-form-label" style="text-align: center;"><h5>Your Application ID</h5></label>
                                <div class="col-lg-7">
                                  <input type="text" class="form-control" id="aid" name="aid" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="type" class="col-lg-5 col-form-label" style="text-align: center;"><h5>Your Epass type</h5></label>
                                <div class="col-lg-7">
                                  <select class="form-control" id="type" name="type" required>
                                      <option value="">Select </option>
                                      <option value="domestic_from">Domestic pass from Telangana </option>
                                      <option value="domestic_to">Domestic pass to Telangana </option>
                                      <option value="online_registration_from">Online registration pass from Telangana </option>
                                      <option value="online_registration_to">Online registration pass to Telangana </option>
                                      <option value="employee_registration">Employee Registration </option>
                                      <option value="health_from">Emergency pass from Telengana </option>
                                      <option value="health_to">Emergency pass to Telengana </option>
                                    </select>
                                </div>
                            </div>
                        
                          
                            <br>
                            <button type="submit" id="getdetails" onClick="" class="btn btn-success getdetails">Get Details</button>
                            <br>
                            <br>
                        </form>

                    </div>
                    
                </div>

            </div>
        </div>
    </div>
    <script src="/js/knowStatus.js"></script>
    
</body>
</html>