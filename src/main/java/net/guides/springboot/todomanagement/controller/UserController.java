package net.guides.springboot.todomanagement.controller;

import net.guides.springboot.todomanagement.model.Loan;
import net.guides.springboot.todomanagement.model.Todo;
import net.guides.springboot.todomanagement.model.User;
import net.guides.springboot.todomanagement.service.ITodoService;
import net.guides.springboot.todomanagement.service.UserService;
import net.guides.springboot.todomanagement.util.Status;
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
public class UserController {
	@Autowired()
	private UserService userService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		// Date - dd/MM/yyyy
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	/*@RequestMapping(value = "/list-user", method = RequestMethod.GET)
	public String showTodos(ModelMap model) {
		String name = getLoggedInUserName(model);
		// model.put("todos", service.retrieveTodos(name));
		return "user";
	}*/


	private String getLoggedInUserName(ModelMap model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			return ((UserDetails) principal).getUsername();
		}

		return principal.toString();
	}

	@RequestMapping(value = "/add-user", method = RequestMethod.GET)
	public String showAddTodoPage(ModelMap model) {
		model.addAttribute("user", new User());
		return "user";
	}

	@RequestMapping(value = "/add-user", method = RequestMethod.POST)
	public String addUser(ModelMap model, User user, BindingResult result) {
		if (result.hasErrors()) {
			return "user";
		}
		user.setStatus(Status.INITIATE);
		userService.saveUser(user);
		return "message";
	}
	@RequestMapping(value = "/list-user", method = RequestMethod.GET)
	public String showTodos(ModelMap model) {
		// String name = getLoggedInUserName(model);
		model.put("users", userService.getUsers());
		return "list-user";
	}

	@RequestMapping(value = "/approve-user", method = RequestMethod.GET)
	public String approveUser(@RequestParam long id) {
		userService.updateStatus(id, Status.APPROVED);
		// service.deleteTodo(id);
		return "redirect:/list-user";
	}

	@RequestMapping(value = "/reject-user", method = RequestMethod.GET)
	public String rejectUser(@RequestParam long id) {
		userService.updateStatus(id, Status.REJECTED);
		// service.deleteTodo(id);
		return "redirect:/list-user";
	}

	@RequestMapping(value = "/delete-user", method = RequestMethod.GET)
	public String deleteUser(@RequestParam long id) {
		userService.deleteUser(id);
		// service.deleteTodo(id);
		return "redirect:/list-user";
	}

	@RequestMapping(value = "/update-user", method = RequestMethod.GET)
	public String updateUser(@RequestParam long id, ModelMap model) {
		User user = userService.getUserById(id);
		model.put("userbean", user);
		return "user";
	}

	@RequestMapping(value = "/update-user", method = RequestMethod.POST)
	public String updateUser(User user, BindingResult result) {
		if (result.hasErrors()) {
			return "user";
		}
		userService.saveUser(user);
		return "message";
	}

}

