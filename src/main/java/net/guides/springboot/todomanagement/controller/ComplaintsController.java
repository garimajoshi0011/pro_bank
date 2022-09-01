package net.guides.springboot.todomanagement.controller;

import net.guides.springboot.todomanagement.model.Complaints;
import net.guides.springboot.todomanagement.service.ComplaintsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ComplaintsController {
	@Autowired()
	private ComplaintsService complaintsService;



	@RequestMapping(value = "/add-complain", method = RequestMethod.GET)
	public String showAddTodoPage(ModelMap model) {
		model.addAttribute("complain", new Complaints());
		return "complain";
	}

}
