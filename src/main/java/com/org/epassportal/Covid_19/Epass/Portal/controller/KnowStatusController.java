package com.org.epassportal.Covid_19.Epass.Portal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
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

@Controller
public class KnowStatusController {
	
	
	@Autowired
	private DomesticFromRepository dfrepo;
	@Autowired
	private DomesticToRepository dtrepo;
	@Autowired
	private OnlineRegistrationFromRepository ofrepo;
	@Autowired
	private OnlineRegistrationToRepository otrepo;
	@Autowired
	private EmployeeRegistrationRepository erepo;
	@Autowired
	private HealthFromRepository hfrepo;
	@Autowired
	private HealthToRepository htrepo;

	@RequestMapping("/knowStatus")
	public String showKnowStatus()
	{
		return "knowStatus";
	}
	@RequestMapping("/domesticFromGetDetails")
	public ModelAndView showDomesticFromGetDetails()
	{
		ModelAndView mav = new ModelAndView("domesticFromGetDetails") ;
        List<DomesticFrom> userForms = this.dfrepo.findByAid("DF02086744");
        mav.addObject("userForms", userForms);  
        System.out.println(userForms);
        return mav;
		
	}
	
	@RequestMapping("/getDetails")
	public ModelAndView getStatus(ModelMap map,@RequestParam String aid,@RequestParam String type)
	{
		if(type.equals("domestic_from")) {
			ModelAndView mav = new ModelAndView("domesticFromGetDetails") ;
	        List<DomesticFrom> userForms = this.dfrepo.findByAid(aid);
	        mav.addObject("userForms", userForms);  
	        System.out.println(aid.charAt(2)+" "+aid);
	        map.addAttribute("date", aid.charAt(2)+""+aid.charAt(3)+" - "+aid.charAt(4)+aid.charAt(5)+" - 2020");
	        map.addAttribute("type", "Domestic Pass");
	        map.addAttribute("aid", aid);
	        return mav;
		}
		else if(type.equals("domestic_to"))
		{
			ModelAndView mav = new ModelAndView("domesticToGetDetails") ;
	        List<DomesticTo> userForms = this.dtrepo.findByAid(aid);
	        mav.addObject("userForms", userForms);  
	        System.out.println(aid.charAt(2)+" "+aid);
	        map.addAttribute("date", aid.charAt(2)+""+aid.charAt(3)+" - "+aid.charAt(4)+aid.charAt(5)+" - 2020");
	        map.addAttribute("type", "Domestic Pass");
	        map.addAttribute("aid", aid);
	        return mav;
		}
		else if(type.equals("online_registration_from"))
		{
			ModelAndView mav = new ModelAndView("onlineFromGetDetails") ;
	        List<OnlineRegistrationFrom> userForms = this.ofrepo.findByAid(aid);
	        mav.addObject("userForms", userForms);  
	        System.out.println(aid.charAt(2)+" "+aid);
	        map.addAttribute("date", aid.charAt(2)+""+aid.charAt(3)+" - "+aid.charAt(4)+aid.charAt(5)+" - 2020");
	        map.addAttribute("type", "Online Registration Pass");
	        map.addAttribute("aid", aid);
	        return mav;
		}
		else if(type.equals("online_registration_to"))
		{
			ModelAndView mav = new ModelAndView("onlineToGetDetails") ;
	        List<OnlineRegistrationTo> userForms = this.otrepo.findByAid(aid);
	        mav.addObject("userForms", userForms);  
	        System.out.println(aid.charAt(2)+" "+aid);
	        map.addAttribute("date", aid.charAt(2)+""+aid.charAt(3)+" - "+aid.charAt(4)+aid.charAt(5)+" - 2020");
	        map.addAttribute("type", "Online Registration Pass");
	        map.addAttribute("aid", aid);
	        return mav;
		}
		else if(type.equals("employee_registration"))
		{
			ModelAndView mav = new ModelAndView("employeeGetDetails") ;
	        List<EmployeeRegistration> userForms = this.erepo.findByAid(aid);
	        mav.addObject("userForms", userForms);  
	        System.out.println(aid.charAt(2)+" "+aid);
	        map.addAttribute("date", aid.charAt(2)+""+aid.charAt(3)+" - "+aid.charAt(4)+aid.charAt(5)+" - 2020");
	        map.addAttribute("type", "Employee Pass");
	        map.addAttribute("aid", aid);
	        return mav;
		}
		else if(type.equals("health_from"))
		{
			ModelAndView mav = new ModelAndView("healthFromGetDetails") ;
	        List<HealthFrom> userForms = this.hfrepo.findByAid(aid);
	        mav.addObject("userForms", userForms);  
	        System.out.println(aid.charAt(2)+" "+aid);
	        map.addAttribute("date", aid.charAt(2)+""+aid.charAt(3)+" - "+aid.charAt(4)+aid.charAt(5)+" - 2020");
	        map.addAttribute("type", "Health Pass");
	        map.addAttribute("aid", aid);
	        return mav;
		}
		else if(type.equals("health_to"))
		{
			ModelAndView mav = new ModelAndView("healthToGetDetails") ;
	        List<HealthTo> userForms = this.htrepo.findByAid(aid);
	        mav.addObject("userForms", userForms);  
	        System.out.println(aid.charAt(2)+" "+aid);
	        map.addAttribute("date", aid.charAt(2)+""+aid.charAt(3)+" - "+aid.charAt(4)+aid.charAt(5)+" - 2020");
	        map.addAttribute("type", "Health Pass");
	        map.addAttribute("aid", aid);
	        return mav;
		}
		else {
			ModelAndView mav = new ModelAndView("noApplicationFound") ;
			return mav;
		}
	}
//	@RequestMapping("/getDetails")
//	public String showGetDetails()
//	{
//		return "noApplicationFound";
//		
//	}
}
