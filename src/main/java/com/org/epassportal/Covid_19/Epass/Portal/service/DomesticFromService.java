package com.org.epassportal.Covid_19.Epass.Portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticFrom;
import com.org.epassportal.Covid_19.Epass.Portal.repository.DomesticFromRepository;

@Service
public class DomesticFromService {
	
	@Autowired
	private DomesticFromRepository domesticfromrepo;
	
	public DomesticFrom saveToDb(DomesticFrom favactor) {
		return domesticfromrepo.save(favactor);
		
	}

}
