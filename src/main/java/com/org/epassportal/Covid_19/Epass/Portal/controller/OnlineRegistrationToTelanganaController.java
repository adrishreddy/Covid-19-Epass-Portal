package com.org.epassportal.Covid_19.Epass.Portal.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationFrom;
import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationTo;
import com.org.epassportal.Covid_19.Epass.Portal.service.OnlineRegistrationFromService;
import com.org.epassportal.Covid_19.Epass.Portal.service.OnlineRegistrationToService;

@Controller
public class OnlineRegistrationToTelanganaController {
	
	@Autowired
	private OnlineRegistrationToService service;
	
	@RequestMapping(value="/success4",method=RequestMethod.POST)
	public String displaySuccessMessage(ModelMap model,
			@RequestParam String name,
			@RequestParam String age,
			@RequestParam String mno,
			@RequestParam String gender,
			@RequestParam String adno,
			@RequestParam String email,
				
			
			@RequestParam String purposeOfTravel,
			@RequestParam String isHealthOk,
			@RequestParam String count,
			@RequestParam String contactWith,
			

				
			@RequestParam String district,
			@RequestParam String mandal,
			@RequestParam String landmark,
			@RequestParam String zoneType,
			
			@RequestParam String otherState,
			@RequestParam String otherDistrict,
			@RequestParam String otherMandal,
			@RequestParam String otherLandmark,
			@RequestParam String otherZoneType
)
	{
				
				
				OnlineRegistrationTo  ob  = new OnlineRegistrationTo();
				String s = generateAid();
				
				ob.setAid(s);
				ob.setName(name);
				ob.setAge(age);
				ob.setMno(mno);
				ob.setGender(gender);
				ob.setAdno(adno);
				ob.setEmail(email);
				
				ob.setPurposeOfTravel(purposeOfTravel);
				ob.setIsHealthOk(isHealthOk);
				ob.setCount(count);
				ob.setCount(contactWith);
				
				ob.setState("Telangana");
				ob.setDistrict(district);
				ob.setMandal(mandal);
				ob.setLandmark(landmark);
				ob.setZoneType(zoneType);
				
				ob.setOtherState(otherState);
				ob.setOtherDistrict(otherDistrict);
				ob.setOtherMandal(otherMandal);
				ob.setOtherLandmark(otherLandmark);
				ob.setOtherZoneType(otherZoneType);
				
				ob.setStatus("PENDING");
				ob.setRemarks("");

				service.saveToDb(ob);
				System.out.println(s);
				
				model.addAttribute("aid", s);
				
				return "success";
	}

	private String generateAid() {
		Random rand = new Random();
	    String date = java.time.LocalDate.now().toString();
	    String[] days = date.split("-");
	    String id = String.format("%04d", rand.nextInt(10000));
	    String temp = "OT"+days[2]+days[1]+id;  
	    //System.out.println(temp);
		return temp;
	}
	


}
