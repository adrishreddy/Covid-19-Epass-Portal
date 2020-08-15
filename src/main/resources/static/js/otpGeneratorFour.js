function submitOtp(){
	let otp = document.querySelector('#mobile').value;
	let inputBox= document.querySelector('#appid');
	console.log("sadasd");
		fetch('http://localhost:8080/mobilenumbers/'+otp+'/otp')
  		.then(response => response)
		.catch(error => console.log(error))
}

function verifyOtp(){
	let otp = document.querySelector('#appid').value;
	let mobile = document.querySelector('#mobile').value;
	let json = JSON.stringify({
				otp: otp
			});

		fetch('http://localhost:8080/mobilenumbers/'+mobile+'/verifyOtp',
		{
			method: 'PUT',
			headers: {
      			'Content-Type': 'application/json'
    		},
			body: json,
			
		})
  		.then(response => {
		if(response.status == 200) {
			window.location = "/onlineRegistrationToTelangana";
		}
		else{
			alert("Something Went Wrong! Please try again")
		}
		})
		//.catch(error => alert("Something Went Wrong! Please try again"))
}
