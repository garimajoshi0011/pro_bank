package net.guides.springboot.probank.controller;

import net.guides.springboot.probank.model.Complaint;
import net.guides.springboot.probank.service.ComplaintService;
import net.guides.springboot.probank.util.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class ComplaintController {
    @Autowired()
    private ComplaintService complaintService;

    @RequestMapping(value = "/addcomplaint", method = RequestMethod.GET)
    public String addComplaint(ModelMap model) {

        model.addAttribute("complaint", new Complaint());
        updateModel(model);
        return "complaint";
    }

    @RequestMapping(value = "/addcomplaint", method = RequestMethod.POST)
    public String addComplaint(ModelMap model, Complaint complaint, BindingResult result) {
        if (result.hasErrors()) {
            return "complaint";
        }
        complaint.setStatus(Status.INITIATE);
        complaintService.saveComplaint(complaint);
        model.addAttribute("message", "Record Added Successfully");
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

    @RequestMapping(value = "/view-complaint", method = RequestMethod.GET)
    public String viewComplaint(@RequestParam long id, ModelMap model) {
        Complaint complaint = complaintService.getComplaintById(id);
        model.put("complaint", complaint);
        return "viewcomplaint";
    }

    //Added

    @RequestMapping(value = "/update-complaint", method = RequestMethod.GET)
    public String updateComplaint(@RequestParam String id, ModelMap model) {
        Complaint complaint = complaintService.getComplaintById(Long.parseLong(id));
        model.put("complaint", complaint);
        updateModel(model);
        model.addAttribute("message", "Record Updated Successfully");
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

    private void updateModel(ModelMap model) {
        Map<String, String> complaintType = new HashMap<>();
        complaintType.put("Account", "Account");
        complaintType.put("Loan", "Loan");
        complaintType.put("CreditCard", "CreditCard");
        complaintType.put("Other", "Other");
        model.addAttribute("complainttype", complaintType);
    }

}