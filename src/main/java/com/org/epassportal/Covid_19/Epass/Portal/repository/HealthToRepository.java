package com.org.epassportal.Covid_19.Epass.Portal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.org.epassportal.Covid_19.Epass.Portal.model.EmployeeRegistration;
import com.org.epassportal.Covid_19.Epass.Portal.model.HealthFrom;
import com.org.epassportal.Covid_19.Epass.Portal.model.HealthTo;

@Repository
public interface HealthToRepository extends JpaRepository<HealthTo, Long>{
	
	public List<HealthTo> findByAid(String aid);
	public List<HealthTo> findByDistrict(String district);


}
