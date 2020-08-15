package com.org.epassportal.Covid_19.Epass.Portal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticFrom;
import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationFrom;

@Repository
public interface OnlineRegistrationFromRepository extends JpaRepository<OnlineRegistrationFrom, Long> {
	
	public List<OnlineRegistrationFrom> findByAid(String aid);
	
	public List<OnlineRegistrationFrom> findByDistrict(String district);

}
