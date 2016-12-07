package com.mycompany.projekt.controller;

import com.mycompany.projekt.dao.menu.MenuDAO;
import com.mycompany.projekt.db.Menu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class WelcomeController {

    Map<Integer, Menu> promo = new HashMap<Integer, Menu>();

    @RequestMapping(method = RequestMethod.GET)
    public String sayHello(HttpServletRequest request) {
        String widok = "";

        List<Menu> newMap = new ArrayList<Menu>();

        for (int i = 1; i < 5; i++) {
            newMap.add(MenuDAO.getMenuById(i));
        }
        
        request.setAttribute("promo", newMap);
        widok = "welcome";
        return widok;
    }
}
