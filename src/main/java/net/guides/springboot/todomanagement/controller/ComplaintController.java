package net.guides.springboot.todomanagement.controller;

import net.guides.springboot.todomanagement.model.Complaint;
import net.guides.springboot.todomanagement.model.Todo;
import net.guides.springboot.todomanagement.service.ComplaintService;
import net.guides.springboot.todomanagement.util.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ComplaintController {
	@Autowired()
	private ComplaintService complaintService;

	@RequestMapping(value = "/add-complaint", method = RequestMethod.GET)
	public String showAddTodoPage(ModelMap model) {
		model.addAttribute("complaintbean", new Complaint());
		return "complaint";
	}

	@RequestMapping(value = "/add-complaint", method = RequestMethod.POST)
	public String addComplaint(Complaint complaint, BindingResult result) {

		if (result.hasErrors()) {
			return "complaint";
		}

		complaint.setStatus(Status.INITIATE);
		complaintService.saveComplaint(complaint);
		return "message";
	}



	@RequestMapping(value = "/list-complaint", method = RequestMethod.GET)
	public String showTodos(ModelMap model) {
		// String name = getLoggedInUserName(model);
		model.put("complaints", complaintService.getComplaints());
		return "list-complaint";
	}

	@RequestMapping(value = "/approve-complaint", method = RequestMethod.GET)
	public String approveComplaint(@RequestParam long id) {
		complaintService.updateStatus(id, Status.APPROVED);
		// service.deleteTodo(id);
		return "redirect:/list-complaint";
	}

	@RequestMapping(value = "/reject-complaint", method = RequestMethod.GET)
	public String rejectComplaint(@RequestParam long id) {
		complaintService.updateStatus(id, Status.REJECTED);
		// service.deleteTodo(id);
		return "redirect:/list-complaint";
	}

	@RequestMapping(value = "/delete-complaint", method = RequestMethod.GET)
	public String deleteComplaint(@RequestParam long id) {
		complaintService.deleteComplaint(id);
		// service.deleteTodo(id);
		return "redirect:/list-complaint";

	}

	//Added

	@RequestMapping(value = "/update-complaint", method = RequestMethod.GET)
	public String updateComplaint(@RequestParam long id, ModelMap model) {
		Complaint complaint = complaintService.getComplaintById(id);
		model.put("complaintbean", complaint);
		return "complaint";
	}

	@RequestMapping(value = "/update-complaint", method = RequestMethod.POST)
	public String updateComplaint(Complaint complaint, BindingResult result) {
		if (result.hasErrors()) {
			return "complaint";
		}
		complaintService.saveComplaint(complaint);
		return "message";
	}
}