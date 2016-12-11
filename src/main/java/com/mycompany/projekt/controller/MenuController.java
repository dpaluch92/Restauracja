/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.controller;

import com.mycompany.projekt.dao.menu.MenuDAO;
import com.mycompany.projekt.db.Menu;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Dominik
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    List<Menu> menus;

    @RequestMapping(method = RequestMethod.GET)
    public String menu(HttpServletRequest request) throws Exception {
        menus = MenuDAO.getAllMenu();
        request.setAttribute("menus", menus);
        return "menu";
    }

}
