/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.controller;

import com.mycompany.projekt.dao.user.UserDAO;
import com.mycompany.projekt.db.UserDb;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dominik
 */
@RequestMapping("/zarejestruj")
@Controller
public class ZarejestrujController {

    List<UserDb> users;

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView saveUser(@Valid @ModelAttribute("UserDb") UserDb user, BindingResult result,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        if (result.hasErrors()) {
            return createUser();
        } else {
            ModelMap map = new ModelMap();
            List<UserDb> newMap = new ArrayList<UserDb>();
            users = UserDAO.getAllUsers();

            for (int i = 1; i < users.size() + 1; i++) {
                newMap.add(UserDAO.getUserById(i));
            }

            newMap.add(UserDAO.insertUser(user));
            map.put("users", newMap);
            return new ModelAndView("welcome", map);
        }
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView createUser() {
        UserDb user = new UserDb();
        ModelMap map = new ModelMap();
        map.put("userz", user);

        return new ModelAndView("zarejestruj", map);
    }
}
