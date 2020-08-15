package com.org.epassportal.Covid_19.Epass.Portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationFrom;
import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationTo;
import com.org.epassportal.Covid_19.Epass.Portal.repository.OnlineRegistrationToRepository;

@Service
public class OnlineRegistrationToService {
	
	@Autowired
	private OnlineRegistrationToRepository onlinetorepo;
	
	public OnlineRegistrationTo saveToDb(OnlineRegistrationTo favactor) {
		return onlinetorepo.save(favactor);
		
		
	}


}
