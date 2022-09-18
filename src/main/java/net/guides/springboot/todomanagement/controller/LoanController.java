package net.guides.springboot.todomanagement.controller;

import net.guides.springboot.todomanagement.model.Loan;
import net.guides.springboot.todomanagement.service.LoanService;
import net.guides.springboot.todomanagement.util.Status;
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
public class LoanController {

	@Autowired()
	private LoanService loanService;

	@RequestMapping(value = "/loan", method = RequestMethod.GET)
	public String addLoan(ModelMap model) {
		model.addAttribute("loan", new Loan());
		updateModel(model);
		return "loan";
	}


	@RequestMapping(value = "/loan", method = RequestMethod.POST)
	public String addLoan(ModelMap model, Loan loan, BindingResult result) {

		if (result.hasErrors()) {
			return "loan";
		}
		loan.setStatus(Status.INITIATE);
		loanService.saveLoan(loan);
		model.addAttribute("message","Record Added Successfully");
		return "message";
	}

	@RequestMapping(value = "/list-loan", method = RequestMethod.GET)
	public String showTodos(ModelMap model) {
		// String name = getLoggedInUserName(model);
		model.put("loans", loanService.getLoans());
		return "list-loan";
	}

	@RequestMapping(value = "/approve-loan", method = RequestMethod.GET)
	public String approveLoan(@RequestParam long id) {
		loanService.updateStatus(id, Status.APPROVED);
		// service.deleteTodo(id);
		return "redirect:/list-loan";
	}

	@RequestMapping(value = "/reject-loan", method = RequestMethod.GET)
	public String rejectLoan(@RequestParam long id) {
		loanService.updateStatus(id, Status.REJECTED);
		// service.deleteTodo(id);
		return "redirect:/list-loan";
	}

	@RequestMapping(value = "/delete-loan", method = RequestMethod.GET)
	public String deleteLoan(@RequestParam long id) {
		loanService.deleteLoan(id);
		// service.deleteTodo(id);
		return "redirect:/list-loan";

	}
	@RequestMapping(value = "/view-loan", method = RequestMethod.GET)
	public String viewLoan(@RequestParam long id, ModelMap model) {
		Loan loan = loanService.getloanById(id);
		model.put("loan", loan);
		return "viewloan";
	}

	@RequestMapping(value = "/update-loan", method = RequestMethod.GET)
	public String updateLoan(@RequestParam long id, ModelMap model) {
		Loan loan = loanService.getloanById(id);
		model.put("loan", loan);
		updateModel(model);
		return "loan";
	}

	@RequestMapping(value = "/update-loan", method = RequestMethod.POST)
	public String updateLoan(Loan loan, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "loan";
		}
		loanService.saveLoan(loan);
		model.addAttribute("message","Record Updated Successfully");
		return "message";
	}

	private void updateModel(ModelMap model){
		Map< String, String > complaintType = new HashMap<>();
		complaintType.put("Account", "Account");
		complaintType.put("Loan", "Loan");
		complaintType.put("CreditCard", "CreditCard");
		complaintType.put("Other", "Other");
		model.addAttribute("complainttype",complaintType);

		Map< String, String > loanType = new HashMap<>();

		loanType.put("Home Loan", "Home Loan");
		loanType.put("Personal Loan", "Personal Loan");
		loanType.put("Car Loan", "Car Loan");

		Map< String, String > duration = new HashMap<>();
		duration.put("1", "1");
		duration.put("2", "2");
		duration.put("3", "3");
		duration.put("4", "4");
		duration.put("5", "5");

		model.addAttribute("loantype",loanType);
		model.addAttribute("duration",duration);
	}
}




