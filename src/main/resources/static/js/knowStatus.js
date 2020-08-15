function getDetails()
{
	var type_of_pass = document.querySelector("#type").value;
	
	if(type_of_pass==="domestic_from")
	{
		//window.location = "/domesticFromGetDetails";
		var xmlHttp = new XMLHttpRequest();
   		 xmlHttp.open( "GET", "/domesticFromGetDetails", true ); // false for synchronous request
    	xmlHttp.send( null );
    	return xmlHttp.responseText;

	}
	else if(type_of_pass === "domestic_to")
	{
		window.location = "/domesticToGetDetails";

	}
	else if(type_of_pass === "online_registration_from")
	{
		window.location = "/onlineFromGetDetails";
		
	}
	else if(type_of_pass === "online_registration_to")
	{
		window.location = "/onlineToGetDetails";

	}
	else if(type_of_pass === "employee_registration")
	{
		window.location ="/employee";
		
	}
	else if(type_of_pass === "health_from")
	{
		window.location = "/healthFromGetDetails";
		
	}else if(type_of_pass === "health_to")
	{
		window.location = "/healthToGetDetails";

	}
	
}