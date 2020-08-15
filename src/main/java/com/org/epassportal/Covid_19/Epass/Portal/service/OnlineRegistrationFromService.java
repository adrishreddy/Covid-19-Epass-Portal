package com.org.epassportal.Covid_19.Epass.Portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticTo;
import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationFrom;
import com.org.epassportal.Covid_19.Epass.Portal.repository.DomesticToRepository;
import com.org.epassportal.Covid_19.Epass.Portal.repository.OnlineRegistrationFromRepository;

@Service
public class OnlineRegistrationFromService {
	
	@Autowired
	private OnlineRegistrationFromRepository onlinefromrepo;
	
	public OnlineRegistrationFrom saveToDb(OnlineRegistrationFrom favactor) {
		return onlinefromrepo.save(favactor);
		
		
	}

}
