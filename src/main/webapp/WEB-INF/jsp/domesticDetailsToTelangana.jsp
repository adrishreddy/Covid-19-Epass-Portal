<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">       	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Domestic Passanger Enrollment to telangana</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
          <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="css/domesticDetailsToTelangana.css">
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

    <h1 style="text-align: center;">Domestic Passanger Enrollment to Telangana</h1>
    <br>
    <div class="container">
        <div class="card shadow p-3 mb-5 bg-white rounded">
            <div class="card-body">
                <div class="alert alert-danger" role="alert">
                    <h5 style="text-align: center;">Note this:</h5>
                    <ul>
                        <li>For symptomatic Persons will go to institutional quarantine where they shall be tested on arrival and after 7 days again tested and if found negative released to home quarantine for another 7 days.</li>
                        <li>For asymptomatic Persons coming from high incidence areas Chennai, Mumbai, Delhi, Gujarat, Rajasthan and M.P will be put in institutional quarantine where they shall be tested on admission and after 7 days again tested and if found negative will be released to home quarantine for 7 days.</li>
                        <li>For asymptomatic Persons coming from low incidence areas will be sent to home quarantine for 14 days after taking swabs. If swab comes positive they will be put in covid care centre or continued in home quarantine or sent to hospital for treatment as the case may be.</li>
        
        
                    </ul>
                </div>
                <div>
                    <form action="/success2" method="post">
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
                                    <input type="text" class="form-control" id="age" name="age" required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="phno">Mobile Number <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="phno" name="mno" required>
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
                                    <input type="text" class="form-control" id="adno" name="adno" required >
                                </div>
                            </div>
                            
                        </div>
                        <div class="alert alert-dark" style ="background: rgb(204, 203, 235);" role="alert">
                            <h6>Other Information</h6>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="flight_type">Flight Type <span class="text-danger">*</span></label>
                                    <select class="form-control" id="flight_type" name="flightType" required>
                                        <option value="">Select</option>
                                        <option value="domestic">Domestic</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="flight_no">Flight Number <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="flight_no" name="flightNo" required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="flight_name">Flight Name <span class="text-danger">*</span></label>
                                    <select class="form-control" id="flight_name" name="flightName" required>
                                        <option value="">Select</option>
                                        <option value="1">Air India</option>
                                        <option value="2">Vistara</option>
                                        <option value="3">IndiGo Arabia</option>
                                        <option value="4">GoAir</option>
                                        <option value="5">Air India Express</option>
                                        <option value="6">SpiceJet</option>
                                        <option value="7">AirAsia </option>
                                        <option value="8">TruJet</option>
                                        <option value="9">Jet Airways</option>
                                        <option value="10">Jazeera Airways</option>
                                        <option value="11">Etihad  AirLines</option>
                                        <option value="12">philippine AirLines</option>
                                        <option value="13">Qatar AirLines</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="passport_no">Passport Number</label>
                                    <input type="text" class="form-control" id="passport_no" name="passportNo" required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="arrival_border">Arrival Border <span class="text-danger">*</span></label>
                                    <select class="form-control" id="arrival_border" name="arrivalBorder" required>
                                        <option value="">Select</option>
                                        <option value="Rajiv_Gandhi_International">Rajiv Gandhi International Airport</option>
                                        <option value="Begumpet">Begumpet Airport</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="purpose_of_travel">Purpose of Travel <span class="text-danger">*</span></label>
                                    <select class="form-control" id="purpose_of_travel" name="purposeOfTravel" required>
                                        <option value="">Select</option>
                                        <option value="migrated">Migrated Worker</option>
                                        <option value="piligrim">Piligrim</option>
                                        <option value="tourist">Tourist</option>
                                        <option value="student">Student</option>
                                        <option value="office-work">Office Work</option>
                                        <option value="others">Others</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="is_health_ok">Is Your Health Condition Ok? <span class="text-danger">*</span></label>
                                    <select class="form-control" id="purpose_of_travel" name="isHealthOk" required>
                                        <option value="">Select</option>
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="count">Members count (if any)</label>
                                    <input type="text" class="form-control" id="count" name="count">
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
                                        <option value="Medchal_Malkajgiri">Medchal_Malkajgiri</option>
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
                        <div class="alert alert-dark" style ="background: rgb(204, 203, 235);" role="alert">
                            <h6>Other State Address</h6>
                        </div>
                        
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="state">State <span class="text-danger">*</span></label>
                                    <select class="form-control" id="state" name="otherState" required>
                                        <option value="">Select</option>
                                        <option value="Andhra_Pradesh">Andhra Pradesh</option>
                                        <option value="Arunachal_Pradesh">Arunachal Pradesh</option>
                                        <option value="Assam">Assam</option>
                                        <option value="Bihar">Bihar</option>
                                        <option value="Chhattisgarh">Chhattisgarh</option>
                                        <option value="Goa">Goa</option>
                                        <option value="Gujarat">Gujarat</option>
                                        <option value="Haryana">Haryana</option>
                                        <option value="Himachal Pradesh	">Himachal Pradesh</option>
                                        <option value="Jharkhand">Jharkhand</option>
                                        <option value="Karnataka">Karnataka</option>
                                        <option value="Kerala">Kerala</option>
                                        <option value="Madhya_Pradesh">Madhya Pradesh</option>
                                        <option value="Maharashtra">Maharashtra</option>
                                        <option value="Manipur">Manipur</option>
                                        <option value="Meghalaya">Meghalaya</option>
                                        <option value="Mizoram">Mizoram</option>
                                        <option value="Nagaland">Nagaland</option>
                                        <option value="Odisha">Odisha</option>
                                        <option value="Punjab">Punjab</option>
                                        <option value="Rajasthan">Rajasthan</option>
                                        <option value="Sikkim">Sikkim</option>
                                        <option value="Tamil_Nadu">Tamil Nadu</option>
                                        <option value="Tripura">Tripura</option>
                                        <option value="Uttar_Pradesh">Uttar Pradesh</option>
                                        <option value="Uttarakhand">Uttarakhand</option>
                                        <option value="West_Bengal">West Bengal</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="district">District <span class="text-danger">*</span></label>
                                    <input class="form-control" id="district" name="otherDistrict" required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="mandal">Mandal <span class="text-danger">*</span></label>
                                    <input class="form-control" id="mandal" name="otherMandal" required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="landmark">Landmark</label>
                                    <input type="text" class="form-control" name="otherLandmark" id="landmark">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="zone_type">Zone type <span class="text-danger">*</span></label>
                                    <select class="form-control" id="zone_type" name="otherZoneType" required>
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
                          <br>
                        <div class="row">
                            <div class="col-lg-12" style="margin: 0; text-align: center;">
                                <button type="submit"  id="submit"  class="btn btn-success">Submit my Application</button>   
                            </div>
                        </div>
                    </form> 
                <script src="/js/domesticDetailsToTelangana.js"></script>
                </div> 
            </div>
        </div>
        
    </div>
    
</body>
</html>