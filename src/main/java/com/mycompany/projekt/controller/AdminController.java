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
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dominik
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    List<UserDb> users;
    
    @RequestMapping(method = RequestMethod.GET)
    public String admin(HttpServletRequest request) throws Exception {
        String widok = "";

        List<UserDb> newMap = new ArrayList<UserDb>();
        users = UserDAO.getAllUsers();

        for (int i = 1; i < users.size() + 1; i++) {
            newMap.add(UserDAO.getUserById(i));
        }

        request.setAttribute("users", newMap);
        widok = "admin";
        return widok;
    }
    
    @RequestMapping(value = "/edytuj/{id}")
    public ModelAndView edytuj(@PathVariable String id) {
        ModelMap map = new ModelMap();
        map.put("userz", users.get(Integer.parseInt(id)));
        return new ModelAndView("zarejestruj", map);
    }
}
