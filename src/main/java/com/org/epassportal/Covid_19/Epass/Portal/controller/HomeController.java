package com.org.epassportal.Covid_19.Epass.Portal.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticFrom;
import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticTo;
import com.org.epassportal.Covid_19.Epass.Portal.model.EmployeeRegistration;
import com.org.epassportal.Covid_19.Epass.Portal.model.HealthFrom;
import com.org.epassportal.Covid_19.Epass.Portal.model.HealthTo;
import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationFrom;
import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationTo;
import com.org.epassportal.Covid_19.Epass.Portal.repository.DomesticFromRepository;
import com.org.epassportal.Covid_19.Epass.Portal.repository.DomesticToRepository;
import com.org.epassportal.Covid_19.Epass.Portal.repository.EmployeeRegistrationRepository;
import com.org.epassportal.Covid_19.Epass.Portal.repository.HealthFromRepository;
import com.org.epassportal.Covid_19.Epass.Portal.repository.HealthToRepository;
import com.org.epassportal.Covid_19.Epass.Portal.repository.OnlineRegistrationFromRepository;
import com.org.epassportal.Covid_19.Epass.Portal.repository.OnlineRegistrationToRepository;
import com.org.epassportal.Covid_19.Epass.Portal.service.DomesticFromService;
import com.org.epassportal.Covid_19.Epass.Portal.service.DomesticToService;
import com.org.epassportal.Covid_19.Epass.Portal.service.EmployeeRegistrationService;
import com.org.epassportal.Covid_19.Epass.Portal.service.HealthFromSerivce;
import com.org.epassportal.Covid_19.Epass.Portal.service.HealthToService;
import com.org.epassportal.Covid_19.Epass.Portal.service.OnlineRegistrationFromService;
import com.org.epassportal.Covid_19.Epass.Portal.service.OnlineRegistrationToService;

@Controller
public class HomeController {
	
	@Autowired
	private DomesticFromRepository dfrepo;
	@Autowired
	private DomesticFromService dfservice;
	@Autowired
	private DomesticToRepository dtrepo;
	@Autowired
	private DomesticToService dtservice;
	@Autowired
	private OnlineRegistrationFromRepository ofrepo;
	@Autowired
	private OnlineRegistrationFromService ofservice;
	@Autowired
	private OnlineRegistrationToRepository otrepo;
	@Autowired
	private OnlineRegistrationToService otservice;
	@Autowired
	private EmployeeRegistrationRepository emprepo;
	@Autowired
	private EmployeeRegistrationService empservice;
	@Autowired
	private HealthFromRepository hfrepo;
	@Autowired
	private HealthFromSerivce hfservice;
	@Autowired
	private HealthToRepository htrepo;
	@Autowired
	private HealthToService htservice;
	
	@RequestMapping("/home")
	public ModelAndView showHome()
	{
		ModelAndView mav = new ModelAndView("home") ;
		
		SecurityContextHolder.getContext().getAuthentication();
		
		Authentication  auth = SecurityContextHolder.getContext().getAuthentication();
	    String name = auth.getName();
	    System.out.println("Details:");
	    System.out.println(auth.getDetails());
	    System.out.println("Printing auth:");
	    System.out.println(auth);
		System.out.println(name);
		
		mav.addObject("username", name);
		List<DomesticFrom> a1 = this.dfrepo.findByDistrict(name);
		List<DomesticFrom> userForms1 = new ArrayList<DomesticFrom>();
		for(DomesticFrom ob : a1)
		{
			if(ob.getStatus().equals("PENDING"))
				userForms1.add(ob);
		}
		if(userForms1.size()==0)
		{
			mav.addObject("hasApplications1",false);
		}
		else {
			mav.addObject("hasApplications1",true);
			mav.addObject("userForms1", userForms1); 
			System.out.println(userForms1);
		}
		
		List<DomesticTo> a2 = this.dtrepo.findByDistrict(name);
		List<DomesticTo> userForms2 = new ArrayList<DomesticTo>();
		for(DomesticTo ob : a2)
		{
			if(ob.getStatus().equals("PENDING"))
				userForms2.add(ob);
		}
		if(userForms2.size()==0)
		{
			mav.addObject("hasApplications2",false);
		}
		else {
			mav.addObject("hasApplications2", true);
			mav.addObject("userForms2", userForms2); 
			
			System.out.println(userForms2);
		}
		List<OnlineRegistrationFrom> a3 = this.ofrepo.findByDistrict(name);
		List<OnlineRegistrationFrom> userForms3 = new ArrayList<OnlineRegistrationFrom>();
		for(OnlineRegistrationFrom ob : a3)
		{
			if(ob.getStatus().equals("PENDING"))
				userForms3.add(ob);
		}
		if(userForms3.size()==0)
		{
			mav.addObject("hasApplications3",false);
		}
		else {
			mav.addObject("hasApplications3", true);
			mav.addObject("userForms3", userForms3); 
		System.out.println(userForms3);
		}
		
		List<OnlineRegistrationTo> a4 = this.otrepo.findByDistrict(name);
		List<OnlineRegistrationTo> userForms4 = new ArrayList<OnlineRegistrationTo>();
		for(OnlineRegistrationTo ob : a4)
		{
			if(ob.getStatus().equals("PENDING"))
				userForms4.add(ob);
		}
		if(userForms4.size()==0)
		{
			mav.addObject("hasApplications4",false);
		}
		else {
			mav.addObject("hasApplications4", true);
		mav.addObject("userForms4", userForms4); 
		System.out.println(userForms4);
		}
		
		
		List<EmployeeRegistration> a5 = this.emprepo.findByDistrict(name);
		List<EmployeeRegistration> userForms5 = new ArrayList<EmployeeRegistration>();
		for(EmployeeRegistration ob : a5)
		{
			if(ob.getStatus().equals("PENDING"))
				userForms5.add(ob);
		}
		if(userForms5.size()==0)
		{
			mav.addObject("hasApplications5",false);
		}
		else {
			mav.addObject("hasApplications5", true);
		mav.addObject("userForms5", userForms5); 
		System.out.println(userForms5);
		}
		
		List<HealthFrom> a6 = this.hfrepo.findByDistrict(name);
		List<HealthFrom> userForms6 = new ArrayList<HealthFrom>();
		for(HealthFrom ob : a6)
		{
			if(ob.getStatus().equals("PENDING"))
				userForms6.add(ob);
		}
		if(userForms6.size()==0)
		{
			mav.addObject("hasApplications6",false);
		}
		else {
			mav.addObject("hasApplications6", true);
		mav.addObject("userForms6", userForms6); 
		System.out.println(userForms6);
		}
		
		List<HealthTo> a7 = this.htrepo.findByDistrict(name);
		List<HealthTo> userForms7 = new ArrayList<HealthTo>();
		for(HealthTo ob : a7)
		{
			if(ob.getStatus().equals("PENDING"))
				userForms7.add(ob);
		}
		if(userForms7.size()==0)
		{
			mav.addObject("hasApplications7",false);
		}
		else {
			mav.addObject("hasApplications7", true);
		mav.addObject("userForms7", userForms7); 
		System.out.println(userForms7);
		}
		
    	return mav;
	}
	
	@RequestMapping("/approved1/{aid}")
	public String approveMe(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<DomesticFrom> a = this.dfrepo.findByAid(aid);
		System.out.println(a.get(0));
		DomesticFrom ob = a.get(0);
		
		ob.setStatus("APPROVED");
		System.out.println(ob);
		dfservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/rejected1/{aid}")
	public String rejectMe(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<DomesticFrom> a = this.dfrepo.findByAid(aid);
		System.out.println(a.get(0));
		DomesticFrom ob = a.get(0);
		
		ob.setStatus("REJECTED");
		System.out.println(ob);
		dfservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	
	@RequestMapping("/approved2/{aid}")
	public String approveMe2(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<DomesticTo> a = this.dtrepo.findByAid(aid);
		System.out.println(a.get(0));
		DomesticTo ob = a.get(0);
		
		ob.setStatus("APPROVED");
		System.out.println(ob);
		dtservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/rejected2/{aid}")
	public String rejectMe2(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<DomesticTo> a = this.dtrepo.findByAid(aid);
		System.out.println(a.get(0));
		DomesticTo ob = a.get(0);
		
		ob.setStatus("REJECTED");
		System.out.println(ob);
		dtservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	
	@RequestMapping("/approved3/{aid}")
	public String approveMe3(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<OnlineRegistrationFrom> a = this.ofrepo.findByAid(aid);
		System.out.println(a.get(0));
		OnlineRegistrationFrom ob = a.get(0);
		
		ob.setStatus("APPROVED");
		System.out.println(ob);
		ofservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/rejected3/{aid}")
	public String rejectMe3(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<OnlineRegistrationFrom> a = this.ofrepo.findByAid(aid);
		System.out.println(a.get(0));
		OnlineRegistrationFrom ob = a.get(0);
		
		ob.setStatus("REJECTED");
		System.out.println(ob);
		ofservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/approved4/{aid}")
	public String approveMe4(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<OnlineRegistrationTo> a = this.otrepo.findByAid(aid);
		System.out.println(a.get(0));
		OnlineRegistrationTo ob = a.get(0);
		
		ob.setStatus("APPROVED");
		System.out.println(ob);
		otservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/rejected4/{aid}")
	public String rejectMe4(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<OnlineRegistrationTo> a = this.otrepo.findByAid(aid);
		System.out.println(a.get(0));
		OnlineRegistrationTo ob = a.get(0);
		
		ob.setStatus("REJECTED");
		System.out.println(ob);
		otservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/approved5/{aid}")
	public String approveMe5(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<EmployeeRegistration> a = this.emprepo.findByAid(aid);
		System.out.println(a.get(0));
		EmployeeRegistration ob = a.get(0);
		
		ob.setStatus("APPROVED");
		System.out.println(ob);
		empservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/rejected5/{aid}")
	public String rejectMe5(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<EmployeeRegistration> a = this.emprepo.findByAid(aid);
		System.out.println(a.get(0));
		EmployeeRegistration ob = a.get(0);
		
		ob.setStatus("REJECTED");
		System.out.println(ob);
		empservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	
	@RequestMapping("/approved6/{aid}")
	public String approveMe6(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<HealthFrom> a = this.hfrepo.findByAid(aid);
		System.out.println(a.get(0));
		HealthFrom ob = a.get(0);
		
		ob.setStatus("APPROVED");
		System.out.println(ob);
		hfservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/rejected6/{aid}")
	public String rejectMe6(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<HealthFrom> a = this.hfrepo.findByAid(aid);
		System.out.println(a.get(0));
		HealthFrom ob = a.get(0);
		
		ob.setStatus("REJECTED");
		System.out.println(ob);
		hfservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	

	@RequestMapping("/approved7/{aid}")
	public String approveMe7(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<HealthTo> a = this.htrepo.findByAid(aid);
		System.out.println(a.get(0));
		HealthTo ob = a.get(0);
		
		ob.setStatus("APPROVED");
		System.out.println(ob);
		htservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/rejected7/{aid}")
	public String rejectMe7(@PathVariable("aid") String aid)
	{
		System.out.println(aid);
		List<HealthTo> a = this.htrepo.findByAid(aid);
		System.out.println(a.get(0));
		HealthTo ob = a.get(0);
		
		ob.setStatus("REJECTED");
		System.out.println(ob);
		htservice.saveToDb(ob);
		return "redirect:/home";
	}
	
	@RequestMapping("/login")
	public String showLogin(ModelMap model)
	{
		
		return "login";
	}
	
	
//	@RequestMapping(value="/login",method = RequestMethod.POST)
//	public void showLogin1(ModelMap model, @RequestParam String district)
//	{
//		System.out.println(district);/
//		model.addAttribute("district", district);
//		
//		
//	}
	@RequestMapping("/logout")
	public String showLogout()
	{
		return "logout";
	}
	
	

}
