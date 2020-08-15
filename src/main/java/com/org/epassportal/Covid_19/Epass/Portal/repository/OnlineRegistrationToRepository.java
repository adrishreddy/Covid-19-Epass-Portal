package com.org.epassportal.Covid_19.Epass.Portal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationFrom;
import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationTo;

public interface OnlineRegistrationToRepository extends JpaRepository<OnlineRegistrationTo, Long>{

	public List<OnlineRegistrationTo> findByAid(String aid);
	
	public List<OnlineRegistrationTo> findByDistrict(String District);

}
