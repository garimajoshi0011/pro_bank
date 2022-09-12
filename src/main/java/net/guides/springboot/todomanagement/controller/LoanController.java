package net.guides.springboot.todomanagement.controller;

import net.guides.springboot.todomanagement.model.FundTransfer;
import net.guides.springboot.todomanagement.model.Loan;
import net.guides.springboot.todomanagement.model.User;
import net.guides.springboot.todomanagement.service.LoanService;
import net.guides.springboot.todomanagement.util.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoanController {

	@Autowired()
	private LoanService loanService;

	@RequestMapping(value = "/loan", method = RequestMethod.GET)
	public String showAddTodoPage(ModelMap model) {
		model.addAttribute("loan", new Loan());
		return "loan";
	}


	@RequestMapping(value = "/loan", method = RequestMethod.POST)
	public String addLoan(ModelMap model, Loan loan, BindingResult result) {

		if (result.hasErrors()) {
			return "loan";
		}


		loan.setStatus(Status.INITIATE);
		loanService.saveLoan(loan);
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

	@RequestMapping(value = "/update-loan", method = RequestMethod.GET)
	public String updateLoan(@RequestParam long id, ModelMap model) {
		Loan loan = loanService.getloanById(id);
		model.put("loanbean", loan);
		return "loan";
	}

	@RequestMapping(value = "/update-loan", method = RequestMethod.POST)
	public String updateLoan(Loan loan, BindingResult result) {
		if (result.hasErrors()) {
			return "loan";
		}
		loanService.saveLoan(loan);
		return "message";
	}


}




