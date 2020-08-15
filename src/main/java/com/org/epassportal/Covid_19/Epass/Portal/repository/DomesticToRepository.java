package com.org.epassportal.Covid_19.Epass.Portal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.org.epassportal.Covid_19.Epass.Portal.model.DomesticTo;

@Repository
public interface DomesticToRepository extends JpaRepository<DomesticTo, Long>{
	public List<DomesticTo> findByAid(String aid);
	
	public List<DomesticTo> findByDistrict(String district);
}
