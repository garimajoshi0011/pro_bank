package net.guides.springboot.probank.controller;

import net.guides.springboot.probank.model.FundTransfer;
import net.guides.springboot.probank.service.FundTransferService;
import net.guides.springboot.probank.util.Status;
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
        return "fundtransfer";
    }

    @RequestMapping(value = "/fundtransfer", method = RequestMethod.POST)
    public String addFundTransfer(ModelMap model, FundTransfer fundTransfer, BindingResult result) {
        if (result.hasErrors()) {
            return "fundtransfer";
        }
        fundTransfer.setStatus(Status.INITIATE);
        fundtransferService.saveFundTransfer(fundTransfer);
        model.addAttribute("message", "Record Added Successfully");
        return "message";
    }

    @RequestMapping(value = "/list-fundtransfer", method = RequestMethod.GET)
    public String showTodos(ModelMap model) {
        // String name = getLoggedInUserName(model);
        model.put("fundsTransfer", fundtransferService.getfundTransfer());
        return "list-fundtransfer";
    }

    @RequestMapping(value = "/approve-fundtransfer", method = RequestMethod.GET)
    public String approveFundTransfer(@RequestParam long id) {
        fundtransferService.updateStatus(id, Status.APPROVED);
        // service.deleteTodo(id);
        return "redirect:/list-fundtransfer";
    }

    @RequestMapping(value = "/reject-fundtransfer", method = RequestMethod.GET)
    public String rejectFundTransfer(@RequestParam long id) {
        fundtransferService.updateStatus(id, Status.REJECTED);
        // service.deleteTodo(id);
        return "redirect:/list-fundtransfer";
    }

    @RequestMapping(value = "/delete-fundtransfer", method = RequestMethod.GET)
    public String deleteCFundTransfer(@RequestParam long id) {
        fundtransferService.deleteFundTransfer(id);
        // service.deleteTodo(id);
        return "redirect:/list-fundtransfer";

    }

    @RequestMapping(value = "/update-fundtransfer", method = RequestMethod.GET)
    public String updateFundTransfer(@RequestParam long id, ModelMap model) {
        FundTransfer fundTransfer = fundtransferService.getfundTransferById(id);
        model.put("fundTransfer", fundTransfer);
        model.addAttribute("message", "Record Updated Successfully");
        return "fundtransfer";
    }

    @RequestMapping(value = "/update-fundtransfer", method = RequestMethod.POST)
    public String updateFundTransfer(FundTransfer fundTransfer, BindingResult result) {
        if (result.hasErrors()) {
            return "fundTransfer";
        }
        fundtransferService.saveFundTransfer(fundTransfer);
        return "message";
    }


}
