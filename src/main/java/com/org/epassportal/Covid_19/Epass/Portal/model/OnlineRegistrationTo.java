package com.org.epassportal.Covid_19.Epass.Portal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class OnlineRegistrationTo {
	

	@Id
	@GeneratedValue
	private Long id;
	private String aid;
	
	private String name;
	private String age;
	private String mno;
	private String gender;
	private String adno;
	private String email;
	
	private String purposeOfTravel;
	private String isHealthOk;
	private String count;
	private String contactWith;
	
	private String state;
	private String district;
	private String mandal;
	private String landmark;
	private String zoneType;
	

	private String otherState;
	private String otherDistrict;
	private String otherMandal;
	private String otherLandmark;
	private String otherZoneType;

	
	private String status;
	private String remarks;



}
