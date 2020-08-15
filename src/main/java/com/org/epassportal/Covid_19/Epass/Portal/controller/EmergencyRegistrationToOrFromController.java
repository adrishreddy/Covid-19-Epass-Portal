package com.org.epassportal.Covid_19.Epass.Portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmergencyRegistrationToOrFromController {
	
	@RequestMapping("/index3")
	public String show()
	{
		return "index";
	}
	@RequestMapping("/emergencyRegistrationFromTelengana")
	public String showEmergencyRegistrationFromTelengana()
	{
		return "emergencyRegistrationFromTelengana";
	}
	@RequestMapping("/emergencyRegistrationToTelengana")
	public String showEmergencyRegistrationToTelengana()
	{
		return "emergencyRegistrationToTelengana";
	}

}
