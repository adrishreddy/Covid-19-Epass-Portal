package com.org.epassportal.Covid_19.Epass.Portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OnlineRegistrationToOrFromController {

	@RequestMapping("/onlineRegistrationToTelangana")
	public String showDomesticDetailsToTelangana()
	{
		return "onlineRegistrationToTelangana";
	}
	@RequestMapping("/onlineRegistrationFromTelangana")
	public String showDomesticDetailsFromTelangana()
	{
		return "onlineRegistrationFromTelangana";
	}
	@RequestMapping("/index2")
	public String showIndex2()
	{
		return "index";
	}
}
