package com.org.epassportal.Covid_19.Epass.Portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/")
	public String showIndex()
	{
		return "index";
	}
	@RequestMapping("/domesticToOrFrom")
	public String showDomesticToOrFrom()
	{
		return "domesticToOrFrom";
	}
	@RequestMapping("/onlineRegistrationToOrFrom")
	public String showOnlineRegistrationToOrFrom()
	{
		return "onlineRegistrationToOrFrom";
	}
	@RequestMapping("/employeeRegistration")
	public String showEmployeeRegistration()
	{
		return "employeeRegistration";
	}
	@RequestMapping("/emergencyRegistrationToOrFrom")
	public String showEmergencyRegistrationToOrFrom()
	{
		return "emergencyRegistrationToOrFrom";
	}

}
