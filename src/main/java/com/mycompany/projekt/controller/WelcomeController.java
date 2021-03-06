package com.mycompany.projekt.controller;

import com.mycompany.projekt.dao.menu.MenuDAO;
import com.mycompany.projekt.dao.user.UserDAO;
import com.mycompany.projekt.db.Menu;
import com.mycompany.projekt.db.UserDb;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class WelcomeController {

    List<Menu> menus;
    List<UserDb> users;

    @RequestMapping(method = RequestMethod.GET)
    public String welcome(HttpServletRequest request) throws Exception {
        menus = MenuDAO.getAllMenu();
        List<Menu> promo = menus.subList(0, 4);
        request.setAttribute("promo", promo);
        return "welcome";
    }

    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "accessDenied";
    }
    
    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String infoPage(ModelMap model) {
        
        return "info";
    }

    @RequestMapping(value = "/kontakt", method = RequestMethod.GET)
    public String kontaktPage(ModelMap model) {
        
        return "kontakt";
    }
    
    @RequestMapping(value = "/restauracje", method = RequestMethod.GET)
    public String restauracjePage(ModelMap model) {
        
        return "restauracje";
    }
    
    @RequestMapping(value = "/zaloguj", method = RequestMethod.GET)
    public String loginPage(ModelMap model) throws Exception {
        users = UserDAO.getAllUsers();
        model.addAttribute("users", users);
        return "zaloguj";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/zaloguj";
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
