package com.org.epassportal.Covid_19.Epass.Portal.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.epassportal.Covid_19.Epass.Portal.model.OTPSystem;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Controller
public class OtpGeneratorController {
	
	private Map<String,OTPSystem> otp_data = new HashMap<>();
	private final static String ACCOUNT_SID = "AC83a4c97db166b1864ea7a25e233f7f80";
	private final static String AUTH_ID = "f53b9c9a2824011d602c23600c398dfa";
	
	static {
		Twilio.init(ACCOUNT_SID,AUTH_ID);
	}
	
	@RequestMapping("/otpVerify5")
	public String showOtpVerify5()
	{
		return "OtpGeneratorFive";
	}
	
	
	@RequestMapping("/otpverifyone")
	public String showOtpVerify1()
	{
		return "OtpGeneratorOne";
	}
	
	
	@RequestMapping("/otpverifytwo")
	public String showOtpVerify2()
	{
		return "OtpGeneratorTwo";
	}
	
	
	@RequestMapping("/otpverifythree")
	public String showOtpVerify3()
	{
		return "OtpGeneratorThree";
	}
	
	@RequestMapping("/otpverifyfour")
	public String showOtpVerify4()
	{
		return "OtpGeneratorFour";
	}
	
	@RequestMapping("/otpverifysix")
	public String showOtpVerify6()
	{
		return "OtpGeneratorSix";
	}
	
	@RequestMapping("/otpverifyseven")
	public String showOtpVerify7()
	{
		return "OtpGeneratorSeven";
	}
	
	
	@RequestMapping(value="/mobilenumbers/{mobilenumber}/otp", method=RequestMethod.GET)
	public ResponseEntity<Object> sendOTP(@PathVariable("mobilenumber") String mobilenumber)
	{
		
		OTPSystem otpsystem = new OTPSystem();
		otpsystem.setMobilenumber(mobilenumber);
		otpsystem.setOtp(String.valueOf(((int)(Math.random()*(10000 - 1000)))+1000));
		otpsystem.setExpirydate(System.currentTimeMillis()+60000);
		otp_data.put(mobilenumber,otpsystem);	
		Message.creator(new PhoneNumber(mobilenumber),new PhoneNumber("+12058574887"),"Your Otp is "+otpsystem.getOtp()).create();
		return new ResponseEntity<Object>("OTP is sent successfully",HttpStatus.OK);
	}
	
	@RequestMapping(value="/mobilenumbers/{mobilenumber}/verifyOtp", method=RequestMethod.PUT)
	public ResponseEntity<Object> verifyOTP(@PathVariable("mobilenumber") String mobilenumber, @RequestBody OTPSystem requestBodyOTPSystem)
	{
		
		System.out.println(requestBodyOTPSystem);
		
		if(requestBodyOTPSystem.getOtp() == null || requestBodyOTPSystem.getOtp().trim().length()<=0)
		{
			return new ResponseEntity<>("Please Provide OTP",HttpStatus.BAD_REQUEST);
		}
		if(otp_data.containsKey(mobilenumber))
		{
			OTPSystem otpSystem = otp_data.get(mobilenumber);
			if(otpSystem!=null)
			{
				if(otpSystem.getExpirydate()>=System.currentTimeMillis())
				{
					if(requestBodyOTPSystem.getOtp().equals(otpSystem.getOtp())) {
						otp_data.remove(mobilenumber);
						return new ResponseEntity<Object>("OTP is verified",HttpStatus.OK);
					}
					return new ResponseEntity<Object>("Invalid OTP",HttpStatus.BAD_REQUEST);
				}
				return new ResponseEntity<Object>("OTP is expired",HttpStatus.BAD_REQUEST);
			}
			return new ResponseEntity<Object>("Something went Wrong..!",HttpStatus.BAD_REQUEST);
		}
		return new ResponseEntity<Object>("Mobile number not found",HttpStatus.NOT_FOUND);
	}

	

}
