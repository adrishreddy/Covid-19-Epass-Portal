package com.org.epassportal.Covid_19.Epass.Portal.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.epassportal.Covid_19.Epass.Portal.model.MessageModel;
import com.org.epassportal.Covid_19.Epass.Portal.model.OTPSystem;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Controller
public class SuccessController {

	private Map<String,MessageModel> msg_data = new HashMap<>();
	private final static String ACCOUNT_SID = "AC83a4c97db166b1864ea7a25e233f7f80";
	private final static String AUTH_ID = "f53b9c9a2824011d602c23600c398dfa";
	
	static {
		Twilio.init(ACCOUNT_SID,AUTH_ID);
	}
	
	@RequestMapping("/remindme/otp/{aid}")
	public String sendOTP(@PathVariable("aid") String aid)
	{
		
		MessageModel otpsystem = new MessageModel();
		//otpsystem.setMobileNumber(mobilenumber);
//		otpsystem.setOtp(String.valueOf(((int)(Math.random()*(10000 - 1000)))+1000));
//		otpsystem.setExpirydate(System.currentTimeMillis()+60000);
		//msg_data.put(mobilenumber,otpsystem);	
		Message.creator(new PhoneNumber("+917013325444"),new PhoneNumber("+12058574887"),"Pass Registration Successful. Your Application is "+aid).create();
		//return new ResponseEntity<Object>("OTP is sent successfully",HttpStatus.OK);
		return "redirect:/";
	}
}
