/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.dao.user;

import com.mycompany.projekt.db.HibernateUtil;
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
public class UserDAO {

    public static Session session;

    public static ArrayList<UserDb> getAllUsers() throws Exception {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            org.hibernate.Transaction tx = session.beginTransaction();
        } catch (HibernateException e) {
            throw e;
        }
        Query q = session.createQuery("from UserDb");
        List reviews = q.list();
        session.close();
        return (ArrayList<UserDb>) reviews;
    }

    public static void insertUser(UserDb user) {
        session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(user);
        tx.commit();
        session.close();
    }

    public static void deleteUser(String id) {
        session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        Object persistentInstance = session.load(UserDb.class, Integer.parseInt(id));
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }

        tx.commit();
        session.close();
    }
}
