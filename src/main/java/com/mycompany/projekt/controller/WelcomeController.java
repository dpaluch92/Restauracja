package com.mycompany.projekt.controller;

import com.mycompany.projekt.dao.menu.MenuDAO;
import com.mycompany.projekt.dao.user.UserDAO;
import com.mycompany.projekt.db.Menu;
import com.mycompany.projekt.db.UserDb;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class WelcomeController {

    List<UserDb> users;

    @RequestMapping(method = RequestMethod.GET)
    public String welcome(HttpServletRequest request) {
        String widok = "";

        List<Menu> newMap = new ArrayList<Menu>();

        for (int i = 1; i < 5; i++) {
            newMap.add(MenuDAO.getMenuById(i));
        }

        request.setAttribute("promo", newMap);
        widok = "welcome";
        return widok;
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
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
}
