/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.dao.menu;

import com.mycompany.projekt.db.HibernateUtil;
import com.mycompany.projekt.db.Menu;
import java.util.ArrayList;
import org.hibernate.HibernateException;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;

/**
 *
 * @author Dominik
 */
public class MenuDAO {

    public static Session session;

    public static Menu getMenuById(int user_id) {
        Menu menu = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            menu = (Menu) session.get(Menu.class, user_id);
        } catch (HibernateException e) {
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return menu;
    }

    public static ArrayList<Menu> getAllMenu() throws Exception {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            org.hibernate.Transaction tx = session.beginTransaction();
        } catch (HibernateException e) {
            throw e;
        }
        ArrayList data = (ArrayList) session.createSQLQuery("select * from Menu").list();
        session.close();
        return data;
    }

    public static void insertMenu(Menu menu) {
        session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(menu);
        tx.commit();
        session.close();
    }
}
