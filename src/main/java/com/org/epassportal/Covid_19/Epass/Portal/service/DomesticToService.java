package com.org.epassportal.Covid_19.Epass.Portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticFrom;
import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticTo;
import com.org.epassportal.Covid_19.Epass.Portal.repository.DomesticFromRepository;
import com.org.epassportal.Covid_19.Epass.Portal.repository.DomesticToRepository;

@Service
public class DomesticToService {
	
	@Autowired
	private DomesticToRepository domestictorepo;
	
	public DomesticTo saveToDb(DomesticTo favactor) {
		return domestictorepo.save(favactor);
		
		
	}

}
