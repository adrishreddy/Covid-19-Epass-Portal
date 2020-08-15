<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">       	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emergency Registration for pass to other states</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
          <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="/css/emergencyRegistrationToTelengana.css">
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

    <h1 style="text-align: center;">Emergency Registration for pass to Telengana</h1>
    <br>
    <div class="container">
        <div class="card shadow p-3 mb-5 bg-white rounded">
            <div class="card-body">
                
                <div>
                    <form action="/success7" method="post">
                        <div class="alert alert-dark" style ="background: rgb(204, 203, 235);" role="alert">
                            <h6>Personal Information</h6>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="name">Name <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="name" name="name" required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="age">Age <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="age" id="age" required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="phno">Mobile Number <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="mno" id="phno" required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="gender">Gender <span class="text-danger">*</span></label>
                                    <select class="form-control" id="gender" name="gender" required>
                                        <option value="">Select</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">Others</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="adno">Aadhaar no <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="adno" id="adno" required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="email">Email address <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                            </div>
                            
                        </div>
                        <div class="alert alert-dark" style ="background: rgb(204, 203, 235);" role="alert">
                            <h6>Other Information</h6>
                        </div>
                        <div class="row">
                            
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="purpose_of_travel">Purpose of Travel <span class="text-danger">*</span></label>
                                    <select class="form-control" id="purpose_of_travel" name="purposeOfTravel" required>
                                        <option value="">Select</option>
                                        <option value="health issues">Health issues</option>
                                        <option value="others">Others</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="is_health_ok">Is Your Health Condition Ok? <span class="text-danger">*</span></label>
                                    <select class="form-control" id="isHealthOk" name="isHealthOk" required>
                                        <option value="">Select</option>
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="count">Members count (if any)</label>
                                    <input type="text" class="form-control" id="count" name="count" >
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="contact">Contact with a COVID-19 confirmed or tested individual?  <span class="text-danger">*</span></label>
                                    <select class="form-control" id="contact" name="contactWith" required>
                                        <option value="">Select</option>
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <br>
                                <div class="form-group">
                                    <label for="sym">Do you have symptoms of Covid-19? <span class="text-danger">*</span></label>
                                    <select class="form-control" id="sym" name="symto" required>
                                        <option value="">Select</option>
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="alert alert-dark" style ="background: rgb(204, 203, 235);" role="alert">
                            <h6>Telangana Address</h6>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="state">State</label>
                                    <input type="text" class="form-control" id="state" value="Telangana" disabled>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="district">District <span class="text-danger">*</span></label>
                                    <select class="form-control" id="district" name="district" onchange="changeMandal('district','mandal')" required>
                                        <option value="">Select</option>
                                        <option value="Adilabad">Adilabad</option>
                                        <option value="Bhadradri Kothagudem">Bhadradri Kothagudem</option>
                                        <option value="Hyderabad">Hyderabad</option>
                                        <option value="Jagitial">Jagitial</option>
                                        <option value="Jangaon">Jangaon</option>
                                        <option value="Jayashankar_Bhupalpally">Jayashankar Bhupalpally</option>
                                        <option value="Jogulamba_Gadwal">Jogulamba Gadwal</option>
                                        <option value="Kamareddy">Kamareddy</option>
                                        <option value="Karimnagar">Karimnagar</option>
                                        <option value="Khammam">Khammam</option>
                                        <option value="Komaram_Bheem">Komaram Bheem</option>
                                        <option value="Mahabubabad">Mahabubabad</option>
                                        <option value="Mahabubnagar">Mahabubnagar</option>
                                        <option value="Mancherial">Mancherial</option>
                                        <option value="Medak">Medak</option>
                                        <option value="Medchal_Malkajgiri">Medchal Malkajgiri</option>
                                        <option value="Mulugu">Mulugu</option>
                                        <option value="Nagarkurnool">Nagarkurnool</option>
                                        <option value="Narayanpet">Narayanpet</option>
                                        <option value="Nalgonda">Nalgonda</option>
                                        <option value="Nirmal">Nirmal</option>
                                        <option value="Nizamabad">Nizamabad</option>
                                        <option value="Peddapalli">Peddapalli</option>
                                        <option value="Rajanna_Sircilla">Rajanna Sircilla</option>
                                        <option value="Ranga_Reddy">Ranga Reddy</option>
                                        <option value="Sangareddy">Sangareddy</option>
                                        <option value="Siddipet">Siddipet</option>
                                        <option value="Suryapet">Suryapet</option>
                                        <option value="Vikarabad">Vikarabad</option>
                                        <option value="Wanaparthy">Wanaparthy</option>
                                        <option value="Warangal_Rural">Warangal Rural</option>
                                        <option value="Warangal_Urban">Warangal Urban</option>
                                        <option value="Yadadri_Bhuvanagiri">Yadadri Bhuvanagiri</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="mandal">Mandal<span class="text-danger">*</span></label>
                                    <select class="form-control" id="mandal" name="mandal" required>
                                        <option value="">Select</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="landmark">Landmark</label>
                                    <input type="text" class="form-control" name="landmark" id="landmark">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="zone_type">Zone type <span class="text-danger">*</span></label>
                                    <select class="form-control" id="zone_type" name="zoneType" required>
                                        <option value = "">Select</option>
                                        <option value = "red" class="alert alert-danger">Red</option>
                                        <option value = "orange" class="alert alert-warning">Orange</option>
                                        <option value = "green" class="alert alert-success">Green</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <div class="alert alert-warning" role="alert">
                            <h5 style="text-align: center;">Terms & Conditions:</h5>
                            <ul>
                                <li>No person shall be allowed to travel without pre-medical screening to be conducted by a Registered Medical Practitioner only</li>
                                <li>Only People from Green and Orange Zones are permitted to enter in to the state .</li>
                                <li>People from RED zones are not permitted to enter in to the State</li>
                                <li>Upon Entry at the State Border or at Dis-embarkment center, Every Person / Group will be tested for COVID disease</li>
                                <li>All the Persons / groups tested Positive will be sent Hospital as per the COVID protocol</li>
                                <li>All the Persons / groups tested negative will be transferred to village level community quarantine centres and quarantined for 14 days</li>
                                <li>The vehicle carrying the people shall be disinfected at the starting point</li>
                                <li>Social Distancing norms shall be followed at all the times and at all places, including the vehicle, and only permitted number shall only travel</li>
                            </ul>
                        </div>
                        
                        
                        <div class="form-group form-check" style="margin: 0; text-align: center;" >
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                            <label class="form-check-label" for="exampleCheck1"> I am agreeing to be above conditions and consent for the quarantine for a minimum of 14 days as per the COVID Protocol</label>
                          </div>
                          <br>
                        <div class="row">
                            <div class="col-lg-12" style="margin: 0; text-align: center;">
                                <button type="submit"  id="submit"  class="btn btn-success">Submit my Application</button>   
                            </div>
                        </div>
                    </form> 
                <script src="/js/emergencyRegistrationToTelengana.js"></script>
                </div> 
            </div>
        </div>
        
    </div>
    
</body>
</html>