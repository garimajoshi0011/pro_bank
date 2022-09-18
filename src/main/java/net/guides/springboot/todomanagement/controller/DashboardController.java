package net.guides.springboot.todomanagement.controller;

import net.guides.springboot.todomanagement.model.MyUserDetail;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class DashboardController {
   @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String showDashboard(ModelMap model, HttpSession session) {
       System.out.println("Dashboad url called");
        model.addAttribute("message","Welcome to the Pro Bank website");
        session.setAttribute("user_name",getLoggedInUserName(model));
        return "message";
    }

    @RequestMapping(value = "/uname", method = RequestMethod.GET)
    public void getUserName(ModelMap model) {
        model.addAttribute("user_name",getLoggedInUserName(model));
    }

    private String getLoggedInUserName(ModelMap model) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof MyUserDetail) {
            return ((MyUserDetail) principal).getUsername();
        }

        return principal.toString();
    }

}


