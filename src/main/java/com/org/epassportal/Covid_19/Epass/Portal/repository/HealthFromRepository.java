package com.org.epassportal.Covid_19.Epass.Portal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.org.epassportal.Covid_19.Epass.Portal.model.EmployeeRegistration;
import com.org.epassportal.Covid_19.Epass.Portal.model.HealthFrom;

@Repository
public interface HealthFromRepository extends JpaRepository<HealthFrom,Long>{
	public List<HealthFrom> findByAid(String aid);
	public List<HealthFrom> findByDistrict(String district);
}
