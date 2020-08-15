package com.org.epassportal.Covid_19.Epass.Portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.epassportal.Covid_19.Epass.Portal.model.HealthFrom;
import com.org.epassportal.Covid_19.Epass.Portal.repository.HealthFromRepository;

@Service
public class HealthFromSerivce {
	
	@Autowired
	private HealthFromRepository healthfromrepo;
	
	public HealthFrom saveToDb(HealthFrom ob)
	{
		return healthfromrepo.save(ob);
	}
	
	

}
