
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
        <c:forEach items="${userForms}" var="userForm">
            <h2 style="text-align: center;">GOVERNAMENT OF TELANGANA</h2>
            <div class="logo" style="text-align: center;">Covid-19 e-pass</div>
             <h3 style="text-align: center;">OFFICE OF COLLECTOR AND DISTRICT MAGISTRATE</h3>
             
            <hr style="
                border: 0;
                height: 1px;
                background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));"
            >
            <c:choose>
  				<c:when test="${userForm.status == 'PENDING' }">
    				<img style="margin-left:410px ;" src="/images/pending-removebg-preview.png" width="220" height="200">
  				</c:when>
  				<c:when test="${userForm.status == 'APPROVED' }">
    				<img style="margin-left:410px ;" src="/images/approved-removebg-preview.png" width="220" height="200">
  				</c:when>
  				<c:otherwise>
  					  <img style="margin-left:410px ;" src="/images/rejected-removebg-preview.png" width="220" height="200">
  				</c:otherwise>
			</c:choose>
            
            <!-- <h3 style="text-align: center;">{Statusstamp}</h3> -->
            <br>
            <br>
             <div class="container" style="font-size: 20px;" >
                <div class="row">
                    <div class="col-lg-6" style="text-align: center;">
                        Applicant Name : ${userForm.name}
                    </div>
                    <div class="col-lg-6" style="text-align: center;">
                    	  Date Of Registration : ${date} 
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6" style="text-align: center;">
                        Applicant Age : ${userForm.age}
                    </div>
                    <div class="col-lg-6" style="text-align: center;">
                     Pass-Type : ${type}
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6" style="text-align: center;">
                        Applicant Mobile No : ${userForm.mno}
                    </div>
                    <div class="col-lg-6" style="text-align: center;">
                     	Application ID : ${aid}
                    </div>
                </div>
                <br>
                
                <div class="alert alert-secondary" role="alert" style="text-align: center;">
                    TO AND FROM ADDRESSES
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <table class="table table-borderless" style="margin: auto;">
                            <tr>
                            	<th>To Address:</th>
                            </tr>
                            <tr><td>State: </td>   <td>  Telangana</td></tr>
                            <tr><td>District:  </td>  <td>  ${userForm.district}</td></tr>
                            <tr><td>Mandal:  </td>  <td>  ${userForm.mandal}</td></tr>
                            <tr><td>Zone Type: </td> <td>     ${userForm.zoneType }</td></tr>
                            
                            
                        </table>
                    </div>
                    <div class="col-lg-6">
                        <table class="table table-borderless" style="margin: auto;">
                            <tr><th>From Address:</th></tr>
                            <tr>
                            	<td>State: </td>
                            	<td>- </td>
                            </tr>
                            <tr>
                            	<td>District: </td><td>- </td>
                            </tr>
                            <tr>
                            	<td>Mandal:</td><td>-</td>
                            </tr>
                            <tr>
                            	<td>Zone Type: </td><td>-</td>
                            </tr>
                            
                            
                        </table>
                    </div>
                    
                </div>
               
                <br>
                <br>
                
                
                <div class="row">
                    <div class="col-lg-6" style="text-align: right;">
                        
                    </div>
                
                    <div class="col-lg-6" style="padding-left: 200px;">
                        Collectorate  ${userForm.district}
                    </div>
                </div>
                
                <br>
               
                <div class="alert alert-secondary" role="alert">
                    <div style="text-align: center;"><b>Terms & Conditions:</b></div>
                    <ul style="font-size: 15px;">
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

                

             </div>
            </c:forEach>
        </div>
    </div>
        
    <script src="/js/domesticFromGetDetails.js"></script>
    
</body>
</html>