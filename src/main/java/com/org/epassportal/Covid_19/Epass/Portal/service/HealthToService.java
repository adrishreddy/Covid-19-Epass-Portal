package com.org.epassportal.Covid_19.Epass.Portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.epassportal.Covid_19.Epass.Portal.model.HealthTo;
import com.org.epassportal.Covid_19.Epass.Portal.repository.HealthToRepository;

@Service
public class HealthToService {
	
	@Autowired
	private HealthToRepository healthtorepo;
	
	public HealthTo saveToDb(HealthTo ob)
	{
		return healthtorepo.save(ob);
	}

}
