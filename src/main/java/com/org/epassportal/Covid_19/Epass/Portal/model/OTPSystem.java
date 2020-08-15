package com.org.epassportal.Covid_19.Epass.Portal.model;

public class OTPSystem {
	
	private String mobilenumber;
	private String otp;
	private Long expirydate;
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	public void setExpirydate(Long expirydate) {
		this.expirydate = expirydate;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public String getOtp() {
		return otp;
	}
	public Long getExpirydate() {
		return expirydate;
	}
	
	

}

