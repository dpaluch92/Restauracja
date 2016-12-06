/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.projekt.controller;

import com.mycompany.projekt.db.UserDb;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Dominik
 */
@RequestMapping("/zarejestruj")
@Controller
public class ZarejestrujController {
    

    
    @RequestMapping(method = RequestMethod.GET)
    public String nowyStudent(ModelMap model) {
        //jako parametr funkcji spring wstrzykuje model, do  ktorego dodajesz jako parametr usera
        UserDb user = new UserDb();
        model.addAttribute("user", user);
        //zwracasz nazwe jsp bez rozszerzenia
        return "zarejestruj";
    }
}
