package com.org.epassportal.Covid_19.Epass.Portal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticFrom;

@Repository
public interface DomesticFromRepository extends JpaRepository<DomesticFrom, Long>{
	public List<DomesticFrom> findByAid(String aid);
	
	public List<DomesticFrom> findByDistrict(String district);
}
