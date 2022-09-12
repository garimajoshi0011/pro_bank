package net.guides.springboot.todomanagement.controller;

import net.guides.springboot.todomanagement.model.Account;
import net.guides.springboot.todomanagement.model.Complaint;
import net.guides.springboot.todomanagement.model.Loan;
import net.guides.springboot.todomanagement.service.AccountService;
import net.guides.springboot.todomanagement.util.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Objects;

@Controller
public class AccountController {
    @Autowired()
    private AccountService accountService;

    @RequestMapping(value = "/account", method = RequestMethod.GET)
    public String showAddTodoPage(ModelMap model) {
        model.addAttribute("account", new Account());
        return "account";
    }

    @RequestMapping(value = "/account", method = RequestMethod.POST)
    public String addAmount(Account account, BindingResult result) {
        if (result.hasErrors()) {
            return "account";
        }
        account.setStatus(Status.INITIATE);
        accountService.saveAccount(account);
        return "message";
    }

    @RequestMapping(value = "/list-account", method = RequestMethod.GET)
    public String showTodos(ModelMap model) {
       // String name = getLoggedInUserName(model);
        model.put("accounts", accountService.getAccounts());
        return "list-account";
    }

    @RequestMapping(value = "/approve-account", method = RequestMethod.GET)
    public String approveAccount(@RequestParam long id) {
        accountService.updateStatus(id, Status.APPROVED);
        // service.deleteTodo(id);
        return "redirect:/list-account";
    }

    @RequestMapping(value = "/reject-account", method = RequestMethod.GET)
    public String rejectAccount(@RequestParam long id) {
        accountService.updateStatus(id, Status.REJECTED);
        // service.deleteTodo(id);
        return "redirect:/list-account";
    }

    @RequestMapping(value = "/delete-account", method = RequestMethod.GET)
    public String deleteAccount(@RequestParam long id) {
        accountService.deleteAccount(id);
        // service.deleteTodo(id);
        return "redirect:/list-account";
    }

    @RequestMapping(value = "/update-account", method = RequestMethod.GET)
    public String updateAccount(@RequestParam long id, ModelMap model) {
        Account account = accountService.getAccountById(id);
        model.put("accountbean", account);
        return "account";
    }

    @RequestMapping(value = "/update-account", method = RequestMethod.POST)
    public String updateAccount(Account account, BindingResult result) {
        if (result.hasErrors()) {
            return "account";
        }
        accountService.saveAccount(account);
        return "message";
    }

}


