/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.controller;

import com.mycompany.projekt.dao.user.UserDAO;
import com.mycompany.projekt.db.UserDb;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Dominik
 */
@Controller
@RequestMapping("/user")
public class UserController {

    List<UserDb> users;

    @RequestMapping(method = RequestMethod.GET)
    public String user(HttpSession session, HttpServletRequest request, ModelMap model) throws Exception {

        model.addAttribute("user", normalUser());
        return "user";
    }

    private UserDb normalUser() throws Exception {
        users = UserDAO.getAllUsers();
        UserDb temp = null;
        for (UserDb u : users) {
            if (u.getUserRole() == 3 && u.getUserLogin().equals(getPrincipal())) {
                temp = u;
            }
        }
        return temp;
    }
    
    private String getPrincipal() {
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }
}
