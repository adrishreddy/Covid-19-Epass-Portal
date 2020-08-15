package com.org.epassportal.Covid_19.Epass.Portal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticTo;
import com.org.epassportal.Covid_19.Epass.Portal.model.EmployeeRegistration;
import com.org.epassportal.Covid_19.Epass.Portal.model.OnlineRegistrationFrom;

@Repository
public interface EmployeeRegistrationRepository extends JpaRepository<EmployeeRegistration, Long> {

	public List<EmployeeRegistration> findByAid(String aid);

	public List<EmployeeRegistration> findByDistrict(String district);
}
