package com.grownited.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.FeedbackEntity;
import com.grownited.repository.FeedbackRepository;

@Controller
public class FeedbackController {

	@Autowired
	FeedbackRepository repoFeedback;
	
	@GetMapping("feedback")
	public String feedback() {
		return "Feedback";
	}
	
//	@PostMapping("savefeedback")
//	public String saveFeedback(FeedbackEntity entityFeedback) {
//		System.out.println(entityFeedback.getFeedbackText());
//		System.out.println(entityFeedback.getType());
//		entityFeedback.setFeedbackDate(new Date());
//		repoFeedback.save(entityFeedback);
//		return "home";
//	}
	@GetMapping("listfeedback")
	public String listFeedback(Model model) {
		List<FeedbackEntity> feedbackList = repoFeedback.findAll();
		model.addAttribute("feedbackList", feedbackList);
		return "ListFeedback";
	}
}
