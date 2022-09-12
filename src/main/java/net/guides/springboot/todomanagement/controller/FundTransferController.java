package net.guides.springboot.todomanagement.controller;

import net.guides.springboot.todomanagement.model.Account;
import net.guides.springboot.todomanagement.model.FundTransfer;
import net.guides.springboot.todomanagement.model.User;
import net.guides.springboot.todomanagement.service.FundTransferService;
import net.guides.springboot.todomanagement.util.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FundTransferController {
	@Autowired()
	private FundTransferService fundtransferService;


	@RequestMapping(value = "/fundtransfer", method = RequestMethod.GET)
	public String showAddTodoPage(ModelMap model) {
		model.addAttribute("fundTransfer", new FundTransfer());
		return "fundTransfer";
	}

	@RequestMapping(value = "/fundtransfer", method = RequestMethod.POST)
	public String addFundTransfer(ModelMap model, FundTransfer fundTransfer, BindingResult result) {
		if (result.hasErrors()) {
			return "fundTransfer";
		}
		fundTransfer.setStatus(Status.INITIATE);
		fundtransferService.saveFundTransfer(fundTransfer);
		return "message";
	}

	@RequestMapping(value = "/list-fundtransfer", method = RequestMethod.GET)
	public String showTodos(ModelMap model) {
		// String name = getLoggedInUserName(model);
		model.put("fundsTransfer", fundtransferService.getfundTransfer());
		return "list-fundTransfer";
	}

	@RequestMapping(value = "/approve-fundtransfer", method = RequestMethod.GET)
	public String approveFundTransfer(@RequestParam long id) {
		fundtransferService.updateStatus(id, Status.APPROVED);
		// service.deleteTodo(id);
		return "redirect:/list-fundTransfer";
	}

	@RequestMapping(value = "/reject-fundTransfer", method = RequestMethod.GET)
	public String rejectFundTransfer(@RequestParam long id) {
		fundtransferService.updateStatus(id, Status.REJECTED);
		// service.deleteTodo(id);
		return "redirect:/list-fundTransfer";
	}

	@RequestMapping(value = "/delete-fundTransfer", method = RequestMethod.GET)
	public String deleteCFundTransfer(@RequestParam long id) {
		fundtransferService.deleteFundTransfer(id);
		// service.deleteTodo(id);
		return "redirect:/ist-fundTransfer";

	}

	@RequestMapping(value = "/update-fundTransfer", method = RequestMethod.GET)
	public String updateFundTransfer(@RequestParam long id, ModelMap model) {
		FundTransfer fundTransfer = fundtransferService.getfundTransferById(id);
		model.put("fundTransferbean", fundTransfer);
		return "fundTransfer";
	}

	@RequestMapping(value = "/update-fundTransfer", method = RequestMethod.POST)
	public String updateFundTransfer(FundTransfer fundTransfer, BindingResult result) {
		if (result.hasErrors()) {
			return "fundTransfer";
		}
		fundtransferService.saveFundTransfer(fundTransfer);
		return "message";
	}


}
