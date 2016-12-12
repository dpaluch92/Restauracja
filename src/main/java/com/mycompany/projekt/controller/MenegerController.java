/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.controller;

import com.mycompany.projekt.dao.menu.MenuDAO;
import com.mycompany.projekt.dao.user.UserDAO;
import com.mycompany.projekt.db.Menu;
import com.mycompany.projekt.db.UserDb;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
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
@RequestMapping("/dba")
public class MenegerController {

    List<Menu> menus;
    List<UserDb> users;

    @RequestMapping(method = RequestMethod.GET)
    public String meneger(HttpServletRequest request, ModelMap model) throws Exception {
        menus = MenuDAO.getAllMenu();

        request.setAttribute("menus", menus);
        model.addAttribute("user", menagerUser());
        return "dba";
    }

    @RequestMapping(value = "/edytuj/{id}")
    public ModelAndView edytuj(@PathVariable String id) {
        ModelMap map = new ModelMap();
        Menu temp = null;

        for (Menu u : menus) {
            if (u.getMenuId() == Integer.parseInt(id)) {
                temp = u;
            }
        }

        map.put("menuz", temp);
        return new ModelAndView("nowyProdukt", map);
    }

    @RequestMapping(value = "/usun/{id}")
    public String usun(@PathVariable String id, HttpServletRequest request, ModelMap model) throws Exception {
        usunZBazy(id);
        menus = MenuDAO.getAllMenu();
        request.setAttribute("menus", menus);
        model.addAttribute("user", menagerUser());
        return "dba";
    }

    public void usunZBazy(String id) {
        MenuDAO.deleteMenu(id);
    }


    private UserDb menagerUser() throws Exception {
        users = UserDAO.getAllUsers();
        UserDb temp = null;
        for (UserDb u : users) {
            if (u.getUserRole() == 1) {
                temp = u;
            }
        }
        return temp;
    }
}