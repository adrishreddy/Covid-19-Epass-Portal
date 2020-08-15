package com.org.epassportal.Covid_19.Epass.Portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticTo;
import com.org.epassportal.Covid_19.Epass.Portal.model.EmployeeRegistration;
import com.org.epassportal.Covid_19.Epass.Portal.repository.DomesticToRepository;
import com.org.epassportal.Covid_19.Epass.Portal.repository.EmployeeRegistrationRepository;

@Service
public class EmployeeRegistrationService {
	
	@Autowired
	private EmployeeRegistrationRepository emprepo;
	
	public EmployeeRegistration saveToDb(EmployeeRegistration favactor) {
		return emprepo.save(favactor);
		
		
	}

}
