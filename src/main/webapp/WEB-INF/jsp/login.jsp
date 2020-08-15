
<html>
<head>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">

    <title>Login</title>
    <link rel="stylesheet" href="/css/login.css">

</head>
<body style=" margin-left: 0px; margin-right: 0px; margin-top: 0px; margin-bottom: 0px;">
    <div class="row">
        
        <div class="col-lg-6" id="part1"  style="
        padding-bottom: 100px;
        padding-top: 200px;
    ">
          <h1 class="display-4">Welcome Back</h1>
          <hr style="
              margin-left: 100px;
              margin-right: 100px;
              border: 0;
              height: 1px;
              background-image: linear-gradient(to right, rgba(0, 0, 0, 0), white, rgba(0, 0, 0, 0));
          ">
          <p>Login with your credentials<br>
          Application Forms are waiting for you</p>
			<a class="btn btn-success" href="/">Go Home</a>
        </div>
        <div class="col-lg-6" id="part2"  style="
        padding-bottom: 200px;
        padding-top: 150px;
    ">

          <div class="card shadow-lg p-3 mb-5 bg-white rounded" id="forms">

            <h1 >LOGIN</h1><br>
            <form action="/login" method="post">
				${SPRING_SECURITY_LAST_EXCEPTION.message }
              <br>
              <label class="sr-only" for="inlineFormInputName2">Name</label>
              <select class="form-control mb-2 mr-sm-2" id="district" name="username" required>
                <option value="">District</option>
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
             
              <br>
              <input type="password" name="password" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Password" required>
              <br>
               
       
              <button type="submit" name="submit" class="btn btn-primary mb-2">Login</button>
            </form>
          </div>
         
    </div>
    <script src = "/js/login.js"></script>
</body>
</html>