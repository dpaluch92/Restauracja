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
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView saveAdmUser(@Valid @ModelAttribute("UserDb") UserDb user, BindingResult result,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
 
            ModelMap map = new ModelMap();
            UserDAO.insertUser(user);
            users = UserDAO.getAllUsers();
            map.put("user1", users);
            return new ModelAndView("redirect:/admin", map);
    }
    
     @RequestMapping(value="/dodaj")
     public ModelAndView dodaj(ModelMap map){
         UserDb user = new UserDb();
         map.put("userz", user);
         return new ModelAndView("userrej", map);
     }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView admin(HttpSession session ,HttpServletRequest request,ModelMap model) throws Exception {
        
        ModelMap map = new ModelMap();
        
        request.setAttribute("users", users);
        model.addAttribute("user", adminUser());
        return new ModelAndView("admin", map);
    }

    @RequestMapping(value = "/edytuj/{id}")
    public ModelAndView edytuj(@PathVariable String id) throws Exception {
        ModelMap map = new ModelMap();
        UserDb temp = null;

        for (UserDb u : users) {
            if (u.getUserId() == Integer.parseInt(id)) {
                temp = u;
            }
        }

        map.put("userz", temp);
        map.addAttribute("user", adminUser());
        return new ModelAndView("zarejestruj", map);
    }

    @RequestMapping(value = "/usun/{id}")
    public String usun(@PathVariable String id, HttpServletRequest request, ModelMap model) throws Exception {
        usunZBazy(id);
        users = UserDAO.getAllUsers();
        request.setAttribute("users", users);
        model.addAttribute("user", adminUser());
        return "admin";
    }

    public void usunZBazy(String id) {
        UserDAO.deleteUser(id);
    }
    
    private UserDb adminUser() throws Exception{
        users = UserDAO.getAllUsers();
        UserDb temp = null;
        for (UserDb u : users) {
            if (u.getUserRole()==0) {
                temp = u;
            }
        }
        return temp;
    }
    
}
