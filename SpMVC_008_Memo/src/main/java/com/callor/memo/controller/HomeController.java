package com.callor.memo.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.memo.model.MemoDTO;
import com.callor.memo.service.MemoService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	
	private final MemoService memoService;
	
	public HomeController(MemoService memoService) {
		this.memoService = memoService;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession httpSession) {
		
		String username = (String) httpSession.getAttribute("USERNAME");
		
		if(username != null) {
			List<MemoDTO> memos = memoService.findByAuthor(username);
			model.addAttribute("MEMOS", memos);
		}
		return "home";
	}
	
}
