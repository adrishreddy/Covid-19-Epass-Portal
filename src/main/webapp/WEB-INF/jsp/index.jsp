

<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- google fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <!-- font awsome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Covid-19 Epass Portal</title>
  
	<link rel="stylesheet" href="/css/index.css">
	
	
	 
</head>

<body>
  <!-- Marquee -->
  <marquee behavior="scroll" direction="left">
    Passes are issued for Students, Pilgrims, Migrant Labours under acute
    distress and cannot be issued to other cases as of now for the time being.
    Please read checklist before you apply for e-pass. 
    You can find application form in "Movement Of People" page.
    Reach us: 1921.
  </marquee>
  <!-- NAV BAR  -->

  <nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="#"><span class="logo">Covid-19 e-pass</span> </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item ">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              Movement Of People
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="/domesticToOrFrom">Domestic Passenger Enrollment</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="/onlineRegistrationToOrFrom">Online Registration for Pass</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="/otpVerify5">Employee Registration for Pass</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="/emergencyRegistrationToOrFrom">Emergency(Health) Pass</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/knowStatus" blank>Know status</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/home" blank>Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://news.google.com/covid19/map?hl=en-IN&gl=IN&ceid=IN:en" blank>About
              Covid-19</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://play.google.com/store/apps/details?id=nic.goi.aarogyasetu&hl=en_IN"
              blank><img src="images\as.png" width="30px"
                height="30px"></img>Aarogya Setu</a>
          </li>
        </ul>

      </div>
    </div>
  </nav>


  <!-- number animaitons -->
  <h5 style="text-align: center; color: rgb(88, 86, 214);">
    Cases in Telangana (as on August 7, 2020)
  </h5>
  <section class="counters">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 numAnime">
          <div class="card shadow-sm p-3 mb-5 bg-white rounded">
            <div class="card-body">
               <h4>Total Cases *</h4>
              <h5 class="counter" data-target="73050">0</h5>
            </div>
          </div>
        </div>
        <div class="col-lg-3  numAnime" >
          <div class="card shadow-sm p-3 mb-5 bg-white rounded">
            <div class="card-body">
              <h4>Active Cases</h4>
              <h5 class="counter" data-target="20358">0</h5>
            </div>
          </div>
        </div>
        <div class="col-lg-3 numAnime"   >
          <div class="card shadow-sm p-3 mb-5 bg-white rounded">
            <div class="card-body">
                <h4>Discharged</h4>
                <h5 class="counter" data-target="52103">0</h5>
            </div>
          </div>
        </div>
        <div class="col-lg-3 numAnime">
          <div class="card shadow-sm p-3 mb-5 bg-white rounded">
            <div class="card-body">
              <h4>Deceased</h4>
              <h5 class="counter" data-target="589">0</h5>
            </div>
          </div>
        </div>
      </div>
    </div>


  </section>
  <script src="/js/index.js"></script>

  <!-- Image and Hashtags -->
  <div class="row">
    <div class="col-lg-7">
      <img src="\images\homeImage-edited.jpg" id="ima" width="800"
        height="700">
    </div>
    <div class="col-lg-5" id="slogan">
      <h1>Lets Fight Back Aganist</h1>
      <h1>Covid-19</h1>
      <h1># IndiaFightsCorona</h1>
      <h1># TogetherAganistCovid19</h1>
      <h1># HealthForAll</h1>
      <!-- <img src="C:\Users\user\Desktop\Covid 19 Epass Portal\Resources\homeImage-edited.jpg" id="ima"  > -->
    </div>
  </div>

  <!-- checklist -->
  <div class="jumbotron jumbotron-fluid" id="checklist" >
    <h1>Checklist before you apply for e-pass:</h1>
    <hr style="border: 0;
    height: 1px;
    background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));">
    <ul class="rules" style="list-style-type: none;">
      <li class="lead">Any eligible individual/group can apply for the movement pass </li>
      <li class="lead">Fill in all the mandatory details carefully and submit. </li>
      <li class="lead">Keep the scanned copy of the requisite documents before applying. </li>
      <li class="lead">Please use an active mobile number to receive verification OTP. </li>
      <li class="lead">After successful submission of your application, an application reference number will get generated. </li>
      <li class="lead"> Please note your Application number to track the application status. </li>
      <li class="lead">The movement e-pass will contain your name, address, validity and a QR code. </li>
      <li class="lead">Keep a soft/hard copy of the e-pass while traveling and show it to the security personnel if asked. </li>
    </ul>
  </div>

  <!-- Preventions -->
  <div id="preventions" >
    <h1 id="goldenrules">Golden rules to break Covid-19</h1>
    <hr style="border: 0;
    height: 1px;
    background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));">
    
    <div class="row">
      <div class="col-lg-4" style="text-align:center;">
        <div style=" margin-left: 45px ;">
        <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
        <lottie-player src="https://assets1.lottiefiles.com/packages/lf20_nKCnOy.json"  background="transparent"  speed="2"  style="width: 300px; height: 300px;" hover loop ></lottie-player> 
        
        </div>
        <h5>Stay Home</h5><h5>Stay Safe</h5> 
      </div>
      <div class="col-lg-4" style=" text-align:center;">
        <div style=" margin-left: 45px ;">
          <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
          <lottie-player src="https://assets1.lottiefiles.com/private_files/lf30_QLsD8M.json"  background="transparent"  speed="2"  style="width: 300px; height: 300px;" hover loop  ></lottie-player>
        </div>
        <h5>Avoid Shaking Hands and just </h5>
        <h5>Namaste</h5> 
      </div>
      <div class="col-lg-4" style="text-align:center;">
        <div style=" margin-left: 45px ;">
          <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
          <lottie-player src="https://assets1.lottiefiles.com/private_files/lf30_oGbdoA.json"  background="transparent"  speed="2"  style="width: 300px; height: 300px;" hover  loop ></lottie-player>
        </div>
        <h5>Always wear a Mask</h5> 
        <h5>in public places</h5> 
      </div>
    </div>
  <!-- </div> -->
  <!-- <div class="container"> -->
    <div class="row" >
      <div class="col-lg-6" style="text-align:center;">
        <div style="margin-left: 220px ;">
          <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
          <lottie-player src="https://assets1.lottiefiles.com/private_files/lf30_yQtj4O.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;" hover  loop ></lottie-player>
        </div>
        <h5 style="padding-left: 120px;">Wash your hands frequently</h5>
      </div>
      <div class="col-lg-6">
        <div style=" margin-left: 60px ;">
          <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
          <lottie-player src="https://assets1.lottiefiles.com/private_files/lf30_aGWCIX.json"  background="transparent"  speed="2"  style="width: 300px; height: 300px;" hover  loop ></lottie-player>
        </div>
        <h5 style="padding-left: 95px;">Maintain Social Distance</h5>
      </div>
    </div>
    <br><br>
  </div>

  <!-- ------------------------------ -->
  <!-- phone num -->
  <div class="jumbotron jumbotron-fluid" id="reachus" >
    <div class="container">
      <h1>Reach us</h1><br>
      <svg width="50px" height="50px" viewBox="0 0 16 16" class="bi bi-telephone-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" d="M2.267.98a1.636 1.636 0 0 1 2.448.152l1.681 2.162c.309.396.418.913.296 1.4l-.513 2.053a.636.636 0 0 0 .167.604L8.65 9.654a.636.636 0 0 0 .604.167l2.052-.513a1.636 1.636 0 0 1 1.401.296l2.162 1.681c.777.604.849 1.753.153 2.448l-.97.97c-.693.693-1.73.998-2.697.658a17.47 17.47 0 0 1-6.571-4.144A17.47 17.47 0 0 1 .639 4.646c-.34-.967-.035-2.004.658-2.698l.97-.969z"/>
      </svg>
      <br>
      <br>
      <h5>Ph no: 1921</h5>
      <button type="button" class="btn btn-success">More Information</button>
    </div>
  </div>






  <!-- <img src="https://img.jakpost.net/c/2020/04/08/2020_04_08_92185_1586314871._large.jpg" id="ima" width="1000" height="700" > -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>
    <marquee behavior="scroll" direction="left">
      Passes are issued for Students, Pilgrims, Migrant Labours under acute
      distress and cannot be issued to other cases as of now for the time being.
      Please read checklist before you apply for e-pass. 
      You can find application form in "Movement Of People" page.
      Reach us: 1921.
    </marquee>
</body>

</html>