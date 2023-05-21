package com.somplace.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.somplace.domain.LoginCommand;
import com.somplace.domain.Member;
import com.somplace.service.MemberService;

@Controller
public class LoginController {
	
	private MemberService memberService;

	@Autowired
	public void setMeetingService(MemberService memberService) {
		this.memberService = memberService;
	}

}
