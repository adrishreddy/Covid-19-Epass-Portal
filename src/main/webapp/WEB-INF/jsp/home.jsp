<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
          <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="/css/home.css">
</head>
<body>
    <div id="head">

        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="#"><span class="logo">Covid-19 e-pass</span> </a>
                <form action="/logout">
                <button type="submit" id="logout" style="margin-right: 0px;" class="btn btn-success getdetails">Log out</button>
                            </form>
            </div>
        </nav>
        <div class="jumbo">
            <br>
            <br>
            <h1 class="display-4">Welcome ${username} Collectorate</h1>
            
            <h2>Applications from your district are here...</h2>
            <br>
            
            <br>
        </div>
    </div>
    
    


    
    
    
    
    <br><br><br>
    
  
  	<ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist">
  		<li class="nav-item" role="presentation">
    		<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#domestic" role="tab" aria-controls="pills-home" aria-selected="true" >Domestic Pass Applications</a>
  		</li>
  		<li class="nav-item" role="presentation">
   			 <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#online" role="tab" aria-controls="pills-profile" aria-selected="false">Online Registration Pass Applications</a>
  		</li>
  		<li class="nav-item" role="presentation">
    		<a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#employee" role="tab" aria-controls="pills-contact" aria-selected="false">Employee Pass Applications</a>
  		</li>
  		<li class="nav-item" role="presentation">
    		<a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#health" role="tab" aria-controls="pills-contact" aria-selected="false">Emergency Pass Applications</a>
  		</li>
	</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="domestic" role="tabpanel" aria-labelledby="pills-home-tab">
  
  
  <div class="card-body">
    		<div class="alert alert-secondary" style="text-align:center" role="alert">
  				<h5>Applications for Domestic pass to Other states</h5>
			</div>
			<c:choose>
					<c:when test="${hasApplications1 == false}">
						<div class="card  shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body" style="text-align:center">
								
								<img src="/images/tick.png" width="80px" height="100px"><br>
								No Applications found for this type of pass<br>
								You can check remaining applications
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
			<div class="row">
				<c:forEach items="${userForms1}" var="userForm">
					<div class="col-lg-6">
					<div class="card body shadow-none p-3 mb-5 bg-light rounded">
					<div class="row">
						<div class = "col-lg-7" style="margin:auto; text-align: center">
							Application ID : ${userForm.aid}<br>
							Applicant Name : ${userForm.name}<br>
							Applicant Age :  ${userForm.age}
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/approved1/${userForm.aid}" class="btn btn-success">Approve</a>
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/rejected1/${userForm.aid }" class="btn btn-danger">Reject</a>
						</div>
					</div><br>
					<hr>
					<h6 style="text-align:center">Pass type : Domestic Pass to Other states</h6>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								Flight Details
								</div>
							<div class="col-lg-6">
								Passport No : ${userForm.passportNo}<br>
								Flight No : ${userForm.flightNo}<br>
								Flight Name : ${userForm.flightName}<br>
								Flight Type : ${userForm.flightType}
							</div>
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								From Address
							</div>
							<div class="col-lg-6">
								State : ${userForm.state }<br>
								District : ${userForm.district }<br>
								Mandal : ${userForm.mandal }<br>
								Zone type : ${userForm.zoneType }
							</div>
					
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
									Other Information:
							</div>
							<div class="col-lg-6">
									Purpose Of Travel : ${userForm.purposeOfTravel }<br>
									Is Health Ok? : ${userForm.isHealthOk }<br>
									Count : ${userForm.count }<br>
								</div>
							</div>
					</div>
					</div>
					
    			</c:forEach>
    			</div>
    			</c:otherwise>
    			</c:choose>
			
			 <div class="alert alert-secondary" style="text-align:center" role="alert">
  				<h5>Applications for Domestic pass to Telangana</h5>
			</div>
			
			<c:choose>
					<c:when test="${hasApplications2 == false}">
						<div class="card  shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body" style="text-align:center">
								
								<img src="/images/tick.png" width="80px" height="100px"><br>
								No Applications found for this type of pass<br>
								You can check remaining applications
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="row" >
							<c:forEach items="${userForms2}" var="userForm">
					<div class="col-lg-6">
					<div class="card body shadow-none p-3 mb-5 bg-light rounded">
					<div class="row">
						<div class = "col-lg-7" style="margin:auto; text-align: center">
							Application ID : ${userForm.aid}<br>
							Applicant Name : ${userForm.name}<br>
							Applicant Age :  ${userForm.age}
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/approved2/${userForm.aid}" class="btn btn-success">Approve</a>
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/rejected2/${userForm.aid }" class="btn btn-danger">Reject</a>
						</div>
					</div><br>
					<hr>
					<h6 style="text-align:center">Pass type : Domestic Pass to Telangana</h6>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								Flight Details
								</div>
							<div class="col-lg-6">
								Passport No : ${userForm.passportNo }<br>
								Flight No : ${userForm.flightNo }<br>
								Flight Name : ${userForm.flightName }<br>
								Flight Type : ${userForm.flightType }
							</div>
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								From Address
							</div>
							<div class="col-lg-6">
								State : ${userForm.otherState }<br>
								District : ${userForm.otherDistrict }<br>
								Mandal : ${userForm.otherMandal }<br>
								Zone type : ${userForm.otherZoneType }
							</div>
					
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								To Address
							</div>
							<div class="col-lg-6">
								State : ${userForm.state }<br>
								District : ${userForm.district }<br>
								Mandal : ${userForm.mandal }<br>
								Zone type : ${userForm.zoneType }
							</div>
					
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
									Other Information:
							</div>
							<div class="col-lg-6">
									Purpose Of Travel : ${userForm.purposeOfTravel }<br>
									Is Health Ok? : ${userForm.isHealthOk }<br>
									Count : ${userForm.count }<br>
								</div>
							</div>
					</div>
					</div>
    			</c:forEach>
			</div>
			
			
			</c:otherwise>
			</c:choose>
    	
  
  </div>
  </div>
  
  
  <div class="tab-pane fade" id="online" role="tabpanel" aria-labelledby="pills-profile-tab">
  <div class="card-body">
    		<div class="alert alert-secondary" style="text-align:center" role="alert">
  				<h5>Applications for Online Registration pass to Other states</h5>
			</div>
			<c:choose>
					<c:when test="${hasApplications3 == false}">
						<div class="card  shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body" style="text-align:center">
								
								<img src="/images/tick.png" width="80px" height="100px"><br>
								No Applications found for this type of pass<br>
								You can check remaining applications
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
			<div class="row">
				<c:forEach items="${userForms3}" var="userForm">
					<div class="col-lg-6">
					<div class="card body shadow-none p-3 mb-5 bg-light rounded">
					<div class="row">
						<div class = "col-lg-7" style="margin:auto; text-align: center">
							Application ID : ${userForm.aid}<br>
							Applicant Name : ${userForm.name}<br>
							Applicant Age :  ${userForm.age}
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/approved3/${userForm.aid}" class="btn btn-success">Approve</a>
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/rejected3/${userForm.aid }" class="btn btn-danger">Reject</a>
						</div>
					</div><br>
					<hr>
					<h6 style="text-align:center">Pass type : Online Registration Pass to other states</h6>
					<hr>
						
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								From Address
							</div>
							<div class="col-lg-6">
								State : ${userForm.state }<br>
								District : ${userForm.district }<br>
								Mandal : ${userForm.mandal }<br>
								Zone type : ${userForm.zoneType }
							</div>
					
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
									Other Information:
							</div>
							<div class="col-lg-6">
									Purpose Of Travel : ${userForm.purposeOfTravel }<br>
									Is Health Ok ? : ${userForm.isHealthOk }<br>
									Count : ${userForm.count }<br>
									Contact With Covid-19 ?: ${userForm.contactWith }<br>
								</div>
							</div>
					</div>
					</div>
    			</c:forEach>
    			</div>
    			</c:otherwise>
    			</c:choose>
			
			
			
			 <div class="alert alert-secondary" style="text-align:center" role="alert">
  				<h5>Applications for Online Registration pass to Telangana</h5>
			</div>
			<c:choose>
					<c:when test="${hasApplications4 == false}">
						<div class="card  shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body" style="text-align:center">
								
								<img src="/images/tick.png" width="80px" height="100px"><br>
								No Applications found for this type of pass<br>
								You can check remaining applications
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
			<div class="row">
				<c:forEach items="${userForms4}" var="userForm">
					<div class="col-lg-6">
					<div class="card body shadow-none p-3 mb-5 bg-light rounded">
					<div class="row">
						<div class = "col-lg-7" style="margin:auto; text-align: center">
							Application ID : ${userForm.aid}<br>
							Applicant Name : ${userForm.name}<br>
							Applicant Age :  ${userForm.age}
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/approved4/${userForm.aid}" class="btn btn-success">Approve</a>
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/rejected4/${userForm.aid }" class="btn btn-danger">Reject</a>
						</div>
					</div><br>
					<hr>
					<h6 style="text-align:center">Pass type : Online Registration Pass to other states</h6>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								From Address
								</div>
							<div class="col-lg-6">
								State : ${userForm.otherState }<br>
								District : ${userForm.otherDistrict }<br>
								Mandal : ${userForm.otherMandal }<br>
								Zone type : ${userForm.otherZoneType }
							</div>
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								To Address
							</div>
							<div class="col-lg-6">
								State : ${userForm.state }<br>
								District : ${userForm.district }<br>
								Mandal : ${userForm.mandal }<br>
								Zone type : ${userForm.zoneType }
							</div>
					
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
									Other Information:
							</div>
							<div class="col-lg-6">
									Purpose Of Travel : ${userForm.purposeOfTravel }<br>
									Is Health Ok ? : ${userForm.isHealthOk }<br>
									Count : ${userForm.count }<br>
									Contact With Covid-19 ?: ${userForm.contactWith }<br>
								</div>
							</div>
					</div>
					</div>
    			</c:forEach>
			</div>
			
			</c:otherwise>
			</c:choose>
			
    	</div>
  </div>
  
  
  <div class="tab-pane fade" id="employee" role="tabpanel" aria-labelledby="pills-contact-tab">
  		<div class="card-body">
    		<div class="alert alert-secondary" style="text-align:center" role="alert">
  				<h5>Applications for Employee Registration Pass</h5>
			</div>
			<c:choose>
					<c:when test="${hasApplications5 == false}">
						<div class="card  shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body" style="text-align:center">
								
								<img src="/images/tick.png" width="80px" height="100px"><br>
								No Applications found for this type of pass<br>
								You can check remaining applications
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
			<div class="row">
				<c:forEach items="${userForms5}" var="userForm">
					<div class="col-lg-6">
					<div class="card body shadow-none p-3 mb-5 bg-light rounded">
					<div class="row">
						<div class = "col-lg-7" style="margin:auto; text-align: center">
							Application ID : ${userForm.aid}<br>
							Applicant Name : ${userForm.name}<br>
							Applicant Age :  ${userForm.age}
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/approved5/${userForm.aid}" class="btn btn-success">Approve</a>
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/rejected5/${userForm.aid }" class="btn btn-danger">Reject</a>
						</div>
					</div><br>
					<hr>
					<h6 style="text-align:center">Pass type :Employee Pass </h6>
					<hr>
						
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								From Address
							</div>
							<div class="col-lg-6">
								State : ${userForm.state }<br>
								District : ${userForm.district }<br>
								Mandal : ${userForm.mandal }<br>
								Zone type : ${userForm.zoneType }
							</div>
					
						</div>
					<hr>
					<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								Company Details
							</div>
							<div class="col-lg-6">
								Company Name : ${userForm.compName }<br>
								Company Location : ${userForm.compLoc }<br>
								Company Distance : ${userForm.compDist }<br>
								Company Zone : ${userForm.compZone }
							</div>
					
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
									Other Information:
							</div>
							<div class="col-lg-6">
									Purpose Of Travel : ${userForm.purposeOfTravel }<br>
									Is Health Ok ? : ${userForm.isHealthOk }<br>
									Count : ${userForm.count }<br>
									Contact With Covid-19 ?: ${userForm.contactWith }<br>
								</div>
							</div>
					</div>
					</div>
    			</c:forEach>
			</div>
			</c:otherwise>
			</c:choose>
  </div>
  </div>
  <div class="tab-pane fade" id="health" role="tabpanel" aria-labelledby="pills-contact-tab">
  		<div class="card-body">
    		<div class="alert alert-secondary" style="text-align:center" role="alert">
  				<h5>Applications for Emergency Health Pass to Other States</h5>
			</div>
			<c:choose>
					<c:when test="${hasApplications6 == false}">
						<div class="card  shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body" style="text-align:center">
								
								<img src="/images/tick.png" width="80px" height="100px"><br>
								No Applications found for this type of pass<br>
								You can check remaining applications
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
			<div class="row">
				<c:forEach items="${userForms6}" var="userForm">
					<div class="col-lg-6">
					<div class="card body shadow-none p-3 mb-5 bg-light rounded">
					<div class="row">
						<div class = "col-lg-7" style="margin:auto; text-align: center">
							Application ID : ${userForm.aid}<br>
							Applicant Name : ${userForm.name}<br>
							Applicant Age :  ${userForm.age}
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/approved6/${userForm.aid}" class="btn btn-success">Approve</a>
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/rejected6/${userForm.aid }" class="btn btn-danger">Reject</a>
						</div>
					</div><br>
					<hr>
					<h6 style="text-align:center">Pass type : Health Pass to other states</h6>
					<hr>
						
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								From Address
							</div>
							<div class="col-lg-6">
								State : ${userForm.state }<br>
								District : ${userForm.district }<br>
								Mandal : ${userForm.mandal }<br>
								Zone type : ${userForm.zoneType }
							</div>
					
						</div>
					<hr>
					<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								To Address
							</div>
							<div class="col-lg-6">
								State : -<br>
								District : -<br>
								Mandal : -<br>
								Zone type : -
							</div>
					
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
									Other Information:
							</div>
							<div class="col-lg-6">
									Purpose Of Travel : ${userForm.purposeOfTravel }<br>
									Is Health Ok ? : ${userForm.isHealthOk }<br>
									Count : ${userForm.count }<br>
									Contact With Covid-19 ?: ${userForm.contactWith }<br>
								</div>
							</div>
					</div>
					</div>
    			</c:forEach>
			</div>
			
			</c:otherwise>
			</c:choose>
			 <div class="alert alert-secondary" style="text-align:center" role="alert">
  				<h5>Applications for Emergency health pass to Telangana</h5>
			</div>
			<c:choose>
					<c:when test="${hasApplications7 == false}">
						<div class="card  shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body" style="text-align:center">
								
								<img src="/images/tick.png" width="80px" height="100px"><br>
								No Applications found for this type of pass<br>
								You can check remaining applications
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
			<div class="row">
				<c:forEach items="${userForms7}" var="userForm">
					<div class="col-lg-6">
					<div class="card body shadow-none p-3 mb-5 bg-light rounded">
					<div class="row">
						<div class = "col-lg-7" style="margin:auto; text-align: center">
							Application ID : ${userForm.aid}<br>
							Applicant Name : ${userForm.name}<br>
							Applicant Age :  ${userForm.age}
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/approved7/${userForm.aid}" class="btn btn-success">Approve</a>
						</div>
						<div class = "col-lg-2" style="margin:auto; text-align: center ; color:white;">
						<a href="/rejected7/${userForm.aid }" class="btn btn-danger">Reject</a>
						</div>
					</div><br>
					<hr>
					<h6 style="text-align:center">Pass type : Online Registration Pass to other states</h6>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								From Address
								</div>
							<div class="col-lg-6">
								State : ${userForm.state }<br>
								District : ${userForm.district }<br>
								Mandal : ${userForm.mandal }<br>
								Zone type : ${userForm.zoneType }
							</div>
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
								To Address
							</div>
							<div class="col-lg-6">
								State : -<br>
								District : -<br>
								Mandal : -<br>
								Zone type : -
							</div>
					
						</div>
					<hr>
						<div class = "row">
							<div class="col-lg-6" style="margin:auto; text-align: center" >
									Other Information:
							</div>
							<div class="col-lg-6">
									Purpose Of Travel : ${userForm.purposeOfTravel }<br>
									Is Health Ok ? : ${userForm.isHealthOk }<br>
									Count : ${userForm.count }<br>
									Contact With Covid-19 ?: ${userForm.contactWith }<br>
								</div>
							</div>
					</div>
					</div>
    			</c:forEach>
			</div>
			</c:otherwise>
			</c:choose>
  
  </div>
</div>
  
  </div>
  
  
    <script src="/js/home.js"></script>
    <!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
</body>
</html>