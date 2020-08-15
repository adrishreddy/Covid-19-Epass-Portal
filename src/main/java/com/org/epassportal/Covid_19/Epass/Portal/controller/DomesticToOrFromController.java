package com.org.epassportal.Covid_19.Epass.Portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DomesticToOrFromController {

	@RequestMapping("/domesticDetailsToTelangana")
	public String showDomesticDetailsToTelangana()
	{
		return "domesticDetailsToTelangana";
	}
	@RequestMapping("/domesticDetailsFromTelangana")
	public String showDomesticDetailsFromTelangana()
	{
		return "domesticDetailsFromTelangana";
	}
	@RequestMapping("/index1")
	public String showIndex1()
	{
		return "index";
	}
	
}
