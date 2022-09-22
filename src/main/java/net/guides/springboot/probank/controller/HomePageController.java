package net.guides.springboot.probank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class HomePageController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String homepage(HttpServletRequest request,
                        HttpServletResponse response) {
        System.out.println("Hi");
        //Authentication authentication = SecurityContextHolder.getContext()
        //.getAuthentication();

        //if (authentication != null) {
        //	new SecurityContextLogoutHandler().logout(request, response,
        //			authentication);
        //loginlogin}

        return "homepage";
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpServletRequest request,
                        HttpServletResponse response) {
        System.out.println("Hi");
        //Authentication authentication = SecurityContextHolder.getContext()
        //.getAuthentication();

        //if (authentication != null) {
        //	new SecurityContextLogoutHandler().logout(request, response,
        //			authentication);
        //loginlogin}

        return "login";
    }

    @RequestMapping(value = "/redirect", method = RequestMethod.GET)
    public String redirect(HttpServletRequest request,
                        HttpServletResponse response) {
        System.out.println("Hi mredirect");
        //Authentication authentication = SecurityContextHolder.getContext()
        //.getAuthentication();

        //if (authentication != null) {
        //	new SecurityContextLogoutHandler().logout(request, response,
        //			authentication);
        //loginlogin}

        return "login";
    }

}
