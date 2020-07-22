package com.alex.loginform.controllers;

import com.alex.loginform.model.User;
import com.alex.loginform.service.SecurityServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@AllArgsConstructor
public class UserController {

    private final SecurityServiceImpl securityService;


    @RequestMapping("/")
    public String showLoginPage(Model model) {
        model.addAttribute("userform", new User());
        return "login";
    }

    @RequestMapping(value = "/success", method = RequestMethod.POST)
    public String logIn(@Valid @ModelAttribute("userform") User user, BindingResult result, ModelMap modelMap) {

        if (securityService.logIn(user.getEmail(), user.getPassword())) {
            return "successPage";
        } else {
            modelMap.addAttribute("msg", "Invalid account information for email "
                    + user.getEmail() + ". Please try again");
            return "login";
        }
    }

}
