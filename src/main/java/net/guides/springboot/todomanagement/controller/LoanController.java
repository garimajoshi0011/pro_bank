package net.guides.springboot.todomanagement.controller;

import net.guides.springboot.todomanagement.model.Fundtransaction;
import net.guides.springboot.todomanagement.model.Loan;
import net.guides.springboot.todomanagement.model.Todo;
import net.guides.springboot.todomanagement.model.User;
import net.guides.springboot.todomanagement.service.FundtransferService;
import net.guides.springboot.todomanagement.service.ITodoService;
import net.guides.springboot.todomanagement.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class LoanController {

	@Autowired()
	private LoanService loanService;


	@RequestMapping(value = "/loan", method = RequestMethod.GET)
	public String showAddTodoPage(ModelMap model) {
		model.addAttribute("loan", new Loan());
		return "loan";
	}
}

