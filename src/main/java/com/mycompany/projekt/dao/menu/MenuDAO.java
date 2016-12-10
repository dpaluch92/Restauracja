/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.dao.menu;

import static com.mycompany.projekt.dao.user.UserDAO.session;
import com.mycompany.projekt.db.HibernateUtil;
import com.mycompany.projekt.db.Menu;
import com.mycompany.projekt.db.UserDb;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
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
        Query q = session.createQuery("from Menu");
        List reviews = q.list();
        session.close();
        return (ArrayList<Menu>) reviews;
    }

    public static void insertMenu(Menu menu) {
        session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.saveOrUpdate(menu);
        tx.commit();
        session.close();
    }
    
    public static void deleteMenu(String id) {
        session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        Object persistentInstance = session.load(Menu.class, Integer.parseInt(id));
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }

        tx.commit();
        session.close();
    }
}
