/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.controller;

import com.mycompany.projekt.dao.user.UserDAO;
import com.mycompany.projekt.db.UserDb;
import java.util.ArrayList;
import java.util.Iterator;
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
        users = UserDAO.getAllUsers();
        request.setAttribute("users", users);
        return "admin";
    }

    @RequestMapping(value = "/edytuj/{id}")
    public ModelAndView edytuj(@PathVariable String id) {
        ModelMap map = new ModelMap();
        UserDb temp = null;
        
        for(UserDb u : users){
            if(u.getUserId()==Integer.parseInt(id)){
                temp = u;
            }
        }
        
        map.put("userz", temp);
        return new ModelAndView("zarejestruj", map);
    }

    @RequestMapping(value = "/usun/{id}")
    public String usun(@PathVariable String id, HttpServletRequest request) throws Exception {
        usunZBazy(id);
        users = UserDAO.getAllUsers();
        request.setAttribute("users", users);
        return "admin";
    }

    public void usunZBazy(String id) {
        UserDAO.deleteUser(id);
    }
}
